import 'package:edu_connect/core/router/app_router.dart';
import 'package:edu_connect/features/profile/presentation/screens/terms_conditions_screen.dart';
import 'package:edu_connect/features/profile/presentation/widgets/profile_settings_sections.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  testWidgets('Terms row opens the policy and back returns to the profile',
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
            .where((route) => route.path == RoutePath.termsConditions),
      ],
    );
    addTearDown(router.dispose);
    await tester.pumpWidget(
        ProviderScope(child: MaterialApp.router(routerConfig: router)));
    await tester.ensureVisible(find.text('Terms & Conditions'));
    await tester.tap(find.text('Terms & Conditions'));
    await tester.pumpAndSettle();
    expect(find.byType(TermsConditionsScreen), findsOneWidget);
    expect(find.text('21 sections'), findsOneWidget);
    expect(find.text('Refund and Cancellation'), findsOneWidget);
    expect(find.text('Edu Connekt acts as a data processor, not data owner'),
        findsOneWidget);
    await tester.tap(find.byIcon(Icons.arrow_back));
    await tester.pumpAndSettle();
    expect(find.byType(TermsConditionsScreen), findsNothing);
    expect(tester.takeException(), isNull);
  });

  testWidgets('Terms support narrow screens, large text, and section jumps',
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
      home: const TermsConditionsScreen(),
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
