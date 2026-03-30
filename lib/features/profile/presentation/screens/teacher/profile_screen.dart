import 'package:edu_connect/core/shared/miscellaneous/app_extensions.dart';
import 'package:edu_connect/core/shared/miscellaneous/gap.dart';
import 'package:edu_connect/core/shared/widgets/app_bar.dart';
import 'package:edu_connect/gen/assets.gen.dart';
import 'package:edu_connect/gen/colors.gen.dart';
import 'package:edu_connect/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TeacherProfileScreen extends HookConsumerWidget {
  const TeacherProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: ColorName.lightBackground4,
      appBar: const PrimaryAppBar(title: 'Profile'),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(16, 24, 16, 18),
                decoration: BoxDecoration(
                  color: ColorName.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    const BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.05),
                      blurRadius: 24,
                      offset: Offset(0, 12),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Center(
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: ColorName.blueColor.withAlpha(30),
                              shape: BoxShape.circle,
                            ),
                          ),
                          Container(
                            width: 94,
                            height: 94,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: ColorName.white,
                                width: 3,
                              ),
                            ),
                            child: ClipOval(
                              child: Assets.images.profileImage.image(
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Gap(10.h),
                    Center(
                      child: Text(
                        'V Geethanjali',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: FontFamily.poppins,
                          color: ColorName.black,
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        'Senior Secondary Teacher',
                        style: TextStyle(
                          fontSize: 13,
                          color: ColorName.blueColor,
                          fontFamily: FontFamily.poppins,
                        ),
                      ),
                    ),
                    Gap(6.h),
                    Divider(color: ColorName.lightBackground3, thickness: 1),
                    Gap(5.h),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                'EXPERIENCE',
                                style: TextStyle(
                                  fontSize: 11,
                                  color: ColorName.black2.withAlpha(150),
                                  fontFamily: FontFamily.poppins,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Gap(2.h),
                              Text(
                                '8 Yrs',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: FontFamily.poppins,
                                  color: ColorName.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 1,
                          height: 42,
                          color: ColorName.lightBackground3,
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                'STUDENTS',
                                style: TextStyle(
                                  fontSize: 11,
                                  color: ColorName.black2.withAlpha(150),
                                  fontFamily: FontFamily.poppins,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Gap(3.h),
                              Text(
                                '120+',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: FontFamily.poppins,
                                  color: ColorName.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 1,
                          height: 42,
                          color: ColorName.lightBackground3,
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                'ID',
                                style: TextStyle(
                                  fontSize: 11,
                                  color: ColorName.black2.withAlpha(150),
                                  fontFamily: FontFamily.poppins,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Gap(3.h),
                              Text(
                                '#2024',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: FontFamily.poppins,
                                  color: ColorName.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Gap(24.h),
              Padding(
                padding: const EdgeInsets.only(left: 6),
                child: Text(
                  'Institute',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    fontFamily: FontFamily.poppins,
                    color: ColorName.black,
                  ),
                ),
              ),
              Gap(6.h),
              Container(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                decoration: BoxDecoration(
                  color: ColorName.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    const BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.05),
                      blurRadius: 24,
                      offset: Offset(0, 12),
                    ),
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 52,
                      height: 52,
                      decoration: BoxDecoration(
                        color: ColorName.blueColor.withAlpha(30),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: const Icon(
                        Icons.school,
                        color: ColorName.blueColor,
                        size: 26,
                      ),
                    ),
                    Gap(14.w),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sri Sai Angels School',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              fontFamily: FontFamily.poppins,
                              color: ColorName.black,
                            ),
                          ),
                          Gap(4.h),
                          Text(
                            'Main Campus, Block B',
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: FontFamily.poppins,
                              color: ColorName.black2.withAlpha(150),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Gap(24.h),
              Padding(
                padding: const EdgeInsets.only(left: 6),
                child: Text(
                  'App Features',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    fontFamily: FontFamily.poppins,
                    color: ColorName.black,
                  ),
                ),
              ),
              Gap(15.h),
              GridView.count(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: 4,
                crossAxisSpacing: 12.w,
                mainAxisSpacing: 12.h,
                childAspectRatio: 0.85,
                children: [
                  _buildFeatureTile(Icons.person_outline, 'My Details'),
                  _buildFeatureTile(Icons.description_outlined, 'Documents'),
                  _buildFeatureTile(
                      Icons.calendar_today_outlined, 'Attendance'),
                  _buildFeatureTile(Icons.beach_access_outlined, 'Leaves'),
                  _buildFeatureTile(Icons.schedule_outlined, 'Timetable'),
                  _buildFeatureTile(Icons.directions_bus_outlined, 'Transport'),
                  _buildFeatureTile(Icons.notifications_outlined, 'Alerts'),
                  _buildFeatureTile(Icons.insert_chart_outlined, 'Report Card'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFeatureTile(IconData icon, String label) {
    return SizedBox(
      width: 80,
      child: Column(
        children: [
          Container(
            width: 65,
            height: 65,
            decoration: BoxDecoration(
              color: ColorName.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                const BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.08),
                  blurRadius: 16,
                  offset: Offset(0, 8),
                ),
              ],
            ),
            child: Icon(icon, color: ColorName.blueColor, size: 28),
          ),
          Gap(10.h),
          Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 11,
              fontFamily: FontFamily.poppins,
              color: ColorName.black,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
