import 'dart:convert';
import 'package:bot_toast/bot_toast.dart';
import 'package:edu_connect/core/router/app_router.dart';
import 'package:edu_connect/core/shared/helpers/local_storage.dart';
import 'package:edu_connect/core/shared/models/api_response_model.dart';
import 'package:edu_connect/features/profile/data/datasources/profile_api_service.dart';
import 'package:edu_connect/features/profile/domain/models/profile_model.dart';
import 'package:edu_connect/features/profile/presentation/providers/biometric_provider.dart';
import 'package:edu_connect/features/profile/presentation/screens/biometric_setup_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mocktail/mocktail.dart';

class _Storage extends Mock implements LocalDB {}

class _Api extends Mock implements ProfileApiService {}

class _Biometrics extends BiometricService {
  @override
  Future<String?> availabilityError() async => null;
  @override
  Future<bool> verify() async => true;
}

void main() {
  setUpAll(() => registerFallbackValue(const BiometricRequest()));

  for (final scenario in [
    'success',
    'api failure',
    'null result',
    'storage failure'
  ]) {
    testWidgets('Fingerprint setup: $scenario', (tester) async {
      tester.view.physicalSize = const Size(430, 932);
      tester.view.devicePixelRatio = 1;
      addTearDown(tester.view.resetPhysicalSize);
      addTearDown(tester.view.resetDevicePixelRatio);
      debugDefaultTargetPlatformOverride = TargetPlatform.android;
      addTearDown(() => debugDefaultTargetPlatformOverride = null);
      const channel = MethodChannel('edu_connect/biometrics');
      tester.binding.defaultBinaryMessenger
          .setMockMethodCallHandler(channel, (call) async => 'Test device');
      addTearDown(() => tester.binding.defaultBinaryMessenger
          .setMockMethodCallHandler(channel, null));
      final storage = _Storage();
      final api = _Api();
      when(() => storage.readData('authToken'))
          .thenAnswer((_) async => 'access-token');
      when(() => storage.readData('user'))
          .thenAnswer((_) async => '{"id":"42"}');
      when(() => storage.readData(LocalStorageKeys.biometricDeviceId))
          .thenAnswer((_) async => 'device-123');
      when(() => storage.writeData(any(), any())).thenAnswer((_) async => true);
      when(() => storage.writeBool(any(), any())).thenAnswer((_) async => true);
      when(() =>
              storage.writeData(LocalStorageKeys.biometricDeviceToken, any()))
          .thenAnswer((_) async => scenario != 'storage failure');
      when(() => api.setupBiometric(any())).thenAnswer((_) async => ApiResponse(
            success:
                scenario == 'null result' ? null : scenario != 'api failure',
            message: 'Setup failed',
          ));
      bool? poppedResult;
      await tester.pumpWidget(ProviderScope(
        overrides: [
          secureStorageProvider.overrideWithValue(storage),
          profileApiServiceProvider.overrideWithValue(api),
          biometricServiceProvider.overrideWithValue(_Biometrics()),
        ],
        child: MaterialApp(
          builder: BotToastInit(),
          navigatorKey: rootNavigatorKey,
          home: Builder(
              builder: (context) => Scaffold(
                      body: TextButton(
                    onPressed: () async {
                      poppedResult = await Navigator.of(context).push<bool>(
                          MaterialPageRoute(
                              builder: (_) => const BiometricSetupScreen()));
                    },
                    child: const Text('Open setup'),
                  ))),
        ),
      ));
      await tester.tap(find.text('Open setup'));
      await tester.pumpAndSettle();
      await tester.ensureVisible(find.text('Verify fingerprint'));
      await tester.tap(find.text('Verify fingerprint'));
      await tester.pumpAndSettle();
      verifyNever(() => api.setupBiometric(any()));
      await tester.tap(find.text('Next'));
      await tester.pumpAndSettle();
      expect(
          tester
              .widget<FilledButton>(
                  find.widgetWithText(FilledButton, 'Confirm'))
              .onPressed,
          isNull);
      await tester.enterText(find.byType(TextField), ' private-password ');
      await tester.pump();
      await tester.tap(find.text('Confirm'));
      await tester.pumpAndSettle();
      final request = verify(() => api.setupBiometric(captureAny()))
          .captured
          .single as BiometricRequest;
      expect(request.biometricType, 'fingerPrint');
      expect(base64Url.decode(request.deviceToken!), hasLength(32));
      expect(request.deviceId, 'device-123');
      expect(request.deviceName, 'Test device');
      expect(request.platform, 'android');
      expect(request.password, ' private-password ');
      verifyNever(() => storage.writeData('authToken', any()));
      if (scenario == 'success') {
        expect(poppedResult, true);
        expect(find.byType(BiometricSetupScreen), findsNothing);
        verifyInOrder([
          () => storage.writeData(
              LocalStorageKeys.biometricDeviceToken, request.deviceToken),
          () => storage.writeData(LocalStorageKeys.biometricUserId, '42'),
          () => storage.writeBool(biometricEnabledKey, true),
        ]);
      } else {
        expect(poppedResult, isNull);
        expect(find.byType(BiometricSetupScreen), findsOneWidget);
        verifyNever(() => storage.writeBool(biometricEnabledKey, true));
        if (scenario != 'storage failure') {
          verifyNever(() =>
              storage.writeData(LocalStorageKeys.biometricDeviceToken, any()));
        }
      }
      BotToast.cleanAll();
      await tester.pumpAndSettle();
      debugDefaultTargetPlatformOverride = null;
    });
  }
}
