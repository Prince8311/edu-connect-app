import 'dart:math' as math;

import 'package:edu_connect/core/api/end_points.dart';
import 'package:edu_connect/core/router/app_router.dart';
import 'package:edu_connect/core/shared/miscellaneous/app_extensions.dart';
import 'package:edu_connect/core/shared/miscellaneous/gap.dart';
import 'package:edu_connect/features/auth/domain/models/auth_model.dart';
import 'package:edu_connect/features/auth/presentation/providers/auth_provider.dart';
import 'package:edu_connect/features/auth/presentation/providers/auth_token_provider.dart';
import 'package:edu_connect/gen/assets.gen.dart';
import 'package:edu_connect/gen/colors.gen.dart';
import 'package:edu_connect/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class StudentCard extends HookConsumerWidget {
  const StudentCard({
    required this.student,
    this.tempToken,
    this.onSelect,
    this.loadingLabel = 'Signing in',
  });

  final GuardianStudent student;
  final String? tempToken;
  final Future<void> Function()? onSelect;
  final String loadingLabel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final String imagePath = student.profileImage ?? '';
    final String imageUrl = '${Endpoints.profileImageBaseURL}/user/$imagePath';

    final isLoading = useState(false);

    Future<void> handleStudentSelect() async {
      if (isLoading.value) return;
      isLoading.value = true;

      try {
        if (onSelect != null) {
          await onSelect!();
          return;
        }

        final result = await ref.read(
          studentSelectProvider(
            requestBody: StudentSelectRequest(
              studentId: student.id.toString(),
              tempToken: tempToken,
            ),
          ).future,
        );

        if (!context.mounted || result == null) return;

        // Invalidate the auth token provider to refresh its state
        ref.invalidate(authTokenProvider);

        if (result.nextScreen == 'home') {
          HomeRoute().go(context);
        } else if (result.nextScreen == 'selectStudent') {
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
        if (context.mounted) isLoading.value = false;
      }
    }

    return Semantics(
      button: true,
      selected: isLoading.value,
      label:
          'Select ${student.name?.trim().isNotEmpty == true ? student.name : 'student'}',
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 180),
        decoration: BoxDecoration(
          color: isLoading.value
              ? ColorName.blueColor.withAlpha(10)
              : ColorName.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isLoading.value ? ColorName.blueColor : Colors.transparent,
          ),
          boxShadow: [
            BoxShadow(
              color: ColorName.black.withAlpha(20),
              blurRadius: 10,
              offset: const Offset(2, 4),
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: isLoading.value ? null : handleStudentSelect,
            borderRadius: BorderRadius.circular(12),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(children: [
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
                Gap(8.w),
                if (isLoading.value)
                  _StudentSignInLoader(label: loadingLabel)
                else
                  Container(
                    width: 34,
                    height: 34,
                    decoration: BoxDecoration(
                      color: ColorName.blueColor.withAlpha(12),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Icon(
                      Icons.arrow_forward_rounded,
                      color: ColorName.blueColor,
                      size: 20,
                    ),
                  ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}

class _StudentSignInLoader extends HookWidget {
  const _StudentSignInLoader({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    final reduceMotion = MediaQuery.disableAnimationsOf(context);
    final controller = useAnimationController(
      duration: const Duration(milliseconds: 1200),
    );
    useEffect(() {
      if (!reduceMotion) controller.repeat();
      return controller.stop;
    }, [reduceMotion]);
    final progress = useAnimation(controller);

    return Semantics(
      label: label,
      liveRegion: true,
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Container(
          width: 48,
          height: 34,
          decoration: BoxDecoration(
            color: ColorName.blueColor.withAlpha(14),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            for (var index = 0; index < 3; index++)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2),
                child: Transform.translate(
                  offset: Offset(
                    0,
                    reduceMotion
                        ? 0
                        : -3 *
                            math.sin((progress - index * 0.18) * math.pi * 2),
                  ),
                  child: Container(
                    width: 6,
                    height: 6,
                    decoration: const BoxDecoration(
                      color: ColorName.blueColor,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
          ]),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            fontSize: 10,
            color: ColorName.blueColor,
            fontFamily: FontFamily.poppins,
          ),
        ),
      ]),
    );
  }
}
