import 'package:edu_connect/core/router/app_router.dart';
import 'package:edu_connect/core/shared/miscellaneous/app_extensions.dart';
import 'package:edu_connect/core/shared/miscellaneous/gap.dart';
import 'package:edu_connect/core/shared/widgets/app_bar.dart';
import 'package:edu_connect/features/auth/presentation/providers/auth_provider.dart';
import 'package:edu_connect/gen/assets.gen.dart';
import 'package:edu_connect/gen/colors.gen.dart';
import 'package:edu_connect/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SettingsScreen extends HookConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final biometricEnabled = useState(true);
    final faceLoginEnabled = useState(false);

    return Scaffold(
      backgroundColor: ColorName.lightBackground4,
      appBar: const PrimaryAppBar(
        title: 'Settings',
        showSettings: false,
        useHomeRouteOnBack: false,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
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
                            border:
                                Border.all(color: ColorName.white, width: 3),
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
                            'Julian Thorne',
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
                      subtitle: 'j.thorne@educonnect.edu',
                      statusLabel: 'Verified',
                      statusColor: ColorName.greenColor,
                      statusBackground: ColorName.greenColor.withAlpha(30),
                    ),
                    Divider(color: ColorName.lightBackground3, height: 1),
                    _buildAccountRow(
                      icon: Icons.phone_android,
                      title: 'Verify Mobile Number',
                      subtitle: '+1 (555) 123-4567',
                      statusLabel: 'Pending',
                      statusColor: ColorName.orangeColor,
                      statusBackground: ColorName.orangeColor.withAlpha(30),
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
                  final success = await await ref.read(logoutProvider.future);
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
                        Icon(Icons.logout, color: ColorName.redColor, size: 20),
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
          if (statusLabel != null)
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 4),
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
