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
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildScheduleCard(context),
              const SizedBox(height: 18),
              _buildClassroomsHeader(),
              const SizedBox(height: 12),
              _buildClassroomCard('10-C', 'Kannada', '32 Students'),
              const SizedBox(height: 12),
              _buildClassroomCard('9-C', 'Kannada', '28 Students'),
              const SizedBox(height: 12),
              _buildClassroomCard('8-D', 'Kannada', '35 Students'),
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
              Icon(Icons.calendar_today, color: ColorName.blueColor, size: 18),
              Gap(8.w),
              Text(
                "Today's Schedule",
                style: TextStyle(
                  color: ColorName.black,
                  fontSize: 15,
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
                    color: ColorName.blueColor.withAlpha(35),
                    borderRadius: BorderRadius.circular(999),
                  ),
                  child: Icon(Icons.calendar_month,
                      color: ColorName.blueColor, size: 28),
                ),
                Gap(16.h),
                Text(
                  'No classes scheduled',
                  style: TextStyle(
                    color: ColorName.black,
                    fontSize: 14,
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
                    fontSize: 13,
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
                      backgroundColor: ColorName.blueColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 22),
                      foregroundColor: ColorName.white,
                      shadowColor: Colors.transparent,
                      elevation: 0,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.refresh, size: 18, color: ColorName.white),
                        Gap(6.w),
                        Text(
                          'Refresh Schedule',
                          style: TextStyle(
                              color: ColorName.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              fontFamily: FontFamily.poppins),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildClassroomsHeader() {
    return Row(
      children: [
        Expanded(
          child: Row(
            children: [
              Icon(Icons.school, color: ColorName.blueColor, size: 22),
              Gap(8.w),
              Text(
                'Classrooms',
                style: TextStyle(
                  color: ColorName.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  fontFamily: FontFamily.poppins,
                ),
              ),
            ],
          ),
        ),
        FilledButton(
          onPressed: () {},
          style: FilledButton.styleFrom(
            backgroundColor: ColorName.white,
            foregroundColor: ColorName.blueColor,
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 18),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: BorderSide(color: ColorName.borderColor),
            ),
            elevation: 0,
            shadowColor: Colors.transparent,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.add,
                size: 17,
                color: ColorName.blueColor,
              ),
              Gap(4.w),
              Text(
                'Create New',
                style: TextStyle(
                  color: ColorName.blueColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  fontFamily: FontFamily.poppins,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildClassroomCard(String label, String subject, String subtitle) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: ColorName.white,
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
              color: ColorName.blueColor.withAlpha(35),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Center(
              child: Text(
                label,
                style: TextStyle(
                  color: ColorName.blueColor,
                  fontSize: 13,
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
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    fontFamily: FontFamily.poppins,
                  ),
                ),
                Gap(6.h),
                Text(
                  subtitle,
                  style: TextStyle(
                    color: ColorName.black2,
                    fontSize: 13,
                    fontFamily: FontFamily.poppins,
                  ),
                ),
              ],
            ),
          ),
          const Icon(Icons.chevron_right, color: ColorName.black2),
        ],
      ),
    );
  }
}
