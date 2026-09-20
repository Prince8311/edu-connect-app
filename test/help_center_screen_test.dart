import 'package:edu_connect/core/router/app_router.dart';
import 'package:edu_connect/features/profile/presentation/screens/help_center_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Help answers expand, collapse, filter and reset',
      (tester) async {
    tester.view.physicalSize = const Size(430, 932);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    await tester.pumpWidget(MaterialApp(
        navigatorKey: rootNavigatorKey, home: const HelpCenterScreen()));
    await tester.pumpAndSettle();
    final question = find.text("Why can't I sign in?");
    await tester.ensureVisible(question);
    await tester.tap(question);
    await tester.pumpAndSettle();
    expect(find.textContaining('Use the account details registered'),
        findsOneWidget);
    await tester.tap(question);
    await tester.pumpAndSettle();
    expect(find.textContaining('Use the account details registered'),
        findsNothing);
    expect(find.byType(TextField), findsNothing);
    final library = find.widgetWithText(ChoiceChip, 'Library');
    await tester.ensureVisible(library);
    await tester.pumpAndSettle();
    await tester.tap(library);
    await tester.pumpAndSettle();
    expect(find.text('2 topics'), findsOneWidget);
    await tester.tap(find.widgetWithText(ChoiceChip, 'All'));
    await tester.pumpAndSettle();
    expect(find.text('16 topics'), findsOneWidget);
  });
}
