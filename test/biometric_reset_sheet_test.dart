import 'package:bot_toast/bot_toast.dart';
import 'package:edu_connect/core/router/app_router.dart';
import 'package:edu_connect/core/shared/helpers/local_storage.dart';
import 'package:edu_connect/core/shared/models/api_response_model.dart';
import 'package:edu_connect/features/profile/data/datasources/profile_api_service.dart';
import 'package:edu_connect/features/profile/domain/models/profile_model.dart';
import 'package:edu_connect/features/profile/presentation/providers/biometric_provider.dart';
import 'package:edu_connect/features/profile/presentation/widgets/biometric_reset_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mocktail/mocktail.dart';

class _Storage extends Mock implements LocalDB {}

class _Api extends Mock implements ProfileApiService {}

void main() {
  setUpAll(() => registerFallbackValue(const BiometricRequest()));
  for (final success in [true, false, null]) {
    testWidgets('Reset result $success only clears storage on success',
        (tester) async {
      final storage = _Storage();
      final api = _Api();
      when(() => storage.readData(LocalStorageKeys.biometricDeviceId))
          .thenAnswer((_) async => 'device');
      when(() => storage.readData(LocalStorageKeys.biometricDeviceToken))
          .thenAnswer((_) async => 'secret');
      when(() => storage.deleteData(any())).thenAnswer((_) async {});
      when(() => storage.writeBool(any(), any())).thenAnswer((_) async => true);
      when(() => api.resetBiometric(any())).thenAnswer(
          (_) async => ApiResponse(success: success, message: 'Reset result'));
      await tester.pumpWidget(ProviderScope(
          overrides: [
            secureStorageProvider.overrideWithValue(storage),
            profileApiServiceProvider.overrideWithValue(api),
          ],
          child: MaterialApp(
              navigatorKey: rootNavigatorKey,
              builder: BotToastInit(),
              home: Builder(
                  builder: (context) => Scaffold(
                          body: TextButton(
                        child: const Text('Open'),
                        onPressed: () => showModalBottomSheet<void>(
                            context: context,
                            builder: (_) => const BiometricResetSheet()),
                      ))))));
      await tester.tap(find.text('Open'));
      await tester.pumpAndSettle();
      verifyNever(() => api.resetBiometric(any()));
      await tester.tap(find.text('Cancel'));
      await tester.pumpAndSettle();
      verifyNever(() => api.resetBiometric(any()));
      await tester.tap(find.text('Open'));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Confirm'));
      await tester.pumpAndSettle();
      final request = verify(() => api.resetBiometric(captureAny()))
          .captured
          .single as BiometricRequest;
      expect(request.toJson(), {
        'device_id': 'device',
        'device_token': 'secret',
        'biometric_type': 'fingerPrint'
      });
      if (success == true) {
        verify(() => storage.deleteData(LocalStorageKeys.biometricDeviceToken))
            .called(1);
        verify(() => storage.writeBool(biometricEnabledKey, false)).called(1);
        expect(find.byType(BiometricResetSheet), findsNothing);
      } else {
        verifyNever(() => storage.deleteData(any()));
        verifyNever(() => storage.writeBool(any(), any()));
        expect(find.byType(BiometricResetSheet), findsOneWidget);
      }
      verifyNever(() => storage.deleteData('authToken'));
      BotToast.cleanAll();
      await tester.pumpAndSettle();
    });
  }
}
