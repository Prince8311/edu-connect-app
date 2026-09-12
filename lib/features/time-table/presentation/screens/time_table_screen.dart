import 'package:edu_connect/core/router/app_router.dart';
import 'package:edu_connect/core/shared/miscellaneous/app_extensions.dart';
import 'package:edu_connect/core/shared/miscellaneous/gap.dart';
import 'package:edu_connect/core/shared/widgets/app_bar.dart';
import 'package:edu_connect/core/shared/widgets/loader.dart';
import 'package:edu_connect/features/auth/presentation/providers/auth_provider.dart';
import 'package:edu_connect/features/home/presentation/providers/schedule_classes_provider.dart';
import 'package:edu_connect/features/time-table/domain/models/schedule_classes_model.dart';
import 'package:edu_connect/gen/assets.gen.dart';
import 'package:edu_connect/gen/colors.gen.dart';
import 'package:edu_connect/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lottie/lottie.dart';

class TimeTableScreen extends HookConsumerWidget {
  const TimeTableScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scheduleAsync =
        ref.watch(getScheduleClassesProvider(intent: 'weekly'));
    final savedUserInfoAsync = ref.watch(savedUserInfoProvider);
    final bool isTeacher =
        savedUserInfoAsync.asData?.value?.type?.toLowerCase() == 'teacher';
    final double screenWidth = MediaQuery.sizeOf(context).width;
    final double cardWidth = screenWidth * 0.78;

    return Scaffold(
      backgroundColor: ColorName.lightBackground4,
      appBar: const PrimaryAppBar(
        title: 'Time Table',
      ),
      body: SafeArea(
        top: false,
        child: scheduleAsync.when(
          loading: () => _ScreenLoadingCard(),
          error: (error, stackTrace) => Center(
            child: Text(
              'Unable to load timetable',
              style: TextStyle(
                color: ColorName.black2,
                fontSize: 15.sp,
                fontFamily: FontFamily.poppins,
              ),
            ),
          ),
          data: (response) {
            final weeklyDays = response?.weeklyScheduledClasses ?? [];

            return SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Column(
                children: [
                  _BreakTimeCard(
                    breakTime: response?.breakTime,
                    classRoom: response?.classRoom,
                  ),
                  Gap(30.h),
                  if (weeklyDays.isEmpty)
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 36.h),
                      child: Column(
                        children: [
                          Lottie.asset(
                            Assets.animations.searchNotFound,
                            width: 220.w,
                            height: 220.h,
                          ),
                          Text(
                            'No weekly schedule available',
                            style: TextStyle(
                              color: ColorName.black2,
                              fontSize: 15.sp,
                              fontFamily: FontFamily.poppins,
                            ),
                          ),
                        ],
                      ),
                    )
                  else
                    Column(
                      children: [
                        for (int index = 0; index < weeklyDays.length; index++)
                          Padding(
                            padding: EdgeInsets.only(
                              bottom: index == weeklyDays.length - 1 ? 0 : 12.h,
                            ),
                            child: _TimeTableDaySection(
                              day: weeklyDays[index],
                              cardWidth: cardWidth,
                              isTeacher: isTeacher,
                            ),
                          ),
                      ],
                    ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class _ScreenLoadingCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        children: [
          SkeletonLoader(
            height: 80.h,
            width: double.maxFinite,
          ),
          Gap(30.h),
          Column(
            children: [
              for (int index = 0; index < 5; index++)
                Padding(
                  padding: EdgeInsets.only(
                    bottom: index == 4 ? 0 : 12.h,
                  ),
                  child: Container(
                    width: double.maxFinite,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SkeletonLoader(
                          height: 37.h,
                          width: 120.w,
                        ),
                        Gap(10.h),
                        SizedBox(
                          height: 150.h,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            padding: EdgeInsets.zero,
                            itemCount: 3,
                            separatorBuilder: (_, __) => Gap(12.w),
                            itemBuilder: (BuildContext context, int slotIndex) {
                              return SizedBox(
                                width: 250.w,
                                child: Padding(
                                  padding: EdgeInsets.only(bottom: 14.h),
                                  child: SkeletonLoader(
                                    height: 150.h,
                                    width: double.maxFinite,
                                  ),
                                ),
                              );
                            },
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
    );
  }
}

class _BreakTimeCard extends StatelessWidget {
  const _BreakTimeCard({
    required this.breakTime,
    required this.classRoom,
  });

  final String? breakTime;
  final String? classRoom;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(12.sp),
      decoration: BoxDecoration(
        color: ColorName.themeColor.withAlpha(15),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: ColorName.borderColor.withAlpha(80)),
      ),
      child: Row(
        children: [
          Container(
            width: 37,
            height: 37,
            decoration: BoxDecoration(
              color: ColorName.themeColor.withAlpha(30),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(
              Icons.room_service,
              color: ColorName.blueColor2,
              size: 22.sp,
            ),
          ),
          Gap(12.w),
          Expanded(
            child: Text(
              breakTime == null || breakTime!.trim().isEmpty
                  ? 'No break time available'
                  : 'Mid day break time is $breakTime',
              style: TextStyle(
                color: ColorName.blueColor2,
                fontSize: 15.sp,
                fontWeight: FontWeight.w500,
                fontFamily: FontFamily.poppins,
              ),
            ),
          ),
          if (classRoom != null && classRoom!.trim().isNotEmpty) ...[
            Gap(10.w),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
              decoration: BoxDecoration(
                color: ColorName.white,
                borderRadius: BorderRadius.circular(999),
                border: Border.all(color: ColorName.borderColor.withAlpha(90)),
              ),
              child: Text(
                classRoom!,
                style: TextStyle(
                  color: ColorName.black2,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  fontFamily: FontFamily.poppins,
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class _TimeTableDaySection extends StatelessWidget {
  const _TimeTableDaySection({
    required this.day,
    required this.cardWidth,
    required this.isTeacher,
  });

  final WeeklyScheduleItem day;
  final double cardWidth;
  final bool isTeacher;

  @override
  Widget build(BuildContext context) {
    final classCount = day.classes?.length ?? 0;

    return Container(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 37,
                height: 37,
                decoration: BoxDecoration(
                  color: ColorName.themeColor.withAlpha(30),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  Icons.event,
                  color: ColorName.blueColor2,
                  size: 22.sp,
                ),
              ),
              Gap(12.w),
              Text(
                day.day ?? 'Unknown day',
                style: TextStyle(
                  color: ColorName.black.withAlpha(200),
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w600,
                  fontFamily: FontFamily.poppins,
                ),
              ),
              Spacer(),
              if (classCount > 0) ...[
                Gap(8.w),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    color: ColorName.white,
                    borderRadius: BorderRadius.circular(999),
                    border:
                        Border.all(color: ColorName.borderColor.withAlpha(90)),
                  ),
                  child: Text(
                    '$classCount class${classCount == 1 ? '' : 'es'}',
                    style: TextStyle(
                      color: ColorName.black2,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      fontFamily: FontFamily.poppins,
                    ),
                  ),
                ),
              ],
            ],
          ),
          Gap(10.h),
          SizedBox(
            height: 150.h,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.zero,
              itemCount: day.classes?.length ?? 0,
              separatorBuilder: (_, __) => Gap(12.w),
              itemBuilder: (BuildContext context, int slotIndex) {
                final ClassItem slot = day.classes![slotIndex];
                final String bottomLabel = isTeacher
                    ? (slot.studentNo == null
                        ? 'Student count unavailable'
                        : '${slot.studentNo} student${slot.studentNo == 1 ? '' : 's'}')
                    : (slot.teacher ?? 'Teacher unavailable');
                return SizedBox(
                  width: cardWidth,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 14.h),
                    child: GestureDetector(
                      onTap: slot.id == null
                          ? null
                          : () =>
                              ClassRoomDetailsRoute(id: slot.id!).push(context),
                      child: Container(
                        padding: const EdgeInsets.all(14),
                        decoration: BoxDecoration(
                          color: ColorName.white,
                          border: Border.all(
                            color: ColorName.borderColor.withAlpha(125),
                          ),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: ColorName.black.withAlpha(20),
                              blurRadius: 8,
                              offset: const Offset(4, 5),
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Row(
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
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Center(
                                    child: isTeacher
                                        ? Text(
                                            '${slot.className ?? '-'}-${slot.section ?? '-'}',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: ColorName.white
                                                  .withAlpha(245),
                                              fontSize:
                                                  isTeacher ? 15.5.sp : 16.sp,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: FontFamily.poppins,
                                            ),
                                          )
                                        : Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                '${slot.period ?? '-'}',
                                                style: TextStyle(
                                                  color: ColorName.white
                                                      .withAlpha(245),
                                                  fontSize: 18.sp,
                                                  height: 1,
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily:
                                                      FontFamily.poppins,
                                                ),
                                              ),
                                              Gap(1.h),
                                              Text(
                                                'Period',
                                                style: TextStyle(
                                                  color: ColorName.white
                                                      .withAlpha(245),
                                                  fontSize: 11.sp,
                                                  fontWeight: FontWeight.w500,
                                                  fontFamily:
                                                      FontFamily.poppins,
                                                ),
                                              )
                                            ],
                                          ),
                                  ),
                                ),
                                Gap(16.w),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        slot.subject ?? 'Subject unavailable',
                                        style: TextStyle(
                                          color: ColorName.black,
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: FontFamily.poppins,
                                        ),
                                      ),
                                      Gap(3.h),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.access_time,
                                            color: ColorName.black2,
                                            size: 17.sp,
                                          ),
                                          Gap(2.w),
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
                              ],
                            ),
                            Gap(10.h),
                            Container(
                              width: double.maxFinite,
                              height: 1,
                              color: ColorName.borderColor.withAlpha(125),
                            ),
                            Gap(8.h),
                            Row(
                              children: [
                                Icon(
                                  isTeacher ? Icons.groups : Icons.person,
                                  color: ColorName.black2,
                                  size: 17.sp,
                                ),
                                Gap(4.w),
                                Expanded(
                                  child: Text(
                                    bottomLabel,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
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
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
