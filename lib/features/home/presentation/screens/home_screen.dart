import 'package:edu_connect/core/router/app_router.dart';
import 'package:edu_connect/core/shared/miscellaneous/app_extensions.dart';
import 'package:edu_connect/core/shared/miscellaneous/gap.dart';
import 'package:edu_connect/core/shared/widgets/app_bar.dart';
import 'package:edu_connect/features/auth/presentation/providers/auth_provider.dart';
import 'package:edu_connect/features/home/presentation/providers/schedule_classes_provider.dart';
import 'package:edu_connect/features/time-table/domain/models/schedule_classes_model.dart';
import 'package:edu_connect/gen/colors.gen.dart';
import 'package:edu_connect/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todayScheduleAsync =
        ref.watch(getScheduleClassesProvider(intent: 'today'));
    final savedUserInfoAsync = ref.watch(savedUserInfoProvider);

    return Scaffold(
      backgroundColor: ColorName.lightBackground4,
      appBar: const HomeAppBar(),
      // floatingActionButton: Container(
      //   width: 56,
      //   height: 56,
      //   decoration: BoxDecoration(
      //     borderRadius: BorderRadius.circular(20),
      //     gradient: const LinearGradient(
      //       colors: [
      //         ColorName.blueColor,
      //         ColorName.blueColor1,
      //       ],
      //     ),
      //     boxShadow: const [
      //       BoxShadow(
      //         color: Color.fromRGBO(0, 0, 0, 0.2),
      //         blurRadius: 10,
      //         offset: Offset(0, 4),
      //       ),
      //     ],
      //   ),
      //   child: Material(
      //     color: Colors.transparent,
      //     child: InkWell(
      //       borderRadius: BorderRadius.circular(16),
      //       onTap: () => CreateClassRoomRoute().push(context),
      //       child: Center(
      //         child: Icon(
      //           Icons.add,
      //           color: Colors.white,
      //           size: 30.sp,
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                width: double.maxFinite,
                padding: EdgeInsets.all(12.sp),
                decoration: BoxDecoration(
                    color: ColorName.themeColor.withAlpha(15),
                    borderRadius: BorderRadius.circular(10),
                    border:
                        Border.all(color: ColorName.borderColor.withAlpha(80))),
                child: Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: ColorName.themeColor.withAlpha(30),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(Icons.school,
                          color: ColorName.blueColor2, size: 24.sp),
                    ),
                    Gap(12.w),
                    Expanded(
                      child: Builder(
                        builder: (context) {
                          final userType = savedUserInfoAsync
                              .asData?.value?.type
                              ?.toLowerCase();
                          final classValue =
                              todayScheduleAsync.asData?.value?.classRoom ??
                                  '-';

                          String statusText = 'Loading...';

                          if (userType == 'teacher') {
                            statusText =
                                'You are the class teacher of ${todayScheduleAsync.asData?.value?.classTeacher ?? '-'}';
                          } else if (userType == 'student') {
                            statusText =
                                'You are student of class: $classValue';
                          } else if (userType == 'guardian') {
                            statusText =
                                'Your student is in class: $classValue';
                          }

                          return Text(
                            statusText,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: ColorName.blueColor2,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              fontFamily: FontFamily.poppins,
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Gap(24.h),
              _buildScheduleCard(context),
              Gap(30.h),
              _buildTodayScheduleCard(
                context,
                scheduledClasses:
                    todayScheduleAsync.asData?.value?.scheduledClasses ?? [],
                isTeacher:
                    savedUserInfoAsync.asData?.value?.type?.toLowerCase() ==
                        'teacher',
              ),
              Gap(30.h),
              _buildAttendanceTrendsCard(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildScheduleCard(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: ColorName.themeColor.withAlpha(30),
                borderRadius: BorderRadius.circular(14),
              ),
              child: Icon(
                Icons.podcasts,
                color: ColorName.blueColor2,
                size: 23.sp,
              ),
            ),
            Gap(10.w),
            Expanded(
              child: Text(
                'Ongoing Class',
                style: TextStyle(
                  color: ColorName.black,
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w600,
                  fontFamily: FontFamily.poppins,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 4, 13, 4),
              decoration: BoxDecoration(
                color: ColorName.greenColor.withAlpha(30),
                borderRadius: BorderRadius.circular(999),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: ColorName.greenColor,
                      shape: BoxShape.circle,
                    ),
                  ),
                  Gap(6.w),
                  Text(
                    'LIVE',
                    style: TextStyle(
                      color: ColorName.greenColor,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700,
                      fontFamily: FontFamily.poppins,
                      letterSpacing: 0.6,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Gap(12.h),
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: ColorName.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: ColorName.black.withAlpha(20),
                blurRadius: 16,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
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
                          ColorName.blueColor2,
                        ],
                      ),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Center(
                      child: Text(
                        '1-A',
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
                          'Kannada',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: ColorName.black,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600,
                            fontFamily: FontFamily.poppins,
                          ),
                        ),
                        Gap(3.h),
                        Text(
                          'Literary Arts Phase 1',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: ColorName.black2,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            fontFamily: FontFamily.poppins,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '10:30 AM',
                        style: TextStyle(
                          color: ColorName.blueColor1,
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w600,
                          fontFamily: FontFamily.poppins,
                        ),
                      ),
                      Gap(2.h),
                      Text(
                        '- 11:45 AM',
                        style: TextStyle(
                          color: ColorName.black2,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          fontFamily: FontFamily.poppins,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Gap(15.h),
              Divider(
                height: 1,
                thickness: 1,
                color: ColorName.borderColor.withAlpha(150),
              ),
              Gap(16.h),
              Row(
                children: [
                  Icon(
                    Icons.groups,
                    size: 23.sp,
                    color: ColorName.black2,
                  ),
                  Gap(6.w),
                  Expanded(
                    child: Text(
                      '32 STUDENTS',
                      style: TextStyle(
                        color: ColorName.black2,
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w600,
                        fontFamily: FontFamily.poppins,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.16),
                          blurRadius: 14,
                          offset: Offset(0, 8),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ElevatedButton(
                      onPressed: () => ClassRoomDetailsRoute().push(context),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: ColorName.blueColor2,
                        foregroundColor: ColorName.white,
                        shadowColor: Colors.transparent,
                        elevation: 0,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24,
                          vertical: 11,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        'Enter Classroom',
                        style: TextStyle(
                          color: ColorName.white,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                          fontFamily: FontFamily.poppins,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildTodayScheduleCard(
    BuildContext context, {
    required List<ClassItem> scheduledClasses,
    required bool isTeacher,
  }) {
    final visibleClasses = scheduledClasses.take(3).toList();

    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: ColorName.themeColor.withAlpha(30),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Icon(
                      Icons.today,
                      color: ColorName.blueColor2,
                      size: 23.sp,
                    ),
                  ),
                  Gap(10.w),
                  Text(
                    'Today\'s Schedule',
                    style: TextStyle(
                      color: ColorName.black,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w600,
                      fontFamily: FontFamily.poppins,
                    ),
                  ),
                ],
              ),
            ),
            if (scheduledClasses.length > 3)
              GestureDetector(
                onTap: () => _showTodayScheduleBottomSheet(
                  context,
                  scheduledClasses: scheduledClasses,
                  isTeacher: isTeacher,
                ),
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
        ),
        Gap(12.h),
        if (scheduledClasses.isEmpty)
          Padding(
            padding: EdgeInsets.symmetric(vertical: 24.h),
            child: Text(
              'No classes scheduled for today',
              style: TextStyle(
                color: ColorName.black2,
                fontSize: 14.sp,
                fontFamily: FontFamily.poppins,
              ),
            ),
          )
        else
          Column(
            children: [
              for (int i = 0; i < visibleClasses.length; i++) ...[
                _buildClassroomCard(
                  context,
                  slot: visibleClasses[i],
                  isTeacher: isTeacher,
                ),
                if (i < visibleClasses.length - 1) Gap(12.h),
              ],
            ],
          ),
      ],
    );
  }

  void _showTodayScheduleBottomSheet(
    BuildContext context, {
    required List<ClassItem> scheduledClasses,
    required bool isTeacher,
  }) {
    showModalBottomSheet<void>(
      context: context,
      useRootNavigator: true,
      isScrollControlled: true,
      backgroundColor: ColorName.lightBackground4,
      builder: (sheetContext) {
        return FractionallySizedBox(
          heightFactor: 0.7,
          widthFactor: 1,
          child: Container(
            padding: const EdgeInsets.fromLTRB(16, 10, 16, 16),
            decoration: const BoxDecoration(
              color: ColorName.lightBackground4,
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ),
            child: Column(
              children: [
                Container(
                  width: 90,
                  height: 4,
                  decoration: BoxDecoration(
                    color: ColorName.borderColor,
                    borderRadius: BorderRadius.circular(999),
                  ),
                ),
                Gap(15.h),
                Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: ColorName.themeColor.withAlpha(30),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Icon(
                        Icons.today,
                        color: ColorName.blueColor2,
                        size: 23.sp,
                      ),
                    ),
                    Gap(10.w),
                    Row(
                      children: [
                        Text(
                          'Today\'s Schedule',
                          style: TextStyle(
                            color: ColorName.black,
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w600,
                            fontFamily: FontFamily.poppins,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Text(
                      '${scheduledClasses.length} Classes',
                      style: TextStyle(
                        color: ColorName.black2,
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w500,
                        fontFamily: FontFamily.poppins,
                      ),
                    ),
                  ],
                ),
                Gap(12.h),
                Expanded(
                  child: ListView.separated(
                    physics: const BouncingScrollPhysics(),
                    itemCount: scheduledClasses.length,
                    separatorBuilder: (_, __) => Gap(12.h),
                    itemBuilder: (context, index) {
                      return _buildClassroomCard(
                        context,
                        slot: scheduledClasses[index],
                        isTeacher: isTeacher,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildClassroomCard(
    BuildContext context, {
    required ClassItem slot,
    required bool isTeacher,
  }) {
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
                    ColorName.blueColor2,
                  ],
                ),
                borderRadius: BorderRadius.circular(14),
              ),
              child: Center(
                child: isTeacher
                    ? Text(
                        '${slot.className ?? '-'}-${slot.section ?? '-'}',
                        maxLines: 2,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: ColorName.white.withAlpha(245),
                          fontSize: 15.5.sp,
                          fontWeight: FontWeight.w600,
                          fontFamily: FontFamily.poppins,
                        ),
                      )
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '${slot.period ?? '-'}',
                            style: TextStyle(
                              color: ColorName.white.withAlpha(245),
                              fontSize: 18.sp,
                              height: 1,
                              fontWeight: FontWeight.w600,
                              fontFamily: FontFamily.poppins,
                            ),
                          ),
                          Gap(1.h),
                          Text(
                            'Period',
                            style: TextStyle(
                              color: ColorName.white.withAlpha(245),
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w500,
                              fontFamily: FontFamily.poppins,
                            ),
                          )
                        ],
                      ),
              ),
            ),
            Gap(16.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    slot.subject ?? 'Subject unavailable',
                    style: TextStyle(
                      color: ColorName.black,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w500,
                      fontFamily: FontFamily.poppins,
                    ),
                  ),
                  Gap(4.h),
                  Row(
                    children: [
                      Icon(
                        Icons.access_time,
                        color: ColorName.black2,
                        size: 17.sp,
                      ),
                      Gap(3.w),
                      Expanded(
                        child: Text(
                          slot.time ?? 'Time unavailable',
                          style: TextStyle(
                            color: ColorName.black2,
                            fontSize: 14.sp,
                            fontFamily: FontFamily.poppins,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            if (isTeacher) ...[
              Gap(10.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.groups,
                        color: ColorName.blueColor1,
                        size: 24.sp,
                      ),
                      Gap(4.w),
                      Text(
                        slot.studentNo?.toString() ?? '-',
                        style: TextStyle(
                          color: ColorName.blueColor1,
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w600,
                          fontFamily: FontFamily.poppins,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'student${slot.studentNo == 1 ? '' : 's'}',
                    style: TextStyle(
                      color: ColorName.black2.withAlpha(190),
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w400,
                      fontFamily: FontFamily.poppins,
                    ),
                  ),
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildAttendanceTrendsCard(BuildContext context) {
    const summary = _AttendanceSummary(
      startDateLabel: 'Oct 01',
      endDateLabel: 'Oct 31, 2023',
      attendedDays: 22,
      workingDays: 24,
      todayStatus: 'Not Marked',
    );
    final absentDays = summary.workingDays - summary.attendedDays;
    final attendanceRatio = summary.attendedDays / summary.workingDays;

    final todayStatusColor = switch (summary.todayStatus.toLowerCase()) {
      'present' => const Color(0xFF34D399),
      'absent' => const Color(0xFFF97373),
      _ => const Color(0xFFFBBF24),
    };
    final todayStatusIcon = switch (summary.todayStatus.toLowerCase()) {
      'present' => Icons.check_circle_outline,
      'absent' => Icons.highlight_off,
      _ => Icons.pending_outlined,
    };

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: ColorName.themeColor.withAlpha(30),
                borderRadius: BorderRadius.circular(14),
              ),
              child: Icon(
                Icons.pie_chart,
                color: ColorName.blueColor2,
                size: 23.sp,
              ),
            ),
            Gap(10.w),
            Expanded(
              child: Text(
                'My Attendance',
                style: TextStyle(
                  color: ColorName.black,
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w600,
                  fontFamily: FontFamily.poppins,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.filter_list,
                    size: 20.sp,
                    color: ColorName.blueColor1,
                  ),
                  Gap(4.w),
                  Text(
                    'Filter by date',
                    style: TextStyle(
                      color: ColorName.blueColor1,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      fontFamily: FontFamily.poppins,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Gap(12.h),
        Container(
          padding: const EdgeInsets.all(18),
          decoration: BoxDecoration(
            color: const Color(0xFF0F172A),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${summary.startDateLabel} - ${summary.endDateLabel}',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: const Color(0xFF8B97B6),
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w600,
                  fontFamily: FontFamily.poppins,
                  letterSpacing: 0.3,
                ),
              ),
              Gap(5.h),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Row(
                  children: [
                    SizedBox(
                      width: 132,
                      height: 132,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          SizedBox(
                            width: 132,
                            height: 132,
                            child: CircularProgressIndicator(
                              value: 1,
                              strokeWidth: 14,
                              valueColor: const AlwaysStoppedAnimation<Color>(
                                Color(0xFF1A2945),
                              ),
                              backgroundColor: Colors.transparent,
                            ),
                          ),
                          SizedBox(
                            width: 132,
                            height: 132,
                            child: CircularProgressIndicator(
                              value: attendanceRatio,
                              strokeWidth: 14,
                              strokeCap: StrokeCap.round,
                              valueColor: const AlwaysStoppedAnimation<Color>(
                                Color(0xFF4DA3FF),
                              ),
                              backgroundColor: Colors.transparent,
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                '${(attendanceRatio * 100).toStringAsFixed(1)}%',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24.sp,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: FontFamily.poppins,
                                ),
                              ),
                              Text(
                                'Present',
                                style: TextStyle(
                                  color: const Color(0xFF8B97B6),
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: FontFamily.poppins,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Gap(25.w),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildAttendanceMetricTile(
                            title: 'Working Days',
                            value: '${summary.workingDays}',
                            accentColor: const Color(0xFF5B8CFF),
                            icon: Icons.calendar_month,
                          ),
                          Gap(12.h),
                          _buildAttendanceMetricTile(
                            title: 'Days Attended',
                            value: '${summary.attendedDays}',
                            accentColor: const Color(0xFF3EE18C),
                            icon: Icons.check_circle_outline,
                          ),
                          Gap(12.h),
                          _buildAttendanceMetricTile(
                            title: 'Days Absent',
                            value: '$absentDays',
                            accentColor: const Color(0xFFFF8A65),
                            icon: Icons.highlight_off,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Gap(18.h),
              Divider(
                height: 1,
                thickness: 1,
                color: const Color(0xFF24314A),
              ),
              Gap(16.h),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'TODAY\'S STATUS',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            fontFamily: FontFamily.poppins,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    decoration: BoxDecoration(
                      color: const Color(0xFF1B2942),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: todayStatusColor.withAlpha(90)),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          todayStatusIcon,
                          size: 17,
                          color: todayStatusColor,
                        ),
                        Gap(6.w),
                        Text(
                          summary.todayStatus,
                          style: TextStyle(
                            color: todayStatusColor,
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w700,
                            fontFamily: FontFamily.poppins,
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
      ],
    );
  }

  Widget _buildAttendanceMetricTile({
    required String title,
    required String value,
    required Color accentColor,
    required IconData icon,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      decoration: BoxDecoration(
        color: const Color(0xFF18243B),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          Container(
            width: 38,
            height: 38,
            decoration: BoxDecoration(
              color: accentColor.withAlpha(28),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: accentColor, size: 20),
          ),
          Gap(12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: const Color(0xFF8B97B6),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    fontFamily: FontFamily.poppins,
                  ),
                ),
                Gap(2.h),
                Text(
                  value,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: FontFamily.poppins,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _AttendanceSummary {
  const _AttendanceSummary({
    required this.startDateLabel,
    required this.endDateLabel,
    required this.attendedDays,
    required this.workingDays,
    required this.todayStatus,
  });

  final String startDateLabel;
  final String endDateLabel;
  final int attendedDays;
  final int workingDays;
  final String todayStatus;
}
