import 'package:edu_connect/features/profile/presentation/widgets/switch_student_sheet.dart';
import 'dart:async';
import 'package:edu_connect/core/api/end_points.dart';
import 'package:edu_connect/features/auth/presentation/providers/auth_provider.dart';
import 'package:edu_connect/features/profile/domain/models/profile_model.dart';
import 'package:edu_connect/features/profile/presentation/providers/profile_provider.dart';
import 'package:edu_connect/features/profile/presentation/widgets/profile_loading.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:edu_connect/features/profile/presentation/widgets/profile_settings_sections.dart';
import 'package:edu_connect/core/shared/miscellaneous/app_extensions.dart';
import 'package:edu_connect/core/shared/miscellaneous/gap.dart';
import 'package:edu_connect/core/shared/widgets/app_bar.dart';
import 'package:edu_connect/gen/assets.gen.dart';
import 'package:edu_connect/gen/colors.gen.dart';
import 'package:edu_connect/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProfileScreen extends HookConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userAsync = ref.watch(userDetailsNotifierProvider);
    final savedUserAsync = ref.watch(savedUserInfoProvider);
    final requestingContact = useState<bool?>(null);
    void openOTPVerifyDrawer({required String value, required bool isMail}) {
      final controllers = List.generate(6, (index) => TextEditingController());
      final focusNodes = List.generate(6, (index) => FocusNode());

      bool isVerifyLoading = false;
      int secondsRemaining = 90;
      Timer? timer;
      bool isDisposed = false;

      String maskValue(String value) {
        if (value.contains('@')) {
          final parts = value.split('@');
          final name = parts[0];
          if (name.isEmpty) return value;
          final domain = parts[1];

          if (name.length <= 3) {
            return '${name[0]}***@$domain';
          }
          return '${name.substring(0, 3)}***@$domain';
        } else {
          if (value.length <= 4) return value;

          final last4 = value.substring(value.length - 4);
          return '${'*' * (value.length - 4)}$last4';
        }
      }

      showModalBottomSheet(
        context: context,
        useRootNavigator: true,
        isScrollControlled: true,
        backgroundColor: ColorName.white,
        builder: (ctx) {
          return StatefulBuilder(
            builder: (context, setState) {
              void startTimer() {
                timer?.cancel();
                secondsRemaining = 90;

                timer = Timer.periodic(const Duration(seconds: 1), (t) {
                  if (secondsRemaining == 0) {
                    t.cancel();
                  } else {
                    if (!isDisposed) {
                      setState(() {
                        secondsRemaining--;
                      });
                    }
                  }
                });
              }

              if (timer == null) {
                startTimer();
              }

              bool isOtpComplete() {
                return controllers.every((c) => c.text.isNotEmpty);
              }

              return PopScope(
                onPopInvokedWithResult: (didPop, result) {
                  if (didPop) {
                    timer?.cancel();
                    isDisposed = true;
                  }
                },
                child: Padding(
                  padding: EdgeInsets.only(
                    bottom: MediaQuery.of(ctx).viewInsets.bottom,
                  ),
                  child: FractionallySizedBox(
                    heightFactor: 0.42,
                    widthFactor: 1,
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(20, 5, 20, 20),
                      child: Column(
                        children: [
                          Container(
                            width: 100,
                            height: 5,
                            margin: const EdgeInsets.only(top: 10, bottom: 10),
                            decoration: BoxDecoration(
                              color: ColorName.black3.withAlpha(120),
                              borderRadius: BorderRadius.circular(6),
                            ),
                          ),

                          Gap(25.h),

                          /// OTP TEXT
                          Text.rich(
                            TextSpan(
                              text: "We have sent an OTP to ",
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: ColorName.black1,
                                fontFamily: FontFamily.poppins,
                              ),
                              children: [
                                TextSpan(
                                  text: maskValue(value.trim()),
                                  style: TextStyle(
                                    color: ColorName.black,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: FontFamily.poppins,
                                  ),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),

                          Gap(16.h),

                          /// OTP INPUTS
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: List.generate(6, (index) {
                              return SizedBox(
                                width: 45,
                                height: 45,
                                child: TextField(
                                  controller: controllers[index],
                                  focusNode: focusNodes[index],
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.digitsOnly
                                  ],
                                  textAlign: TextAlign.center,
                                  maxLength: 1,
                                  cursorColor: ColorName.black,
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: FontFamily.poppins,
                                  ),
                                  decoration: InputDecoration(
                                    counterText: "",
                                    contentPadding: EdgeInsets.zero,
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      borderSide: const BorderSide(
                                        color: ColorName.borderColor,
                                        width: 1.2,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      borderSide: const BorderSide(
                                        color: ColorName.blueColor,
                                        width: 1.3,
                                      ),
                                    ),
                                  ),
                                  onChanged: (val) {
                                    if (val.isNotEmpty && index < 5) {
                                      FocusScope.of(ctx)
                                          .requestFocus(focusNodes[index + 1]);
                                    }
                                    if (val.isEmpty && index > 0) {
                                      FocusScope.of(ctx)
                                          .requestFocus(focusNodes[index - 1]);
                                    }
                                    setState(() {});
                                  },
                                ),
                              );
                            }),
                          ),

                          Gap(10.h),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              secondsRemaining > 0
                                  ? Text(
                                      "Resend OTP in ${secondsRemaining}s",
                                      style: TextStyle(
                                        fontSize: 13.sp,
                                        color: ColorName.black2,
                                        fontFamily: FontFamily.poppins,
                                      ),
                                    )
                                  : GestureDetector(
                                      onTap: () async {
                                        final result = await ref.read(
                                            sendVerificationOtpProvider(
                                                    requestBody: OtpResquest(
                                                        name: value))
                                                .future);
                                        if (!isDisposed &&
                                            context.mounted &&
                                            result == true) {
                                          setState(startTimer);
                                        }
                                      },
                                      child: Text(
                                        "Resend OTP",
                                        style: TextStyle(
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.w500,
                                          color: ColorName.blueColor,
                                          fontFamily: FontFamily.poppins,
                                        ),
                                      ),
                                    ),
                            ],
                          ),

                          const Spacer(),

                          SizedBox(
                            width: double.maxFinite,
                            height: 45,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    (isOtpComplete() && !isVerifyLoading)
                                        ? ColorName.blueColor1
                                        : ColorName.lightBackground2,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              onPressed: (isOtpComplete() && !isVerifyLoading)
                                  ? () async {
                                      setState(() => isVerifyLoading = true);
                                      final request = OtpVerifyResquest(
                                        name: value,
                                        otp: controllers
                                            .map((c) => c.text)
                                            .join(),
                                      );
                                      final result = await ref.read(
                                          verifyOtpProvider(
                                                  requestBody: request)
                                              .future);
                                      if (isDisposed || !context.mounted)
                                        return;
                                      setState(() => isVerifyLoading = false);
                                      if (result == true) {
                                        if (isMail) {
                                          ref
                                              .read(userDetailsNotifierProvider
                                                  .notifier)
                                              .updateEmailVerified(true);
                                        } else {
                                          ref
                                              .read(userDetailsNotifierProvider
                                                  .notifier)
                                              .updatePhoneVerified(true);
                                        }
                                        context.pop();
                                      }
                                    }
                                  : null,
                              child: isVerifyLoading
                                  ? SpinKitThreeBounce(
                                      color: Colors.white,
                                      size: 20.sp,
                                    )
                                  : Text(
                                      'Verify OTP',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        },
      ).whenComplete(() {
        timer?.cancel();
        isDisposed = true;
      });
    }

    Future<void> verifyContact(
        String? value, bool isMail, bool verified) async {
      if (requestingContact.value != null ||
          verified ||
          value == null ||
          value.trim().isEmpty) return;
      requestingContact.value = isMail;
      try {
        final result = await ref.read(sendVerificationOtpProvider(
          requestBody: OtpResquest(name: value),
        ).future);
        if (context.mounted && result == true) {
          openOTPVerifyDrawer(value: value, isMail: isMail);
        }
      } catch (_) {
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
                content: Text('Unable to send OTP. Please try again.')),
          );
        }
      } finally {
        if (context.mounted) requestingContact.value = null;
      }
    }

    return Scaffold(
      backgroundColor: ColorName.lightBackground4,
      appBar: const PrimaryAppBar(title: 'Profile'),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: userAsync.when(
            loading: () => const ProfileLoading(),
            error: (error, stack) => _buildLoadError(ref),
            data: (data) {
              if (data == null) return _buildLoadError(ref);
              if (savedUserAsync.isLoading) return const ProfileLoading();
              final type =
                  (savedUserAsync.asData?.value?.type ?? data.userType ?? '')
                      .trim()
                      .toLowerCase();
              final isStudent = type == 'student';
              final isTeacher = type == 'teacher';
              final isGuardian = type == 'guardian';
              final roleColor = isStudent
                  ? ColorName.greenColor
                  : isGuardian
                      ? ColorName.orangeColor
                      : ColorName.blueColor2;
              return Column(
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
                                  child: _profileImage(data.profileImage, type),
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
                                    size: 16.sp,
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
                            _display(data.name),
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
                              color: roleColor.withAlpha(30),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              type.toUpperCase(),
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600,
                                fontFamily: FontFamily.poppins,
                                color: roleColor,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (isGuardian || isStudent) ...[
                    Gap(24.h),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        isGuardian ? 'LINKED STUDENT' : 'GUARDIAN DETAILS',
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
                                child: _profileImage(
                                    isGuardian
                                        ? data.student?.profileImage
                                        : data.guardian?.profileImage,
                                    isGuardian ? 'student' : 'guardian',
                                    size: 60),
                              ),
                              Gap(12.w),
                              Expanded(
                                  child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    _display(isGuardian
                                        ? data.student?.name
                                        : data.guardian?.name),
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
                                        isGuardian
                                            ? Icons.badge
                                            : Icons.alternate_email,
                                        size: 16.sp,
                                        color: ColorName.blueColor1,
                                      ),
                                      Gap(3.w),
                                      Expanded(
                                          child: Text(
                                        isGuardian
                                            ? _display(
                                                data.student?.enrollmentId)
                                            : _display(data.guardian?.email),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: FontFamily.poppins,
                                          color: ColorName.black.withAlpha(150),
                                        ),
                                      )),
                                    ],
                                  ),
                                  Gap(3.h),
                                  Row(
                                    children: [
                                      Icon(
                                        isGuardian
                                            ? Icons.school
                                            : Icons.phone_android,
                                        size: 16.sp,
                                        color: ColorName.blueColor1,
                                      ),
                                      Gap(3.w),
                                      Expanded(
                                          child: Text(
                                        isGuardian
                                            ? 'Class ${_classSection(data.student?.classStandard, data.student?.section)}'
                                            : _display(data.guardian?.phone),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: FontFamily.poppins,
                                          color: ColorName.black.withAlpha(150),
                                        ),
                                      )),
                                    ],
                                  ),
                                ],
                              )),
                            ],
                          ),
                          if (isGuardian) ...[
                            Gap(12.h),
                            Container(
                              width: double.maxFinite,
                              height: 1,
                              color: ColorName.black.withAlpha(15),
                            ),
                            Gap(10.h),
                            GestureDetector(
                              onTap: () => showModalBottomSheet<void>(
                                context: context,
                                useRootNavigator: true,
                                isScrollControlled: true,
                                backgroundColor: ColorName.lightBackground4,
                                builder: (_) => const SwitchStudentSheet(),
                              ),
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
                        ],
                      ),
                    ),
                    Gap(24.h),
                  ],
                  if (isTeacher) Gap(24.h),
                  GridView.count(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    crossAxisCount: 4,
                    crossAxisSpacing: 10.w,
                    mainAxisSpacing: 10.h,
                    childAspectRatio: 0.83,
                    children: [
                      _buildFeatureTile(
                          Icons.description_outlined, 'Documents'),
                      _buildFeatureTile(
                          Icons.calendar_today_outlined, 'Attendance'),
                      _buildFeatureTile(
                          Icons.directions_bus_outlined, 'Transport'),
                      if (isTeacher)
                        _buildFeatureTile(Icons.beach_access_outlined, 'Leaves')
                      else if (isStudent || isGuardian)
                        _buildFeatureTile(
                            Icons.insert_chart_outlined, 'Report Card'),
                    ],
                  ),
                  if (isStudent || isTeacher) ...[
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
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 5),
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
                            title: isStudent ? 'ENROLLMENT ID' : 'STAFF ID',
                            subtitle: _display(
                                isStudent ? data.enrollmentId : data.staffId),
                            showArrow: false,
                          ),
                          Divider(color: ColorName.lightBackground3, height: 1),
                          _buildAccountRow(
                            icon: isStudent ? Icons.school : Icons.history_edu,
                            title: isStudent
                                ? 'CLASS & SECTION'
                                : 'SPECIALIZATION',
                            subtitle: isStudent
                                ? _classSection(
                                    data.classStandard, data.section)
                                : _display(data.subject),
                            showArrow: false,
                          ),
                          if (isStudent) ...[
                            Divider(
                                color: ColorName.lightBackground3, height: 1),
                            _buildAccountRow(
                              icon: Icons.history_edu,
                              title: 'ACADEMIC YEAR',
                              subtitle: _display(data.session),
                              showArrow: false,
                            ),
                          ],
                        ],
                      ),
                    ),
                  ],
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
                          isStatusLoading: requestingContact.value == false,
                          subtitle: _display(data.phone),
                          statusLabel: data.isPhoneVerified == true
                              ? 'Verified'
                              : 'Pending',
                          statusColor: data.isPhoneVerified == true
                              ? ColorName.greenColor
                              : ColorName.orangeColor,
                          statusBackground: (data.isPhoneVerified == true
                                  ? ColorName.greenColor
                                  : ColorName.orangeColor)
                              .withAlpha(30),
                          showArrow: data.isPhoneVerified != true,
                          onTap: () => verifyContact(
                              data.phone, false, data.isPhoneVerified == true),
                        ),
                        Divider(color: ColorName.lightBackground3, height: 1),
                        _buildAccountRow(
                          icon: Icons.alternate_email,
                          title: 'EMAIL ADDRESS',
                          isStatusLoading: requestingContact.value == true,
                          subtitle: _display(data.email),
                          statusLabel: data.isMailVerified == true
                              ? 'Verified'
                              : 'Pending',
                          statusColor: data.isMailVerified == true
                              ? ColorName.greenColor
                              : ColorName.orangeColor,
                          statusBackground: (data.isMailVerified == true
                                  ? ColorName.greenColor
                                  : ColorName.orangeColor)
                              .withAlpha(30),
                          showArrow: data.isMailVerified != true,
                          onTap: () => verifyContact(
                              data.email, true, data.isMailVerified == true),
                        ),
                      ],
                    ),
                  ),
                  const ProfileSettingsSections(),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  String _display(String? value) =>
      value == null || value.trim().isEmpty ? '?' : value;

  String _classSection(String? standard, String? section) =>
      '${_display(standard)} - ${_display(section)}';

  Widget _buildLoadError(WidgetRef ref) => Center(
        child: TextButton(
          onPressed: () {
            ref.invalidate(userDetailsNotifierProvider);
            ref.invalidate(savedUserInfoProvider);
          },
          child: const Text('Unable to load profile. Tap to retry.'),
        ),
      );

  Widget _profileImage(String? filename, String type, {double? size}) {
    Widget fallback() => Assets.images.profileImage
        .image(width: size, height: size, fit: BoxFit.cover);
    if (filename == null || filename.trim().isEmpty) return fallback();
    final url = filename.startsWith('http')
        ? filename
        : '${Endpoints.profileImageBaseURL}/$type/$filename';
    return Image.network(
      url,
      width: size,
      height: size,
      fit: BoxFit.cover,
      errorBuilder: (context, error, stackTrace) => fallback(),
    );
  }

  Widget _buildFeatureTile(IconData icon, String label) {
    return SizedBox(
      width: 80,
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
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
            child: Icon(icon, color: ColorName.blueColor1, size: 30.sp),
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
    bool isStatusLoading = false,
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
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w600,
                      fontFamily: FontFamily.poppins,
                      color: ColorName.blueColor2.withAlpha(170),
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
                child: isStatusLoading
                    ? SizedBox(
                        width: 42.w,
                        height: 16.h,
                        child: SpinKitThreeBounce(
                          color: ColorName.blueColor2,
                          size: 18.sp,
                        ),
                      )
                    : Text(
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
