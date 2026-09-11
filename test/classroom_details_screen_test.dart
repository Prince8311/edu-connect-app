import 'package:edu_connect/core/router/app_router.dart';
import 'package:edu_connect/features/classroom/presentation/screens/classroom_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  Future<void> openScreen(WidgetTester tester, Size size,
      {double textScale = 1}) async {
    tester.view.physicalSize = size;
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    await tester.pumpWidget(ProviderScope(
      child: MaterialApp(
        navigatorKey: rootNavigatorKey,
        builder: (context, child) => MediaQuery(
          data: MediaQuery.of(context)
              .copyWith(textScaler: TextScaler.linear(textScale)),
          child: child!,
        ),
        home: const ClassroomDetailsScreen(),
      ),
    ));
    await tester.pumpAndSettle();
  }

  for (final size in [
    const Size(320, 740),
    const Size(390, 844),
    const Size(1000, 900)
  ]) {
    testWidgets('Classroom scrolls without overflow at $size', (tester) async {
      await openScreen(tester, size, textScale: size.width == 320 ? 1.6 : 1);
      expect(tester.takeException(), isNull);
      await tester.scrollUntilVisible(find.text('Vivaan Joshi'), 240,
          scrollable: find.byType(Scrollable).first);
      expect(find.text('Vivaan Joshi'), findsOneWidget);
      expect(tester.takeException(), isNull);
    });
  }

  testWidgets('Search filters by name and roll and recovers from no results',
      (tester) async {
    await openScreen(tester, const Size(390, 844));
    await tester.ensureVisible(find.byType(TextField));
    await tester.enterText(find.byType(TextField), 'meera');
    await tester.pumpAndSettle();
    await tester.ensureVisible(find.text('Meera Nair'));
    expect(find.text('1 of 8 students'), findsOneWidget);
    await tester.enterText(find.byType(TextField), '03');
    await tester.pumpAndSettle();
    expect(find.text('Diya Patel'), findsOneWidget);
    await tester.enterText(find.byType(TextField), 'missing');
    await tester.pumpAndSettle();
    expect(find.text('No students found'), findsOneWidget);
    await tester.tap(find.byTooltip('Clear search'));
    await tester.pumpAndSettle();
    expect(find.text('8 of 8 students'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('Classroom shortcuts open and dismiss their availability panel',
      (tester) async {
    await openScreen(tester, const Size(390, 844));
    for (final label in [
      'Attendance',
      'Material',
      'Homework',
      'Tests',
      'Notice'
    ]) {
      await tester.ensureVisible(find.text(label));
      await tester.tap(find.text(label));
      await tester.pumpAndSettle();
      expect(find.text('Coming soon'), findsOneWidget);
      await tester.tap(find.text('Close'));
      await tester.pumpAndSettle();
      expect(find.byType(BottomSheet), findsNothing);
    }
    expect(tester.takeException(), isNull);
  });
}
