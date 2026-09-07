import 'package:edu_connect/core/router/app_router.dart';
import 'package:edu_connect/features/profile/presentation/screens/privacy_policy_screen.dart';
import 'package:edu_connect/features/profile/presentation/widgets/profile_settings_sections.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  testWidgets('Privacy row opens the policy and back returns to the profile',
      (tester) async {
    final router = GoRouter(
      navigatorKey: rootNavigatorKey,
      routes: [
        GoRoute(
            path: '/',
            builder: (context, state) => const Scaffold(
                  body: SingleChildScrollView(child: ProfileSettingsSections()),
                )),
        ...$appRoutes
            .whereType<GoRoute>()
            .where((route) => route.path == RoutePath.privacyPolicy),
      ],
    );
    addTearDown(router.dispose);
    await tester.pumpWidget(
        ProviderScope(child: MaterialApp.router(routerConfig: router)));
    await tester.ensureVisible(find.text('Privacy Policy'));
    await tester.tap(find.text('Privacy Policy'));
    await tester.pumpAndSettle();
    expect(find.byType(PrivacyPolicyScreen), findsOneWidget);
    expect(find.text('We do NOT sell personal data.'), findsOneWidget);
    await tester.tap(find.byIcon(Icons.arrow_back));
    await tester.pumpAndSettle();
    expect(find.byType(PrivacyPolicyScreen), findsNothing);
    expect(tester.takeException(), isNull);
  });

  testWidgets('Policy supports narrow screens, large text, and section jumps',
      (tester) async {
    tester.view.physicalSize = const Size(320, 740);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    await tester.pumpWidget(ProviderScope(
        child: MaterialApp(
      navigatorKey: rootNavigatorKey,
      builder: (context, child) => MediaQuery(
        data: MediaQuery.of(context)
            .copyWith(textScaler: const TextScaler.linear(1.4)),
        child: child!,
      ),
      home: const PrivacyPolicyScreen(),
    )));
    await tester.pumpAndSettle();
    await tester.tap(find.text('On this page'));
    await tester.pumpAndSettle();
    final section = find.widgetWithText(ListTile, 'Contact Information');
    await tester.scrollUntilVisible(section, 300,
        scrollable: find.descendant(
            of: find.byType(BottomSheet), matching: find.byType(Scrollable)));
    await tester.tap(section);
    await tester.pumpAndSettle();
    expect(find.text('Email: support@educonnekt.in').hitTestable(),
        findsOneWidget);
    expect(
        tester
            .widget<LinearProgressIndicator>(
                find.byType(LinearProgressIndicator))
            .value,
        greaterThan(.9));
    await tester.ensureVisible(find.text('Back to top'));
    await tester.tap(find.text('Back to top'));
    await tester.pumpAndSettle();
    expect(
        tester
            .widget<LinearProgressIndicator>(
                find.byType(LinearProgressIndicator))
            .value,
        0);
    expect(tester.takeException(), isNull);
  });
}
