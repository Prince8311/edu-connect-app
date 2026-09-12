import 'package:edu_connect/core/shared/widgets/loader.dart';
import 'package:edu_connect/features/auth/domain/models/auth_model.dart';
import 'package:edu_connect/features/auth/presentation/providers/auth_provider.dart';
import 'dart:async';
import 'package:edu_connect/features/classroom/domain/models/classroom_model.dart';
import 'package:edu_connect/features/classroom/presentation/providers/classroom_provider.dart';
import 'package:edu_connect/core/router/app_router.dart';
import 'package:edu_connect/features/classroom/presentation/screens/classroom_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  final classroom = ClassroomModel(
    id: 17,
    classroomId: '1AMM2688',
    className: '1',
    section: 'A',
    day: 'Monday',
    period: 'First Period',
    time: '09:30 AM - 10:30 AM',
    subject: 'Math',
    teacher: 'Saanvi Mander Lakshay Chandran Anaya Sangha',
    students: [
      for (final (index, name) in [
        'Aarav Sharma',
        'Ananya Rao',
        'Diya Patel',
        'Ishaan Kumar',
        'Meera Nair',
        'Rohan Reddy',
        'Saanvi Shetty',
        'Vivaan Joshi'
      ].indexed)
        ClassroomStudentModel(
            studentId: index + 1,
            name: name,
            enrollmentId: 'EN${(index + 1).toString().padLeft(2, '0')}'),
    ],
  );
  Future<void> openScreen(WidgetTester tester, Size size,
      {double textScale = 1,
      Future<ClassroomModel?> Function()? load,
      bool settle = true,
      String? userType = 'teacher'}) async {
    tester.view.physicalSize = size;
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    await tester.pumpWidget(ProviderScope(
      overrides: [
        savedUserInfoProvider
            .overrideWith((ref) async => UserInfo(type: userType)),
        getClassroomDetailsProvider(id: 17).overrideWith(
            (ref) => load == null ? Future.value(classroom) : load())
      ],
      child: MaterialApp(
        navigatorKey: rootNavigatorKey,
        builder: (context, child) => MediaQuery(
          data: MediaQuery.of(context)
              .copyWith(textScaler: TextScaler.linear(textScale)),
          child: child!,
        ),
        home: const ClassroomDetailsScreen(id: 17),
      ),
    ));
    if (settle) await tester.pumpAndSettle();
  }

  for (final type in ['teacher', 'student', 'guardian', null]) {
    testWidgets('Attendance visibility for $type', (tester) async {
      await openScreen(tester, const Size(390, 844), userType: type);
      expect(find.text('Attendance'),
          type == 'teacher' ? findsOneWidget : findsNothing);
      expect(find.text('Material'), findsOneWidget);
    });
  }

  test('Details route carries the selected class ID', () {
    expect(
        const ClassRoomDetailsRoute(id: 17).location, '/classroom-details/17');
  });

  testWidgets('Loads the requested classroom and shows API details',
      (tester) async {
    final completer = Completer<ClassroomModel?>();
    await openScreen(tester, const Size(390, 844),
        load: () => completer.future, settle: false);
    expect(find.byType(SkeletonLoader), findsWidgets);
    completer.complete(classroom);
    await tester.pumpAndSettle();
    expect(find.text('Class 1A'), findsOneWidget);
    expect(find.text('Math'), findsOneWidget);
    expect(find.text('Classroom ID: 1AMM2688'), findsOneWidget);
    expect(find.text(classroom.teacher!), findsOneWidget);
    expect(find.text('First Period\n09:30 AM - 10:30 AM'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  for (final fails in [false, true]) {
    testWidgets('Retries ${fails ? 'failed' : 'empty'} responses',
        (tester) async {
      var calls = 0;
      await openScreen(tester, const Size(390, 844), load: () async {
        if (++calls > 1) return classroom;
        if (fails) throw Exception('Request failed');
        return null;
      });
      expect(find.text('Classroom details are unavailable.'), findsOneWidget);
      await tester.tap(find.text('Retry'));
      await tester.pumpAndSettle();
      expect(find.text('Class 1A'), findsOneWidget);
      expect(calls, 2);
    });
  }

  testWidgets('Shows an empty student roster', (tester) async {
    await openScreen(tester, const Size(390, 844),
        load: () async => classroom.copyWith(students: []));
    await tester.scrollUntilVisible(find.text('No students found'), 200,
        scrollable: find.byType(Scrollable).first);
    expect(find.text('No students have been added to this classroom.'),
        findsOneWidget);
  });

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

  testWidgets(
      'Search filters by name and enrollment ID and recovers from no results',
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
