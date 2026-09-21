import 'package:go_router/go_router.dart';
import 'package:edu_connect/core/router/app_router.dart';
import 'package:edu_connect/core/shared/helpers/local_storage.dart';
import 'package:edu_connect/features/auth/domain/models/auth_model.dart';
import 'package:edu_connect/features/auth/presentation/providers/auth_provider.dart';
import 'package:edu_connect/features/auth/presentation/screens/user_select_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mocktail/mocktail.dart';

class _Storage extends Mock implements LocalDB {}

void main() {
  test('loads biometric users with the saved device credentials', () async {
    final storage = _Storage();
    when(() => storage.readData(LocalStorageKeys.biometricDeviceId))
        .thenAnswer((_) async => 'device');
    when(() => storage.readData(LocalStorageKeys.biometricDeviceToken))
        .thenAnswer((_) async =>
            '{"deviceToken":"token","type":"fingerPrint","users":["1"]}');
    var calls = 0;
    final container = ProviderContainer(overrides: [
      secureStorageProvider.overrideWithValue(storage),
      getBiometricUsersProvider(
              deviceId: 'device',
              deviceToken: 'token',
              biometricType: 'fingerPrint')
          .overrideWith((ref) async {
        calls++;
        return [const BiometricUserInfo(id: 1, name: 'Alex')];
      }),
    ]);
    addTearDown(container.dispose);
    final users = await container.read(biometricSelectionUsersProvider.future);
    expect(users?.single.name, 'Alex');
    expect(calls, 1);
  });

  test('user_id is an integer and omitted before account selection', () {
    expect(const BiometricLoginRequest(userId: 2).toJson()['user_id'], 2);
    expect(
        const BiometricLoginRequest().toJson().containsKey('user_id'), false);
  });

  for (final next in ['home', 'selectRole', 'selectStudent', 'tokenOnly']) {
    testWidgets('selected user logs in and routes to $next', (tester) async {
      await tester.binding.setSurfaceSize(const Size(430, 1000));
      addTearDown(() => tester.binding.setSurfaceSize(null));
      final storage = _Storage();
      when(() => storage.readData(LocalStorageKeys.biometricDeviceId))
          .thenAnswer((_) async => 'device');
      when(() => storage.readData(LocalStorageKeys.biometricDeviceToken))
          .thenAnswer((_) async =>
              '{"deviceToken":"token","type":"fingerPrint","users":["2"]}');
      var calls = 0;
      final router = GoRouter(
          navigatorKey: rootNavigatorKey,
          initialLocation: RoutePath.userSelect,
          routes: [
            GoRoute(
                path: RoutePath.userSelect,
                builder: (_, __) => const UserSelectScreen()),
            for (final path in [
              RoutePath.home,
              RoutePath.roleSelect,
              RoutePath.studentSelect
            ])
              GoRoute(
                  path: path, builder: (_, __) => Scaffold(body: Text(path))),
          ]);
      addTearDown(router.dispose);
      await tester.pumpWidget(ProviderScope(overrides: [
        secureStorageProvider.overrideWithValue(storage),
        biometricSelectionUsersProvider.overrideWith((ref) async => [
              const BiometricUserInfo(
                  id: 2,
                  name: 'Sam',
                  userType: ['guardian', 'teacher', 'student']),
            ]),
        biometricLoginProvider(
                requestBody: const BiometricLoginRequest(
                    userId: 2,
                    deviceId: 'device',
                    deviceToken: 'token',
                    biometricType: 'fingerPrint'))
            .overrideWith((ref) async {
          calls++;
          return AuthResponse(
              nextScreen: next == 'tokenOnly' ? null : next,
              authToken:
                  (next == 'home' || next == 'tokenOnly') ? 'session' : null);
        }),
      ], child: MaterialApp.router(routerConfig: router)));
      await tester.pumpAndSettle();
      expect(find.text('Guardian'), findsOneWidget);
      expect(find.text('Teacher'), findsOneWidget);
      expect(find.text('Student'), findsOneWidget);
      await tester.tap(find.text('Sam'));
      await tester.pumpAndSettle();
      expect(calls, 1);
      expect(
          find.text((next == 'home' || next == 'tokenOnly')
              ? RoutePath.home
              : next == 'selectRole'
                  ? RoutePath.roleSelect
                  : RoutePath.studentSelect),
          findsOneWidget);
    });
  }
}
