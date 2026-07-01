import 'package:edu_connect/core/router/app_router.dart';
import 'package:edu_connect/core/shared/miscellaneous/app_extensions.dart';
import 'package:edu_connect/core/shared/miscellaneous/gap.dart';
import 'package:edu_connect/gen/assets.gen.dart';
import 'package:edu_connect/gen/colors.gen.dart';
import 'package:edu_connect/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RoleSelectScreen extends HookConsumerWidget {
  const RoleSelectScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: ColorName.white,
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
                        'Workspace',
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
                        'Choose the portal that matches your daily mission. Access your personalized tools and campus overview.',
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
                      onTap: () => StudentSelectRoute().push(context),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: ColorName.white,
                          borderRadius: BorderRadius.circular(15.0),
                          boxShadow: [
                            BoxShadow(
                              color: ColorName.black.withAlpha(30),
                              blurRadius: 10,
                              offset: const Offset(2, 4),
                            ),
                          ],
                          border: Border.all(
                            color: ColorName.blueColor1.withAlpha(20),
                          ),
                        ),
                        child: Stack(
                          clipBehavior: Clip.hardEdge,
                          children: [
                            Positioned(
                              right: 0,
                              bottom: 0,
                              child: Opacity(
                                opacity: 0.15,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(15.0),
                                  ),
                                  child: Assets.images.teacherRoleBg.image(
                                    height: 190.h,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(25.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(17.h),
                                    decoration: BoxDecoration(
                                      color: ColorName.blueColor1.withAlpha(20),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Assets.images.teacherRole.svg(
                                      width: 26.w,
                                    ),
                                  ),
                                  Gap(15.h),
                                  Text(
                                    'Teacher',
                                    style: TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w600,
                                      color: ColorName.black,
                                      fontFamily: FontFamily.poppins,
                                    ),
                                  ),
                                  Gap(5.h),
                                  Text(
                                    'Manage classrooms, student progress, and curriculum. Access grading tools and collaborative lesson planners.',
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                      color: ColorName.black.withAlpha(140),
                                      height: 1.6,
                                      fontFamily: FontFamily.poppins,
                                    ),
                                  ),
                                  Gap(16.h),
                                  Row(
                                    children: [
                                      Text(
                                        'Continue to Faculty Portal',
                                        style: TextStyle(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w600,
                                          color: ColorName.blueColor1,
                                          fontFamily: FontFamily.poppins,
                                        ),
                                      ),
                                      Gap(6.w),
                                      Icon(
                                        Icons.east,
                                        size: 18.sp,
                                        color: ColorName.blueColor1,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Gap(20.h),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: ColorName.white,
                          borderRadius: BorderRadius.circular(15.0),
                          boxShadow: [
                            BoxShadow(
                              color: ColorName.black.withAlpha(30),
                              blurRadius: 10,
                              offset: const Offset(2, 4),
                            ),
                          ],
                          border: Border.all(
                            color: ColorName.blueColor1.withAlpha(20),
                          ),
                        ),
                        child: Stack(
                          clipBehavior: Clip.hardEdge,
                          children: [
                            Positioned(
                              right: 0,
                              bottom: 0,
                              child: Opacity(
                                opacity: 0.15,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(15.0),
                                  ),
                                  child: Assets.images.guardianRoleBg.image(
                                    height: 190.h,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(25.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(17.h),
                                    decoration: BoxDecoration(
                                      color: ColorName.blueColor1.withAlpha(20),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Assets.images.guardianRole.svg(
                                      width: 26.w,
                                    ),
                                  ),
                                  Gap(15.h),
                                  Text(
                                    'Guardian',
                                    style: TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w600,
                                      color: ColorName.black,
                                      fontFamily: FontFamily.poppins,
                                    ),
                                  ),
                                  Gap(5.h),
                                  Text(
                                    'Monitor student activity, campus updates, and financial status. Stay connected with faculty and event calendars.',
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                      color: ColorName.black.withAlpha(140),
                                      height: 1.6,
                                      fontFamily: FontFamily.poppins,
                                    ),
                                  ),
                                  Gap(16.h),
                                  Row(
                                    children: [
                                      Text(
                                        'Continue to Guardian Portal',
                                        style: TextStyle(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w600,
                                          color: ColorName.blueColor1,
                                          fontFamily: FontFamily.poppins,
                                        ),
                                      ),
                                      Gap(6.w),
                                      Icon(
                                        Icons.east,
                                        size: 18.sp,
                                        color: ColorName.blueColor1,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
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
