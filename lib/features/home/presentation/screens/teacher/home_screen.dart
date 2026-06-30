import 'package:edu_connect/core/router/app_router.dart';
import 'package:edu_connect/core/shared/miscellaneous/app_extensions.dart';
import 'package:edu_connect/core/shared/miscellaneous/gap.dart';
import 'package:edu_connect/core/shared/widgets/app_bar.dart';
import 'package:edu_connect/gen/colors.gen.dart';
import 'package:edu_connect/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TeacherHomeScreen extends HookConsumerWidget {
  const TeacherHomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: ColorName.lightBackground4,
      appBar: const HomeAppBar(),
      floatingActionButton: Container(
        width: 56,
        height: 56,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            colors: [
              ColorName.blueColor,
              ColorName.blueColor1,
            ],
          ),
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.2),
              blurRadius: 10,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            borderRadius: BorderRadius.circular(16),
            onTap: () => CreateClassRoomRoute().push(context),
            child: Center(
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 30.sp,
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildScheduleCard(context),
              Gap(18.h),
              _buildClassroomsHeader(context),
              Gap(12.h),
              Column(
                children: [
                  _buildClassroomCard(
                      context, '10-C', 'Kannada', '32 Students'),
                  Gap(12.h),
                  _buildClassroomCard(context, '9-C', 'Kannada', '28 Students'),
                  Gap(12.h),
                  _buildClassroomCard(context, '8-D', 'Kannada', '35 Students'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildScheduleCard(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: ColorName.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: ColorName.borderColor),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.calendar_today,
                  color: ColorName.blueColor1, size: 20.sp),
              Gap(8.w),
              Text(
                "Today's Schedule",
                style: TextStyle(
                  color: ColorName.black,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  fontFamily: FontFamily.poppins,
                ),
              ),
            ],
          ),
          Gap(20.h),
          Container(
            padding: const EdgeInsets.fromLTRB(16, 28, 16, 20),
            decoration: BoxDecoration(
              color: ColorName.lightBackground3.withAlpha(130),
              borderRadius: BorderRadius.circular(7),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        ColorName.blueColor,
                        ColorName.blueColor2, // Cyan/Green
                      ],
                    ),
                    borderRadius: BorderRadius.circular(999),
                  ),
                  child: Icon(Icons.calendar_month,
                      color: ColorName.white.withAlpha(220), size: 34.sp),
                ),
                Gap(18.h),
                Text(
                  'No classes scheduled',
                  style: TextStyle(
                    color: ColorName.black,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    fontFamily: FontFamily.poppins,
                  ),
                ),
                Gap(7.h),
                Text(
                  'You have no classes for today. Enjoy your free time or explore resources!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: ColorName.black2,
                    height: 1.4,
                    fontSize: 14.sp,
                    fontFamily: FontFamily.poppins,
                  ),
                ),
                Gap(20.h),
                Container(
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.12),
                        blurRadius: 12,
                        spreadRadius: 1,
                        offset: Offset(0, 6),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                      surfaceTintColor: Colors.transparent,
                      elevation: 0,
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Ink(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            ColorName.blueColor,
                            ColorName.blueColor2, // rgb(0, 255, 204)
                          ],
                        ),
                      ),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 12,
                          horizontal: 22,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.refresh,
                              size: 20.sp,
                              color: ColorName.white,
                            ),
                            Gap(6.w),
                            Text(
                              'Refresh Schedule',
                              style: TextStyle(
                                color: ColorName.white,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                fontFamily: FontFamily.poppins,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildClassroomsHeader(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Row(
            children: [
              Icon(Icons.school, color: ColorName.blueColor1, size: 25.sp),
              Gap(8.w),
              Text(
                'Classrooms',
                style: TextStyle(
                  color: ColorName.black,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  fontFamily: FontFamily.poppins,
                ),
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () => ClassRoomsRoute().push(context),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'View all',
                style: TextStyle(
                  color: ColorName.blueColor1,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  fontFamily: FontFamily.poppins,
                ),
              ),
              Gap(2.w),
              Icon(
                Icons.keyboard_double_arrow_right,
                size: 19.sp,
                color: ColorName.blueColor1,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildClassroomCard(
      BuildContext context, String label, String subject, String subtitle) {
    return GestureDetector(
      onTap: () => ClassRoomDetailsRoute().push(context),
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: ColorName.white,
          border: Border.all(color: ColorName.borderColor.withAlpha(125)),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: ColorName.black.withAlpha(5),
              blurRadius: 16,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 52,
              height: 52,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    ColorName.blueColor,
                    ColorName.blueColor2, // rgb(0, 255, 204)
                  ],
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Center(
                child: Text(
                  label,
                  style: TextStyle(
                    color: ColorName.white.withAlpha(245),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: FontFamily.poppins,
                  ),
                ),
              ),
            ),
            Gap(16.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    subject,
                    style: TextStyle(
                      color: ColorName.black,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w500,
                      fontFamily: FontFamily.poppins,
                    ),
                  ),
                  Gap(2.h),
                  Text(
                    subtitle,
                    style: TextStyle(
                      color: ColorName.black2,
                      fontSize: 13.sp,
                      fontFamily: FontFamily.poppins,
                    ),
                  ),
                ],
              ),
            ),
            Icon(Icons.chevron_right, color: ColorName.black2),
          ],
        ),
      ),
    );
  }
}
