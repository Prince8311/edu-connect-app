import 'package:edu_connect/core/shared/miscellaneous/app_extensions.dart';
import 'package:edu_connect/core/shared/miscellaneous/gap.dart';
import 'package:edu_connect/core/shared/widgets/loader.dart';
import 'package:flutter/material.dart';

class ProfileLoading extends StatelessWidget {
  const ProfileLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SkeletonLoader(
          width: double.maxFinite,
          height: 80,
        ),
        Gap(20.h),
        SkeletonLoader(
          width: 150,
          height: 15,
        ),
        Gap(8.h),
        SkeletonLoader(
          width: double.maxFinite,
          height: 230,
        ),
        Gap(20.h),
        SkeletonLoader(
          width: 150,
          height: 15,
        ),
        Gap(8.h),
        SkeletonLoader(
          width: double.maxFinite,
          height: 230,
        ),
        Gap(20.h),
        SkeletonLoader(
          width: 150,
          height: 15,
        ),
        Gap(8.h),
        SkeletonLoader(
          width: double.maxFinite,
          height: 230,
        ),
      ],
    );
  }
}
