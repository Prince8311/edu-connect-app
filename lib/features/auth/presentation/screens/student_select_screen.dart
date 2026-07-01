import 'package:edu_connect/core/shared/miscellaneous/app_extensions.dart';
import 'package:edu_connect/core/shared/miscellaneous/gap.dart';
import 'package:edu_connect/gen/assets.gen.dart';
import 'package:edu_connect/gen/colors.gen.dart';
import 'package:edu_connect/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class StudentSelectScreen extends HookConsumerWidget {
  const StudentSelectScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                Column(
                  children: [
                    GestureDetector(
                      onTap: () =>
                          Navigator.of(context).pushNamed('/student-dashboard'),
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
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                color: ColorName.lightBackground4,
                                shape: BoxShape.circle,
                              ),
                              child: ClipOval(
                                child: Assets.images.profileImage.image(
                                  width: 45,
                                  height: 45,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Gap(15.w),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'John Doe',
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500,
                                      color: ColorName.black,
                                      fontFamily: FontFamily.poppins,
                                    ),
                                  ),
                                  Gap(2.h),
                                  Row(
                                    children: [
                                      Text(
                                        '#45RTY78',
                                        style: TextStyle(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w500,
                                          color: ColorName.blueColor1,
                                          fontFamily: FontFamily.poppins,
                                        ),
                                      ),
                                      Gap(8.w),
                                      Icon(
                                        Icons.circle,
                                        size: 5,
                                        color: ColorName.black.withAlpha(80),
                                      ),
                                      Gap(8.w),
                                      Text(
                                        'Class 10-A',
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
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 18,
                              color: ColorName.blueColor1,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Gap(18.h),
                    GestureDetector(
                      onTap: () =>
                          Navigator.of(context).pushNamed('/student-dashboard'),
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
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                color: ColorName.lightBackground4,
                                shape: BoxShape.circle,
                              ),
                              child: ClipOval(
                                child: Assets.images.profileImage.image(
                                  width: 45,
                                  height: 45,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Gap(15.w),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'John Doe',
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500,
                                      color: ColorName.black,
                                      fontFamily: FontFamily.poppins,
                                    ),
                                  ),
                                  Gap(2.h),
                                  Row(
                                    children: [
                                      Text(
                                        '#45RTY78',
                                        style: TextStyle(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w500,
                                          color: ColorName.blueColor1,
                                          fontFamily: FontFamily.poppins,
                                        ),
                                      ),
                                      Gap(8.w),
                                      Icon(
                                        Icons.circle,
                                        size: 5,
                                        color: ColorName.black.withAlpha(80),
                                      ),
                                      Gap(8.w),
                                      Text(
                                        'Class 10-A',
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
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 18,
                              color: ColorName.blueColor1,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
