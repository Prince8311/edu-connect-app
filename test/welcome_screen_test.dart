import 'package:edu_connect/core/router/app_router.dart';
import 'package:edu_connect/core/shared/helpers/local_storage.dart';
import 'package:edu_connect/features/onboarding/welcome_screen.dart';
import 'package:edu_connect/features/onboarding/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mocktail/mocktail.dart';

class _Storage extends Mock implements LocalDB {}

void main() {
  Future<GoRouter> mount(WidgetTester tester, _Storage storage,
      {bool splash = false}) async {
    tester.view.physicalSize = const Size(430, 932);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    final router = GoRouter(navigatorKey: rootNavigatorKey, routes: [
      GoRoute(
          path: '/',
          builder: (_, __) =>
              splash ? const SplashScreen() : const WelcomeScreen()),
      GoRoute(path: '/welcome', builder: (_, __) => const WelcomeScreen()),
      GoRoute(
          path: '/auth',
          builder: (_, __) => const Scaffold(body: Text('Auth destination'))),
      GoRoute(
          path: '/home',
          builder: (_, __) => const Scaffold(body: Text('Home destination'))),
    ]);
    addTearDown(router.dispose);
    await tester.pumpWidget(ProviderScope(overrides: [
      localStorageProvider.overrideWith((ref) async => storage),
      secureStorageProvider.overrideWithValue(storage),
    ], child: MaterialApp.router(routerConfig: router)));
    if (splash) {
      await tester.runAsync(() async {
        await precacheImage(const AssetImage('assets/images/splash-campus.png'),
            rootNavigatorKey.currentContext!);
        await precacheImage(const AssetImage('assets/images/logo-1.png'),
            rootNavigatorKey.currentContext!);
      });
    }
    await tester.pumpAndSettle();
    return router;
  }

  for (final token in [null, 'saved-token']) {
    testWidgets('Skip persists completion and routes with token $token',
        (tester) async {
      final storage = _Storage();
      when(() => storage.readData('authToken')).thenAnswer((_) async => token);
      when(() => storage.writeBool(LocalStorageKeys.welcomeCompleted, true))
          .thenAnswer((_) async => true);
      await mount(tester, storage);
      await tester.tap(find.text('Skip'));
      await tester.pumpAndSettle();
      verify(() => storage.writeBool(LocalStorageKeys.welcomeCompleted, true))
          .called(1);
      expect(find.text(token == null ? 'Auth destination' : 'Home destination'),
          findsOneWidget);
    });
  }

  testWidgets('Next, Previous and Get Started complete the slides',
      (tester) async {
    final storage = _Storage();
    when(() => storage.readData('authToken')).thenAnswer((_) async => null);
    when(() => storage.writeBool(LocalStorageKeys.welcomeCompleted, true))
        .thenAnswer((_) async => true);
    await mount(tester, storage);
    await tester.tap(find.text('Next'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Previous'));
    await tester.pumpAndSettle();
    expect(find.text('Together for\na brighter future.'), findsOneWidget);
    for (var i = 0; i < 2; i++) {
      await tester.tap(find.text('Next'));
      await tester.pumpAndSettle();
    }
    await tester.tap(find.text('Get Started'));
    await tester.pumpAndSettle();
    expect(find.text('Auth destination'), findsOneWidget);
  });

  for (final completed in [false, true]) {
    for (final token in [null, 'saved-token']) {
      testWidgets('Splash completion=$completed token=$token', (tester) async {
        final storage = _Storage();
        when(() => storage.readData('authToken'))
            .thenAnswer((_) async => token);
        when(() => storage.readBool(LocalStorageKeys.welcomeCompleted))
            .thenAnswer((_) async => completed);
        await mount(tester, storage, splash: true);
        for (var frame = 0; frame < 40; frame++) {
          await tester.pump(const Duration(milliseconds: 100));
        }
        await tester.pumpAndSettle();
        expect(
            find.text(token == null ? 'Auth destination' : 'Home destination'),
            findsOneWidget);
        verifyNever(
            () => storage.writeBool(LocalStorageKeys.welcomeCompleted, true));
      });
    }
  }
}
