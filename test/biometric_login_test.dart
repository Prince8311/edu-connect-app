import 'package:edu_connect/core/router/app_router.dart';
import 'package:edu_connect/core/shared/helpers/local_storage.dart';
import 'package:edu_connect/features/auth/domain/models/auth_model.dart';
import 'package:edu_connect/features/auth/presentation/providers/auth_provider.dart';
import 'package:edu_connect/features/auth/presentation/screens/auth_screen.dart';
import 'package:edu_connect/features/profile/presentation/providers/biometric_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mocktail/mocktail.dart';

class _Storage extends Mock implements LocalDB {}

class _Biometrics extends BiometricService {
  _Biometrics(this.accept);
  final bool accept;
  bool verified = false;
  @override
  Future<String?> availabilityError() async => null;
  @override
  Future<bool> verify() async {
    verified = accept;
    return accept;
  }
}

void main() {
  test('another account does not clear registered fingerprint users', () async {
    final storage = _Storage();
    when(() => storage.readData('user')).thenAnswer((_) async => '{"id":99}');
    when(() => storage.readBool(biometricEnabledKey))
        .thenAnswer((_) async => true);
    when(() =>
        storage.readData(
            LocalStorageKeys.biometricDeviceToken)).thenAnswer((_) async =>
        '{"deviceToken":"secret","type":"fingerPrint","users":["42","43"]}');
    when(() => storage.readData(LocalStorageKeys.biometricDeviceId))
        .thenAnswer((_) async => 'device');
    final container = ProviderContainer(overrides: [
      secureStorageProvider.overrideWithValue(storage),
    ]);
    addTearDown(container.dispose);
    expect(await container.read(biometricEnabledProvider.future), false);
    expect(await container.read(biometricLoginAvailableProvider.future), true);
    verifyNever(() => storage.deleteData(any()));
    verifyNever(() => storage.writeBool(any(), any()));
  });

  test('fingerprint setting follows account changes in the same container',
      () async {
    final storage = _Storage();
    String? user = '{"id":42}';
    when(() => storage.readData('user')).thenAnswer((_) async => user);
    when(() => storage.readBool(biometricEnabledKey))
        .thenAnswer((_) async => true);
    when(() => storage.readData(LocalStorageKeys.biometricDeviceToken))
        .thenAnswer((_) async =>
            '{"deviceToken":"secret","type":"fingerPrint","users":["42"]}');
    final container = ProviderContainer(overrides: [
      secureStorageProvider.overrideWithValue(storage),
    ]);
    addTearDown(container.dispose);
    container.listen(biometricEnabledProvider, (_, __) {});
    expect(await container.read(biometricEnabledProvider.future), true);
    for (final nextUser in [null, '{"id":99}', '{"id":42}']) {
      user = nextUser;
      container.invalidate(savedUserInfoProvider);
      expect(await container.read(biometricEnabledProvider.future),
          nextUser == '{"id":42}');
    }
    verifyNever(() => storage.deleteData(any()));
    verifyNever(() => storage.writeBool(any(), any()));
  });

  for (final target in ['cancel', 'users', 'home', 'role', 'student']) {
    testWidgets('fingerprint login routes to $target', (tester) async {
      await tester.binding.setSurfaceSize(const Size(430, 1000));
      addTearDown(() => tester.binding.setSurfaceSize(null));
      final storage = _Storage();
      final biometrics = _Biometrics(target != 'cancel');
      when(() => storage.readData(LocalStorageKeys.biometricDeviceId))
          .thenAnswer((_) async => 'device');
      when(() =>
          storage.readData(
              LocalStorageKeys.biometricDeviceToken)).thenAnswer((_) async =>
          '{"deviceToken":"secret","type":"fingerPrint","users":["42","43"]}');
      var calls = 0;
      final router = GoRouter(
          navigatorKey: rootNavigatorKey,
          initialLocation: RoutePath.auth,
          routes: [
            GoRoute(
                path: RoutePath.auth, builder: (_, __) => const AuthScreen()),
            for (final entry in {
              RoutePath.userSelect: 'users',
              RoutePath.home: 'home',
              RoutePath.roleSelect: 'role',
              RoutePath.studentSelect: 'student'
            }.entries)
              GoRoute(
                  path: entry.key,
                  builder: (_, __) =>
                      Scaffold(body: Text('Destination ${entry.value}'))),
          ]);
      addTearDown(router.dispose);
      await tester.pumpWidget(ProviderScope(overrides: [
        secureStorageProvider.overrideWithValue(storage),
        biometricLoginAvailableProvider.overrideWith((ref) async => true),
        biometricServiceProvider.overrideWithValue(biometrics),
        biometricLoginProvider(
                requestBody: const BiometricLoginRequest(
                    deviceId: 'device',
                    deviceToken: 'secret',
                    biometricType: 'fingerPrint'))
            .overrideWith((ref) async {
          expect(biometrics.verified, true);
          calls++;
          return AuthResponse(
              userChoose: target == 'users',
              nextScreen: target == 'role'
                  ? 'selectRole'
                  : target == 'student'
                      ? 'selectStudent'
                      : 'home',
              authToken: target == 'home' ? 'access' : null);
        }),
      ], child: MaterialApp.router(routerConfig: router)));
      await tester.pumpAndSettle();
      await tester.ensureVisible(find.byIcon(Icons.fingerprint));
      await tester.tap(find.byIcon(Icons.fingerprint));
      await tester.pumpAndSettle();
      if (target == 'cancel') {
        expect(calls, 0);
        verifyNever(
            () => storage.readData(LocalStorageKeys.biometricDeviceToken));
        expect(find.byType(AuthScreen), findsOneWidget);
      } else {
        expect(calls, 1);
        expect(find.text('Destination $target'), findsOneWidget);
      }
    });
  }
}
