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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(26),
                decoration: BoxDecoration(
                  color: ColorName.white,
                  borderRadius: BorderRadius.circular(10),
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
                            width: 104,
                            height: 104,
                            decoration: BoxDecoration(
                              color: ColorName.blueColor2,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Container(
                            width: 98,
                            height: 98,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: ColorName.white,
                                width: 3.5,
                              ),
                            ),
                            child: ClipOval(
                              child: Assets.images.profileImage.image(
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            right: 0,
                            bottom: 0,
                            child: Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                color: ColorName.blueColor2,
                                border: Border.all(
                                    color: ColorName.white, width: 3),
                                borderRadius: BorderRadius.circular(55),
                              ),
                              child: Icon(
                                Icons.edit,
                                size: 14.sp,
                                color: ColorName.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Gap(15.h),
                    Center(
                      child: Text(
                        'V Geethanjali',
                        style: TextStyle(
                          fontSize: 17.5.sp,
                          fontWeight: FontWeight.w500,
                          fontFamily: FontFamily.poppins,
                          color: ColorName.black,
                        ),
                      ),
                    ),
                    Gap(5.h),
                    Center(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 4),
                        decoration: BoxDecoration(
                          color: ColorName.blueColor2.withAlpha(30),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          'TEACHER',
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                            fontFamily: FontFamily.poppins,
                            color: ColorName.blueColor2,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Gap(24.h),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(
                  'LINKED STUDENT',
                  style: TextStyle(
                    color: ColorName.blueColor2,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: FontFamily.poppins,
                  ),
                ),
              ),
              Gap(8.h),
              Container(
                width: double.maxFinite,
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: ColorName.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    const BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.05),
                      blurRadius: 24,
                      offset: Offset(0, 12),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Assets.images.profileImage.image(
                            width: 60,
                            height: 60,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Gap(12.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'V Geethanjali',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w500,
                                fontFamily: FontFamily.poppins,
                                color: ColorName.black,
                              ),
                            ),
                            Gap(4.h),
                            Row(
                              children: [
                                Icon(
                                  Icons.badge,
                                  size: 16.sp,
                                  color: ColorName.black.withAlpha(120),
                                ),
                                Gap(3.w),
                                Text(
                                  '#123456',
                                  style: TextStyle(
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: FontFamily.poppins,
                                    color: ColorName.black.withAlpha(150),
                                  ),
                                ),
                              ],
                            ),
                            Gap(2.h),
                            Row(
                              children: [
                                Icon(
                                  Icons.school,
                                  size: 16.sp,
                                  color: ColorName.black.withAlpha(120),
                                ),
                                Gap(3.w),
                                Text(
                                  'Class 10 - A',
                                  style: TextStyle(
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: FontFamily.poppins,
                                    color: ColorName.black.withAlpha(150),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Gap(12.h),
                    Container(
                      width: double.maxFinite,
                      height: 1,
                      color: ColorName.black.withAlpha(15),
                    ),
                    Gap(10.h),
                    GestureDetector(
                      child: Container(
                        width: double.maxFinite,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 11),
                        decoration: BoxDecoration(
                          color: ColorName.blueColor2.withAlpha(30),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.swap_horiz,
                              size: 24.sp,
                              color: ColorName.blueColor2,
                            ),
                            Gap(5.w),
                            Text(
                              'Switch Student',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                                fontFamily: FontFamily.poppins,
                                color: ColorName.blueColor2,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Gap(24.h),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(
                  'IDENTITY DETAILS',
                  style: TextStyle(
                    color: ColorName.blueColor2,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: FontFamily.poppins,
                  ),
                ),
              ),
              Gap(8.h),
              Container(
                width: double.maxFinite,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                decoration: BoxDecoration(
                  color: ColorName.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    const BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.05),
                      blurRadius: 24,
                      offset: Offset(0, 12),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    _buildAccountRow(
                      icon: Icons.badge,
                      title: 'ENROLLMENT ID',
                      subtitle: '1234FRT56',
                      showArrow: false,
                      onTap: () {},
                    ),
                    Divider(color: ColorName.lightBackground3, height: 1),
                    _buildAccountRow(
                      icon: Icons.school,
                      title: 'CLASS & SECTION',
                      subtitle: '1 - A',
                      showArrow: false,
                      onTap: () {},
                    ),
                    Divider(color: ColorName.lightBackground3, height: 1),
                    _buildAccountRow(
                      icon: Icons.history_edu,
                      title: 'ACADEMIC YEAR',
                      subtitle: '2025 - 2026',
                      showArrow: false,
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              Gap(24.h),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(
                  'CONTACT INFORMATION',
                  style: TextStyle(
                    color: ColorName.blueColor2,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: FontFamily.poppins,
                  ),
                ),
              ),
              Gap(8.h),
              Container(
                width: double.maxFinite,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                decoration: BoxDecoration(
                  color: ColorName.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    const BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.05),
                      blurRadius: 24,
                      offset: Offset(0, 12),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    _buildAccountRow(
                      icon: Icons.phone_android,
                      title: 'CONTACT NUMBER',
                      subtitle: '89787654321',
                      showArrow: false,
                      onTap: () {},
                    ),
                    Divider(color: ColorName.lightBackground3, height: 1),
                    _buildAccountRow(
                      icon: Icons.alternate_email,
                      title: 'EMAIL ADDRESS',
                      subtitle: 'demo123@gmail.com',
                      showArrow: false,
                      onTap: () {},
                    ),
                  ],
                ),
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
            child: Icon(icon, color: ColorName.blueColor, size: 30.sp),
          ),
          Gap(10.h),
          Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12.sp,
              fontFamily: FontFamily.poppins,
              color: ColorName.black,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAccountRow({
    required IconData icon,
    required String title,
    String? subtitle,
    String? statusLabel,
    Color? statusColor,
    Color? statusBackground,
    bool? showArrow = true,
    VoidCallback? onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 42,
              height: 42,
              decoration: BoxDecoration(
                color: ColorName.blueColor1.withAlpha(16),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(icon, color: ColorName.blueColor1, size: 25.sp),
            ),
            Gap(14.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      fontFamily: FontFamily.poppins,
                      color: ColorName.blueColor2,
                      letterSpacing: 0.5,
                    ),
                  ),
                  if (subtitle != null) ...[
                    Gap(1.h),
                    Text(
                      subtitle,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: ColorName.black.withAlpha(200),
                        fontSize: 15.5.sp,
                        fontWeight: FontWeight.w500,
                        fontFamily: FontFamily.poppins,
                      ),
                    ),
                  ],
                ],
              ),
            ),
            Gap(statusLabel == null ? 0 : 8.w),
            if (statusLabel != null)
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 4),
                decoration: BoxDecoration(
                  color: statusBackground ?? ColorName.lightBackground4,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  statusLabel,
                  style: TextStyle(
                    color: statusColor ?? ColorName.black,
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w500,
                    fontFamily: FontFamily.poppins,
                  ),
                ),
              ),
            if (showArrow == true) ...[
              Gap(6.w),
              Icon(Icons.arrow_forward_ios,
                  size: 17.sp, color: ColorName.borderColor),
            ]
          ],
        ),
      ),
    );
  }
}
