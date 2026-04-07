import 'dart:async';

import 'package:edu_connect/core/router/app_router.dart';
import 'package:edu_connect/core/shared/miscellaneous/app_extensions.dart';
import 'package:edu_connect/core/shared/miscellaneous/gap.dart';
import 'package:edu_connect/core/shared/widgets/app_bar.dart';
import 'package:edu_connect/core/shared/widgets/loader.dart';
import 'package:edu_connect/features/auth/presentation/providers/auth_provider.dart';
import 'package:edu_connect/features/profile/domain/models/profile_model.dart';
import 'package:edu_connect/features/profile/presentation/providers/profile_provider.dart';
import 'package:edu_connect/gen/assets.gen.dart';
import 'package:edu_connect/gen/colors.gen.dart';
import 'package:edu_connect/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SettingsScreen extends HookConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userAsync = ref.watch(userDetailsNotifierProvider);

    final biometricEnabled = useState(true);
    final faceLoginEnabled = useState(false);

    void _openOTPVerifyDrawer({required String value, required bool isMail}) {
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

              return WillPopScope(
                onWillPop: () async {
                  timer?.cancel();
                  isDisposed = true;
                  return true;
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
                              style: const TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: ColorName.black1,
                                fontFamily: FontFamily.poppins,
                              ),
                              children: [
                                TextSpan(
                                  text: maskValue(value.trim()),
                                  style: const TextStyle(
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
                                  textAlign: TextAlign.center,
                                  maxLength: 1,
                                  cursorColor: ColorName.black,
                                  style: const TextStyle(
                                    fontSize: 14,
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
                                      style: const TextStyle(
                                        fontSize: 12,
                                        color: ColorName.black2,
                                        fontFamily: FontFamily.poppins,
                                      ),
                                    )
                                  : GestureDetector(
                                      onTap: () {
                                        startTimer();

                                        /// call resend API
                                      },
                                      child: const Text(
                                        "Resend OTP",
                                        style: TextStyle(
                                          fontSize: 12,
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
                                        ? ColorName.redColor1
                                        : ColorName.lightBackground2,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              onPressed: (isOtpComplete() && !isVerifyLoading)
                                  ? () async {
                                      isVerifyLoading = true;
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
                                      isVerifyLoading = true;
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
                                  ? const SpinKitThreeBounce(
                                      color: Colors.white,
                                      size: 20,
                                    )
                                  : const Text(
                                      'Verify OTP',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
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

    return Scaffold(
      backgroundColor: ColorName.lightBackground4,
      appBar: const PrimaryAppBar(
        title: 'Settings',
        showSettings: false,
        useHomeRouteOnBack: false,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: userAsync.when(
            loading: () => ProfileLoading(),
            error: (e, _) => Center(child: Text(e.toString())),
            data: (data) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: ColorName.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        const BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.05),
                          blurRadius: 24,
                          offset: Offset(0, 12),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            Container(
                              width: 62,
                              height: 62,
                              decoration: BoxDecoration(
                                color: ColorName.lightBackground4,
                                shape: BoxShape.circle,
                              ),
                              child: ClipOval(
                                child: Assets.images.profileImage.image(
                                  width: 62,
                                  height: 62,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              width: 26,
                              height: 26,
                              decoration: BoxDecoration(
                                color: ColorName.blueColor,
                                border: Border.all(
                                    color: ColorName.white, width: 3),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: const Icon(
                                Icons.edit,
                                size: 14,
                                color: ColorName.white,
                              ),
                            ),
                          ],
                        ),
                        Gap(14.w),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                data?.name ?? '-',
                                style: TextStyle(
                                  color: ColorName.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: FontFamily.poppins,
                                ),
                              ),
                              Gap(4.h),
                              Text(
                                'Computer Science · Junior Year',
                                style: TextStyle(
                                  color: ColorName.black2.withAlpha(150),
                                  fontSize: 12,
                                  fontFamily: FontFamily.poppins,
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
                    padding: const EdgeInsets.only(left: 8),
                    child: Text(
                      'PROFILE & ACCOUNT',
                      style: TextStyle(
                        color: ColorName.blueColor,
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        fontFamily: FontFamily.poppins,
                      ),
                    ),
                  ),
                  Gap(8.h),
                  Container(
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
                      children: [
                        _buildAccountRow(
                          icon: Icons.person,
                          title: 'Edit Profile',
                        ),
                        Divider(color: ColorName.lightBackground3, height: 1),
                        _buildAccountRow(
                          icon: Icons.alternate_email,
                          title: 'Verify Email',
                          subtitle: data?.email,
                          statusLabel:
                              data!.isMailVerified! ? 'Verified' : 'Pending',
                          statusColor: data.isMailVerified!
                              ? ColorName.greenColor
                              : ColorName.orangeColor,
                          statusBackground: data.isMailVerified!
                              ? ColorName.greenColor.withAlpha(30)
                              : ColorName.orangeColor.withAlpha(30),
                          onTap: () async {
                            if (!(data.isMailVerified ?? false)) {
                              final request = OtpResquest(name: data.email);
                              final result = await ref.read(
                                  sendVerificationOtpProvider(
                                          requestBody: request)
                                      .future);
                              if (result == true) {
                                _openOTPVerifyDrawer(
                                    value: data.email ?? '', isMail: true);
                              }
                            }
                          },
                        ),
                        Divider(color: ColorName.lightBackground3, height: 1),
                        _buildAccountRow(
                          icon: Icons.phone_android,
                          title: 'Verify Mobile Number',
                          subtitle: data.phone,
                          statusLabel:
                              data.isPhoneVerified! ? 'Verified' : 'Pending',
                          statusColor: data.isPhoneVerified!
                              ? ColorName.greenColor
                              : ColorName.orangeColor,
                          statusBackground: data.isPhoneVerified!
                              ? ColorName.greenColor.withAlpha(30)
                              : ColorName.orangeColor.withAlpha(30),
                          onTap: () async {
                            if (!(data.isMailVerified ?? false)) {
                              final request = OtpResquest(name: data.phone);
                              final result = await ref.read(
                                  sendVerificationOtpProvider(
                                          requestBody: request)
                                      .future);
                              if (result == true) {
                                _openOTPVerifyDrawer(
                                    value: data.phone ?? '', isMail: false);
                              }
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                  Gap(24.h),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text(
                      'SECURITY & PRIVACY',
                      style: TextStyle(
                        color: ColorName.blueColor,
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        fontFamily: FontFamily.poppins,
                      ),
                    ),
                  ),
                  Gap(8.h),
                  Container(
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
                      children: [
                        _buildPrivacyRow(
                          icon: Icons.fingerprint,
                          title: 'Enable Biometric Login',
                          switchValue: biometricEnabled.value,
                          onSwitchChanged: (value) =>
                              biometricEnabled.value = value,
                        ),
                        Divider(color: ColorName.lightBackground3, height: 1),
                        _buildPrivacyRow(
                          icon: Icons.face,
                          title: 'Face ID / Face Login',
                          switchValue: faceLoginEnabled.value,
                          onSwitchChanged: (value) =>
                              faceLoginEnabled.value = value,
                        ),
                        Divider(color: ColorName.lightBackground3, height: 1),
                        _buildPrivacyRow(
                          icon: Icons.lock,
                          title: 'Change Password',
                        ),
                      ],
                    ),
                  ),
                  Gap(24.h),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text(
                      'HELP & SUPPORT',
                      style: TextStyle(
                        color: ColorName.blueColor,
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        fontFamily: FontFamily.poppins,
                      ),
                    ),
                  ),
                  Gap(8.h),
                  Container(
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
                      children: [
                        _buildSupportRow(
                          icon: Icons.help_outline,
                          title: 'Help Center',
                          trailing: const Icon(Icons.open_in_new,
                              size: 18, color: ColorName.borderColor),
                        ),
                        Divider(color: ColorName.lightBackground3, height: 1),
                        _buildSupportRow(
                          icon: Icons.shield_outlined,
                          title: 'Privacy Policy',
                        ),
                        Divider(color: ColorName.lightBackground3, height: 1),
                        _buildSupportRow(
                          icon: Icons.description_outlined,
                          title: 'Terms of Service',
                        ),
                      ],
                    ),
                  ),
                  Gap(25.h),
                  GestureDetector(
                    onTap: () async {
                      final success =
                          await await ref.read(logoutProvider.future);
                      if (success!) {
                        AuthRoute().go(context);
                      }
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      decoration: BoxDecoration(
                        color: ColorName.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          const BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.03),
                            blurRadius: 12,
                            offset: Offset(0, 8),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.logout,
                                color: ColorName.redColor, size: 20),
                            Gap(8.w),
                            Text(
                              'Logout',
                              style: TextStyle(
                                color: ColorName.redColor,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                fontFamily: FontFamily.poppins,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Gap(24.h),
                  Center(
                    child: Text(
                      'EDU CONNECT V2.4.1 (BUILD 402)',
                      style: TextStyle(
                        color: ColorName.black2.withAlpha(120),
                        fontSize: 12,
                        fontFamily: FontFamily.poppins,
                      ),
                    ),
                  ),
                  Gap(30.h),
                ],
              );
            },
          ),
        ),
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
    VoidCallback? onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 42,
              height: 42,
              decoration: BoxDecoration(
                color: ColorName.lightBackground3.withAlpha(150),
                borderRadius: BorderRadius.circular(14),
              ),
              child: Icon(icon, color: ColorName.blueColor, size: 22),
            ),
            Gap(14.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: ColorName.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontFamily: FontFamily.poppins,
                    ),
                  ),
                  if (subtitle != null) ...[
                    Gap(3.h),
                    Text(
                      subtitle,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: ColorName.black2.withAlpha(150),
                        fontSize: 12,
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
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    fontFamily: FontFamily.poppins,
                  ),
                ),
              ),
            Gap(6.w),
            const Icon(Icons.arrow_forward_ios,
                size: 16, color: ColorName.borderColor),
          ],
        ),
      ),
    );
  }

  Widget _buildPrivacyRow({
    required IconData icon,
    required String title,
    bool switchValue = false,
    ValueChanged<bool>? onSwitchChanged,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 42,
            height: 42,
            decoration: BoxDecoration(
              color: ColorName.lightBackground3.withAlpha(150),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Icon(icon, color: ColorName.blueColor, size: 22),
          ),
          Gap(14.w),
          Expanded(
            child: Text(
              title,
              style: TextStyle(
                color: ColorName.black,
                fontSize: 14,
                fontWeight: FontWeight.w500,
                fontFamily: FontFamily.poppins,
              ),
            ),
          ),
          if (onSwitchChanged != null)
            GestureDetector(
              onTap: () => onSwitchChanged(!switchValue),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 250),
                curve: Curves.easeInOut,
                width: 50,
                height: 26,
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  color: switchValue
                      ? ColorName.blueColor
                      : ColorName.lightBackground2.withAlpha(120),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: AnimatedAlign(
                  duration: const Duration(milliseconds: 250),
                  curve: Curves.easeInOut,
                  alignment: switchValue
                      ? Alignment.centerRight
                      : Alignment.centerLeft,
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: ColorName.white,
                      shape: BoxShape.circle,
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.12),
                          blurRadius: 4,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          else
            const Icon(Icons.arrow_forward_ios,
                size: 16, color: ColorName.borderColor),
        ],
      ),
    );
  }

  Widget _buildSupportRow({
    required IconData icon,
    required String title,
    Widget? trailing,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 42,
            height: 42,
            decoration: BoxDecoration(
              color: ColorName.lightBackground3.withAlpha(150),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Icon(icon, color: ColorName.blueColor, size: 22),
          ),
          Gap(14.w),
          Expanded(
            child: Text(
              title,
              style: TextStyle(
                color: ColorName.black,
                fontSize: 14,
                fontWeight: FontWeight.w500,
                fontFamily: FontFamily.poppins,
              ),
            ),
          ),
          trailing ??
              const Icon(Icons.arrow_forward_ios,
                  size: 16, color: ColorName.borderColor),
        ],
      ),
    );
  }
}

class ProfileLoading extends StatelessWidget {
  const ProfileLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SkeletonLoader(
          width: double.maxFinite,
          height: 80,
        ),
        Gap(20.h),
        SkeletonLoader(
          width: 150,
          height: 15,
        ),
        Gap(8.h),
        SkeletonLoader(
          width: double.maxFinite,
          height: 230,
        ),
        Gap(20.h),
        SkeletonLoader(
          width: 150,
          height: 15,
        ),
        Gap(8.h),
        SkeletonLoader(
          width: double.maxFinite,
          height: 230,
        ),
        Gap(20.h),
        SkeletonLoader(
          width: 150,
          height: 15,
        ),
        Gap(8.h),
        SkeletonLoader(
          width: double.maxFinite,
          height: 230,
        ),
      ],
    );
  }
}
