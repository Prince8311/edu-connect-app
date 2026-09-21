import 'package:edu_connect/features/classroom/domain/models/classroom_model.dart';
import 'package:edu_connect/features/classroom/presentation/widgets/attendance_student_deck.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const classroom =
      ClassroomModel(id: 42, className: '1', section: 'A', subject: 'English');
  const students = [
    ClassroomStudentModel(
        studentId: 1, name: 'Aarav Sharma', enrollmentId: 'EN01'),
    ClassroomStudentModel(
        studentId: 2, name: 'Ananya Rao', enrollmentId: 'EN02'),
    ClassroomStudentModel(
        studentId: 3, name: 'Meera Nair', enrollmentId: 'EN03'),
  ];

  Future<void> open(WidgetTester tester, Map<String, bool> draft,
      {Size size = const Size(390, 844), double textScale = 1}) async {
    tester.view.physicalSize = size;
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    await tester.pumpWidget(MaterialApp(
      builder: (context, child) => MediaQuery(
          data: MediaQuery.of(context)
              .copyWith(textScaler: TextScaler.linear(textScale)),
          child: child!),
      home: Builder(
          builder: (context) => Scaffold(
              body: TextButton(
                  onPressed: () => showAttendanceStudentDeck(context, classroom,
                      students: students, draft: draft),
                  child: const Text('Open deck')))),
    ));
    await tester.tap(find.text('Open deck'));
    await tester.pumpAndSettle();
  }

  final active = find.byKey(const ValueKey('attendance-active-card'));

  testWidgets('Directional swipes mark once, animate and undo', (tester) async {
    final draft = <String, bool>{};
    await open(tester, draft);
    await tester.drag(active, const Offset(-120, 0));
    await tester.pump(const Duration(milliseconds: 200));
    expect(draft, {'id:1': false});
    expect(find.text('Absent (1)'), findsOneWidget);
    await tester.pumpAndSettle();
    await tester.drag(active, const Offset(120, 0));
    await tester.pumpAndSettle();
    expect(draft, {'id:1': false, 'id:2': true});
    expect(find.text('Not marked (1)'), findsOneWidget);
    await tester.tap(find.byTooltip('Undo last mark'));
    await tester.pumpAndSettle();
    expect(draft, {'id:1': false});
    expect(find.descendant(of: active, matching: find.text('Ananya Rao')),
        findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('Short drag and skip leave students unmarked', (tester) async {
    final draft = <String, bool>{};
    await open(tester, draft);
    await tester.timedDrag(
        active, const Offset(25, 0), const Duration(seconds: 1));
    await tester.pumpAndSettle();
    expect(draft, isEmpty);
    await tester.tap(find.text('Skip'));
    await tester.pumpAndSettle();
    expect(draft, isEmpty);
    expect(find.descendant(of: active, matching: find.text('Ananya Rao')),
        findsOneWidget);
    await tester.tap(find.text('Not marked (3)'));
    await tester.pumpAndSettle();
    await tester.tap(find.widgetWithText(ListTile, 'Meera Nair'));
    await tester.pumpAndSettle();
    expect(find.descendant(of: active, matching: find.text('Meera Nair')),
        findsOneWidget);
  });

  testWidgets('Complete, review, correct and reset on close', (tester) async {
    final draft = <String, bool>{};
    await open(tester, draft);
    expect(find.text('Submit'), findsNothing);
    for (var i = 0; i < 3; i++) {
      await tester.tap(find.text('Present'));
      await tester.pump(const Duration(milliseconds: 200));
      expect(find.text('Submit'), findsNothing);
      await tester.pumpAndSettle();
    }
    expect(find.text('Everyone is marked'), findsOneWidget);
    expect(find.text('Not marked (0)'), findsOneWidget);
    expect(draft.length, 3);
    await tester.tap(find.text('Submit'));
    await tester.pumpAndSettle();
    expect(find.text('Attendance summary'), findsOneWidget);
    expect(find.textContaining('Present: 3\nAbsent: 0'), findsOneWidget);
    await tester.tap(find.text('OK'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Present (3)'));
    await tester.pumpAndSettle();
    await tester.tap(find.widgetWithText(ListTile, 'Aarav Sharma'));
    await tester.pumpAndSettle();
    expect(draft.length, 2);
    expect(find.text('Submit'), findsNothing);
    await tester.tap(find.text('Absent'));
    await tester.pumpAndSettle();
    expect(draft['id:1'], false);
    await tester.tap(find.byTooltip('Close attendance'));
    await tester.pumpAndSettle();
    expect(draft, isEmpty);
    await tester.tap(find.text('Open deck'));
    await tester.pumpAndSettle();
    expect(find.text('Present (0)'), findsOneWidget);
    expect(find.text('Absent (0)'), findsOneWidget);
    expect(find.text('Not marked (3)'), findsOneWidget);
    expect(find.text('Everyone is marked'), findsNothing);
    expect(find.text('Submit'), findsNothing);
    expect(tester.takeException(), isNull);
  });

  testWidgets('Large text on a small screen keeps marking controls usable',
      (tester) async {
    final draft = <String, bool>{};
    await open(tester, draft, size: const Size(320, 740), textScale: 1.6);
    await tester.ensureVisible(find.text('Absent'));
    await tester.tap(find.text('Absent'));
    await tester.pumpAndSettle();
    expect(draft['id:1'], false);
    await tester.ensureVisible(find.text('Absent (1)'));
    await tester.tap(find.text('Absent (1)'));
    await tester.pumpAndSettle();
    expect(find.widgetWithText(ListTile, 'Aarav Sharma'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
}
