import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:edu_connect/core/router/app_router.dart';
import 'package:edu_connect/core/shared/helpers/local_storage.dart';
import 'package:edu_connect/features/profile/presentation/providers/biometric_provider.dart';
import 'package:edu_connect/features/profile/presentation/screens/biometric_setup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mocktail/mocktail.dart';

class _Storage extends Mock implements LocalDB {}

class _Biometrics extends BiometricService {
  @override
  Future<String?> availabilityError() async => null;
  @override
  Future<bool> verify() async => true;
}

void main() {
  testWidgets(
      'Confirm requires password and prints metadata without credentials',
      (tester) async {
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
    final messages = <String>[];
    final originalDebugPrint = debugPrint;
    debugPrint = (String? message, {int? wrapWidth}) {
      if (message != null) messages.add(message);
    };
    addTearDown(() => debugPrint = originalDebugPrint);
    final storage = _Storage();
    when(() => storage.readData('authToken'))
        .thenAnswer((_) async => 'secret-token');
    when(() => storage.readData('user')).thenAnswer((_) async => '{"id":"42"}');
    when(() => storage.readData(LocalStorageKeys.biometricDeviceId))
        .thenAnswer((_) async => 'device-123');
    when(() => storage.writeData('authToken', 'secret-token'))
        .thenAnswer((_) async => true);
    when(() => storage.writeData(LocalStorageKeys.biometricUserId, '42'))
        .thenAnswer((_) async => true);
    when(() => storage.writeBool(biometricEnabledKey, true))
        .thenAnswer((_) async => true);
    await tester.pumpWidget(ProviderScope(
        overrides: [
          secureStorageProvider.overrideWithValue(storage),
          biometricServiceProvider.overrideWithValue(_Biometrics()),
        ],
        child: MaterialApp(
            navigatorKey: rootNavigatorKey,
            home: const BiometricSetupScreen())));
    await tester.pumpAndSettle();
    expect(find.text('Next'), findsNothing);
    verifyNever(() => storage.writeBool(biometricEnabledKey, true));
    await tester.ensureVisible(find.text('Verify fingerprint'));
    await tester.tap(find.text('Verify fingerprint'));
    await tester.pumpAndSettle();
    expect(find.textContaining('Verification successful'), findsOneWidget);
    expect(find.text('Next'), findsOneWidget);
    verifyNever(() => storage.writeBool(biometricEnabledKey, true));
    await tester.tap(find.text('Next'));
    await tester.pumpAndSettle();
    verifyNever(() => storage.writeBool(biometricEnabledKey, true));
    expect(find.text('Current password'), findsOneWidget);
    await tester.tap(find.text('Confirm'));
    await tester.pumpAndSettle();
    expect(find.text('Enter your current password.'), findsOneWidget);
    verifyNever(() => storage.writeBool(biometricEnabledKey, true));
    await tester.enterText(find.byType(TextFormField), 'private-password');
    await tester.tap(find.text('Confirm'));
    await tester.pumpAndSettle();
    verify(() => storage.writeBool(biometricEnabledKey, true)).called(1);
    final payload =
        jsonDecode(messages.singleWhere((message) => message.startsWith('{')));
    expect(payload, {
      'device_id': 'device-123',
      'device_name': 'Test device',
      'user_id': '42',
      'platform': 'android'
    });
    expect(messages.join(), isNot(contains('private-password')));
    expect(messages.join(), isNot(contains('secret-token')));
    debugPrint = originalDebugPrint;
    debugDefaultTargetPlatformOverride = null;
  });
}
