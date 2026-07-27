import 'package:edu_connect/core/api/end_points.dart';
import 'package:edu_connect/core/router/app_router.dart';
import 'package:edu_connect/core/shared/helpers/local_storage.dart';
import 'package:edu_connect/core/shared/miscellaneous/app_extensions.dart';
import 'package:edu_connect/core/shared/miscellaneous/gap.dart';
import 'package:edu_connect/core/shared/widgets/loader.dart';
import 'package:edu_connect/features/auth/domain/models/auth_model.dart';
import 'package:edu_connect/features/auth/presentation/providers/auth_provider.dart';
import 'package:edu_connect/features/auth/presentation/providers/auth_token_provider.dart';
import 'package:edu_connect/gen/assets.gen.dart';
import 'package:edu_connect/gen/colors.gen.dart';
import 'package:edu_connect/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lottie/lottie.dart';

class StudentSelectScreen extends HookConsumerWidget {
  const StudentSelectScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tempTokenFuture = useMemoized(
      () => ref.read(secureStorageProvider).readData('tempToken'),
      const [],
    );
    final tempTokenSnapshot = useFuture(tempTokenFuture);

    return Scaffold(
      backgroundColor: ColorName.lightBackground4,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () => Navigator.of(context).pop(),
                  child: Container(
                    width: 100,
                    padding: EdgeInsets.fromLTRB(0, 6.0, 10, 6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      border: Border.all(color: ColorName.black.withAlpha(80)),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.keyboard_arrow_left,
                            size: 22,
                            color: ColorName.black.withAlpha(150),
                          ),
                          Text(
                            'Back',
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500,
                              color: ColorName.black.withAlpha(150),
                              fontFamily: FontFamily.poppins,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Gap(40.h),
                Center(
                  child: Column(
                    children: [
                      Assets.images.logo1Png.image(width: 90),
                      Gap(18.h),
                      Text(
                        'Select Your',
                        style: TextStyle(
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w500,
                          color: ColorName.black,
                          fontFamily: FontFamily.poppins,
                        ),
                      ),
                      Text(
                        'Student',
                        style: TextStyle(
                          fontSize: 29.sp,
                          height: 1.1,
                          fontWeight: FontWeight.w600,
                          color: ColorName.blueColor1,
                          fontFamily: FontFamily.oleoScript,
                        ),
                      ),
                      Gap(8.h),
                      Text(
                        'Select an academic profile to initiate your administrative session and access campus resources.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: ColorName.black.withAlpha(120),
                          fontFamily: FontFamily.poppins,
                        ),
                      ),
                    ],
                  ),
                ),
                Gap(35.h),
                if (tempTokenSnapshot.connectionState ==
                    ConnectionState.waiting)
                  Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 40),
                      child: Column(
                        spacing: 12.h,
                        children: [
                          SkeletonLoader(
                            width: double.infinity,
                            height: 100.h,
                          ),
                          SkeletonLoader(
                            width: double.infinity,
                            height: 100.h,
                          ),
                        ],
                      ),
                    ),
                  )
                else if ((tempTokenSnapshot.data ?? '').isEmpty)
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 24),
                      child: Text(
                        'Session token not found. Please login again.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: ColorName.black.withAlpha(140),
                          fontFamily: FontFamily.poppins,
                        ),
                      ),
                    ),
                  )
                else
                  Builder(
                    builder: (context) {
                      final studentsAsync = ref.watch(
                        getGuardianStudentsProvider(
                          tempToken: tempTokenSnapshot.data,
                        ),
                      );

                      return studentsAsync.when(
                        loading: () => Center(
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 40),
                            child: Column(
                              spacing: 12.h,
                              children: [
                                SkeletonLoader(
                                  width: double.infinity,
                                  height: 100.h,
                                ),
                                SkeletonLoader(
                                  width: double.infinity,
                                  height: 100.h,
                                ),
                              ],
                            ),
                          ),
                        ),
                        error: (_, __) => Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 24),
                            child: Text(
                              'Unable to load students right now.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 14.sp,
                                color: ColorName.black.withAlpha(140),
                                fontFamily: FontFamily.poppins,
                              ),
                            ),
                          ),
                        ),
                        data: (students) {
                          if (students == null || students.isEmpty) {
                            return Center(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 24),
                                child: Column(
                                  children: [
                                    Lottie.asset(
                                      Assets.animations.searchNotFound,
                                      width: 220.w,
                                      height: 220.h,
                                    ),
                                    Text(
                                      'No students found for this guardian.',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 15.sp,
                                        color: ColorName.black.withAlpha(140),
                                        fontFamily: FontFamily.poppins,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }

                          return Column(
                            children: [
                              for (int i = 0; i < students.length; i++) ...[
                                _StudentCard(
                                  student: students[i],
                                  tempToken: tempTokenSnapshot.data,
                                ),
                                if (i != students.length - 1) Gap(18.h),
                              ],
                            ],
                          );
                        },
                      );
                    },
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _StudentCard extends HookConsumerWidget {
  const _StudentCard({
    required this.student,
    this.tempToken,
  });

  final GuardianStudent student;
  final String? tempToken;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final String imagePath = student.profileImage ?? '';
    final String imageUrl =
        '${Endpoints.profileImageBaseURL}/student/$imagePath';

    final isLoading = useState(false);

    Future<void> handleStudentSelect() async {
      if (isLoading.value) return;
      isLoading.value = true;

      try {
        final result = await ref.read(
          studentSelectProvider(
            requestBody: StudentSelectRequest(
              studentId: student.id.toString(),
              tempToken: tempToken,
            ),
          ).future,
        );

        if (!context.mounted) return;

        // Invalidate the auth token provider to refresh its state
        ref.invalidate(authTokenProvider);

        if (result?.nextScreen == 'home') {
          HomeRoute().go(context);
        } else if (result?.nextScreen == 'selectStudent') {
          StudentSelectRoute().go(context);
        } else {
          HomeRoute().go(context);
        }
      } catch (e) {
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Error selecting student: $e')),
          );
        }
      } finally {
        isLoading.value = false;
      }
    }

    return GestureDetector(
      onTap: handleStudentSelect,
      child: AnimatedOpacity(
        opacity: isLoading.value ? 0.55 : 1.0,
        duration: const Duration(milliseconds: 180),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: ColorName.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: ColorName.black.withAlpha(30),
                blurRadius: 10,
                offset: const Offset(2, 4),
              ),
            ],
          ),
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Container(
                width: 54,
                height: 54,
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  color: ColorName.lightBackground4,
                  border: Border.all(color: ColorName.black.withAlpha(40)),
                  shape: BoxShape.circle,
                ),
                child: ClipOval(
                  child: imagePath.isEmpty
                      ? Assets.images.profileImage.image(
                          width: 45,
                          height: 45,
                          fit: BoxFit.cover,
                        )
                      : Image.network(
                          imageUrl,
                          width: 45,
                          height: 45,
                          fit: BoxFit.cover,
                          errorBuilder: (_, __, ___) {
                            return Assets.images.profileImage.image(
                              width: 45,
                              height: 45,
                              fit: BoxFit.cover,
                            );
                          },
                        ),
                ),
              ),
              Gap(12.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      student.name ?? '-',
                      style: TextStyle(
                        fontSize: 16.5.sp,
                        fontWeight: FontWeight.w500,
                        color: ColorName.black,
                        fontFamily: FontFamily.poppins,
                      ),
                    ),
                    Gap(3.h),
                    Wrap(
                      spacing: 8.w,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Text(
                          '#${student.enrollmentId ?? '-'}',
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: ColorName.blueColor1,
                            fontFamily: FontFamily.poppins,
                          ),
                        ),
                        Icon(
                          Icons.circle,
                          size: 5,
                          color: ColorName.black.withAlpha(80),
                        ),
                        Text(
                          'Class: ${student.className ?? '-'} - ${student.section ?? '-'}',
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: ColorName.black.withAlpha(120),
                            fontFamily: FontFamily.poppins,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Gap(15.w),
              const Icon(
                Icons.arrow_forward_ios,
                size: 18,
                color: ColorName.blueColor1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
