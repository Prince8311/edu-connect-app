import 'package:edu_connect/core/shared/miscellaneous/app_extensions.dart';
import 'package:edu_connect/core/shared/miscellaneous/gap.dart';
import 'package:edu_connect/core/shared/widgets/loader.dart';
import 'package:edu_connect/core/router/app_router.dart';
import 'package:edu_connect/features/auth/presentation/widgets/student_card.dart';
import 'package:edu_connect/features/auth/presentation/providers/auth_provider.dart';
import 'package:edu_connect/features/profile/domain/models/profile_model.dart';
import 'package:edu_connect/features/profile/presentation/providers/profile_provider.dart';
import 'package:edu_connect/gen/colors.gen.dart';
import 'package:edu_connect/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SwitchStudentSheet extends ConsumerWidget {
  const SwitchStudentSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final students = ref.watch(getGuardianStudentListProvider());
    final currentStudentId =
        ref.watch(savedUserInfoProvider).valueOrNull?.student;

    Widget loadError() => Column(
          children: [
            const Text('Unable to load students right now.'),
            TextButton(
              onPressed: () => ref.invalidate(getGuardianStudentListProvider()),
              child: const Text('Retry'),
            ),
          ],
        );

    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        height: MediaQuery.sizeOf(context).height * 0.65,
        child: Column(
          children: [
            Container(
              width: 100,
              height: 4,
              margin: const EdgeInsets.only(top: 13, bottom: 20),
              decoration: BoxDecoration(
                color: ColorName.black3.withAlpha(120),
                borderRadius: BorderRadius.circular(6),
              ),
            ),
            Text(
              'Switch Student',
              style: TextStyle(
                fontSize: 19.sp,
                fontWeight: FontWeight.w600,
                fontFamily: FontFamily.poppins,
                color: ColorName.blueColor2,
              ),
            ),
            Gap(2.h),
            const Text(
              'Select a student to continue.',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: ColorName.black2,
              ),
            ),
            Gap(2.h),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(20),
                child: students.when(
                  loading: () => Column(
                    children: [
                      SkeletonLoader(width: double.infinity, height: 100.h),
                      Gap(18.h),
                      SkeletonLoader(width: double.infinity, height: 100.h),
                    ],
                  ),
                  error: (_, __) => loadError(),
                  data: (items) {
                    if (items == null) return loadError();
                    if (items.isEmpty) {
                      return const Text('No students found for this guardian.');
                    }
                    return Column(
                      children: [
                        for (var i = 0; i < items.length; i++) ...[
                          StudentCard(
                            student: items[i],
                            isSelected: currentStudentId != null &&
                                items[i].id == currentStudentId,
                            loadingLabel: 'Switching',
                            onSelect: () async {
                              final result = await ref.refresh(
                                studentSwitchProvider(
                                  requestBody: StudentSwitchRequest(
                                    studentId: items[i].id.toString(),
                                  ),
                                ).future,
                              );
                              if (!context.mounted || result == null) return;

                              final router = GoRouter.of(context);
                              Navigator.of(context).pop();
                              router.go(HomeRoute().location);
                            },
                          ),
                          if (i < items.length - 1) Gap(14.h),
                        ],
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
