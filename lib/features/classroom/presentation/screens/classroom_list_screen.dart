import 'package:edu_connect/core/router/app_router.dart';
import 'package:edu_connect/core/shared/miscellaneous/app_extensions.dart';
import 'package:edu_connect/core/shared/miscellaneous/gap.dart';
import 'package:edu_connect/core/shared/widgets/app_bar.dart';
import 'package:edu_connect/gen/colors.gen.dart';
import 'package:edu_connect/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ClassroomListScreen extends HookConsumerWidget {
  const ClassroomListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: ColorName.white,
      appBar: const PrimaryAppBar(
        title: 'Classrooms',
        useHomeRouteOnBack: false,
      ),
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
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 10,
            separatorBuilder: (_, __) => Gap(15.h),
            itemBuilder: (context, index) {
              return _buildClassroomCard(
                  context, '10-C', 'Kannada', '32 Students');
            },
          ),
        ),
      ),
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
              color: ColorName.black.withAlpha(15),
              blurRadius: 16,
              offset: const Offset(1, 5),
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
