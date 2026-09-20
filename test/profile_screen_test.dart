import 'package:edu_connect/core/router/app_router.dart';
import 'package:edu_connect/features/auth/domain/models/auth_model.dart';
import 'package:edu_connect/features/auth/presentation/providers/auth_provider.dart';
import 'package:edu_connect/features/profile/domain/models/profile_model.dart';
import 'package:edu_connect/features/profile/presentation/providers/profile_provider.dart';
import 'package:edu_connect/features/profile/presentation/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class _Details extends UserDetailsNotifier {
  @override
  Future<UserDetails?> build() async => const UserDetails(
        name: 'Profile Person',
        userType: 'ignored',
        email: 'person@example.com',
        phone: '1234567890',
        isMailVerified: true,
        isPhoneVerified: false,
        enrollmentId: 'EN123',
        classStandard: '1',
        section: 'A',
        session: 'AY 2026-27',
        staffId: 'STAFF123',
        subject: 'Science',
        guardian: GuardianInfo(
            name: 'Guardian Person',
            email: 'guardian@example.com',
            phone: '9876543210'),
        student: StudentInfo(
            name: 'Student Person',
            enrollmentId: 'EN456',
            classStandard: '2',
            section: 'B'),
      );
}

void main() {
  for (final role in ['student', 'teacher', 'guardian']) {
    testWidgets('$role profile uses saved role and fetched details',
        (tester) async {
      tester.view.physicalSize = const Size(430, 932);
      tester.view.devicePixelRatio = 1;
      addTearDown(tester.view.resetPhysicalSize);
      addTearDown(tester.view.resetDevicePixelRatio);
      await tester.pumpWidget(ProviderScope(
        overrides: [
          savedUserInfoProvider
              .overrideWith((ref) async => UserInfo(type: role)),
          userDetailsNotifierProvider.overrideWith(_Details.new),
        ],
        child: MaterialApp(
            navigatorKey: rootNavigatorKey, home: const TeacherProfileScreen()),
      ));
      await tester.pumpAndSettle();
      expect(find.text('Profile Person'), findsOneWidget);
      expect(find.text(role.toUpperCase()), findsOneWidget);
      expect(find.text('LINKED STUDENT'),
          role == 'guardian' ? findsOneWidget : findsNothing);
      expect(find.text('GUARDIAN DETAILS'),
          role == 'student' ? findsOneWidget : findsNothing);
      expect(find.text('IDENTITY DETAILS'),
          role == 'guardian' ? findsNothing : findsOneWidget);
      expect(find.text('STAFF123'),
          role == 'teacher' ? findsOneWidget : findsNothing);
      expect(find.text('AY 2026-27'),
          role == 'student' ? findsOneWidget : findsNothing);
      expect(find.text('EN123'),
          role == 'student' ? findsOneWidget : findsNothing);
      expect(find.text('Guardian Person'),
          role == 'student' ? findsOneWidget : findsNothing);
      expect(find.text('Student Person'),
          role == 'guardian' ? findsOneWidget : findsNothing);
      await tester.scrollUntilVisible(find.text('Transport'), 200,
          scrollable: find.byType(Scrollable).first);
      expect(find.text('Leaves'),
          role == 'teacher' ? findsOneWidget : findsNothing);
      expect(find.text('Report Card'),
          role == 'teacher' ? findsNothing : findsOneWidget);
      expect(find.text('person@example.com'), findsOneWidget);
      expect(find.text('Verified'), findsOneWidget);
      expect(find.text('Pending'), findsOneWidget);
      expect(tester.takeException(), isNull);
    });
  }
}
