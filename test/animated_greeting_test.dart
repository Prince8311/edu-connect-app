import 'package:edu_connect/core/router/app_router.dart';
import 'package:edu_connect/core/shared/widgets/app_bar.dart';
import 'package:edu_connect/features/auth/domain/models/auth_model.dart';
import 'package:edu_connect/features/auth/presentation/providers/auth_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:edu_connect/core/shared/widgets/animated_greeting.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  for (final width in [320.0, 390.0]) {
    testWidgets('Background greeting keeps notification tappable at $width',
        (tester) async {
      tester.view.physicalSize = Size(width, 844);
      tester.view.devicePixelRatio = 1;
      addTearDown(tester.view.resetPhysicalSize);
      addTearDown(tester.view.resetDevicePixelRatio);
      var tapped = false;
      await tester.pumpWidget(ProviderScope(
        overrides: [
          savedUserInfoProvider.overrideWith((ref) async =>
              const UserInfo(name: 'Reshmi Mondal with a longer name'))
        ],
        child: MaterialApp(
            navigatorKey: rootNavigatorKey,
            home: Scaffold(
                appBar: HomeAppBar(onNotificationTap: () => tapped = true))),
      ));
      await tester.pump();
      await tester.pump(const Duration(seconds: 1));
      expect(
          tester
              .widget<AnimatedGreeting>(find.byType(AnimatedGreeting))
              .background,
          isTrue);
      await tester.tap(find.byIcon(Icons.notifications));
      expect(tapped, isTrue);
      expect(tester.takeException(), isNull);
      await tester.pumpWidget(const SizedBox());
    });
  }

  testWidgets('All time scenes animate and dispose cleanly', (tester) async {
    for (final hour in [6, 13, 18, 23]) {
      await tester.pumpWidget(MaterialApp(
          home: Scaffold(
        body: AnimatedGreeting(hour: hour, background: true),
      )));
      await tester.pump(const Duration(seconds: 2));
      expect(tester.hasRunningAnimations, isTrue);
      expect(tester.takeException(), isNull);
    }
    await tester.pumpWidget(const SizedBox());
    await tester.pump();
    expect(tester.hasRunningAnimations, isFalse);
    expect(tester.takeException(), isNull);
  });

  testWidgets('Reduced motion pauses and resumes animation', (tester) async {
    Future<void> render(bool reduceMotion) => tester.pumpWidget(MaterialApp(
          builder: (context, child) => MediaQuery(
            data: MediaQuery.of(context)
                .copyWith(disableAnimations: reduceMotion),
            child: child!,
          ),
          home: const Scaffold(body: AnimatedGreeting(hour: 23)),
        ));
    await render(true);
    await tester.pump();
    expect(tester.hasRunningAnimations, isFalse);
    await render(false);
    await tester.pump();
    await tester.pump(const Duration(seconds: 1));
    expect(tester.hasRunningAnimations, isTrue);
    await render(true);
    await tester.pump();
    expect(tester.hasRunningAnimations, isFalse);
  });
}
