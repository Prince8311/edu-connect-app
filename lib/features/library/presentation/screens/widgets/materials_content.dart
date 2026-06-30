import 'package:edu_connect/core/shared/miscellaneous/app_extensions.dart';
import 'package:edu_connect/core/shared/miscellaneous/gap.dart';
import 'package:edu_connect/gen/assets.gen.dart';
import 'package:edu_connect/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lottie/lottie.dart';

class MaterialsContent extends HookConsumerWidget {
  const MaterialsContent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Gap(30.h),
          Lottie.asset(
            Assets.animations.searchNotFound,
            width: 220.w,
            height: 220.h,
          ),
          Gap(16.h),
          Text(
            'No Materials Found',
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              fontFamily: FontFamily.poppins,
            ),
          ),
          Gap(6.h),
          Text(
            'Materials will appear here once they are added.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14.sp,
              color: Colors.grey,
              fontFamily: FontFamily.poppins,
            ),
          ),
        ],
      ),
    );
  }
}
