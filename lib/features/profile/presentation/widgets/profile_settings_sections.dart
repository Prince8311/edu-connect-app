import 'package:edu_connect/core/router/app_router.dart';
import 'package:edu_connect/core/shared/miscellaneous/app_extensions.dart';
import 'package:edu_connect/core/shared/miscellaneous/gap.dart';
import 'package:edu_connect/core/shared/widgets/toast.dart';
import 'package:edu_connect/features/auth/presentation/providers/auth_provider.dart';
import 'package:edu_connect/gen/colors.gen.dart';
import 'package:edu_connect/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProfileSettingsSections extends HookConsumerWidget {
  const ProfileSettingsSections({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final biometricEnabled = useState(true);
    final faceLoginEnabled = useState(false);
    final isLoggingOut = useState(false);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Gap(24.h),
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Text(
            'SECURITY & PRIVACY',
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
                onSwitchChanged: (value) => biometricEnabled.value = value,
              ),
              Divider(color: ColorName.lightBackground3, height: 1),
              _buildPrivacyRow(
                icon: Icons.face,
                title: 'Face ID / Face Login',
                switchValue: faceLoginEnabled.value,
                onSwitchChanged: (value) => faceLoginEnabled.value = value,
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
              color: ColorName.blueColor2,
              fontSize: 14.sp,
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
                trailing: Icon(Icons.open_in_new,
                    size: 19.sp, color: ColorName.borderColor),
              ),
              Divider(color: ColorName.lightBackground3, height: 1),
              _buildSupportRow(
                icon: Icons.shield_outlined,
                title: 'Privacy Policy',
                onTap: () => const PrivacyPolicyRoute().push(context),
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
          onTap: isLoggingOut.value
              ? null
              : () async {
                  isLoggingOut.value = true;
                  try {
                    final success = await ref.refresh(logoutProvider.future);
                    if (context.mounted && success == true) {
                      AuthRoute().go(context);
                    }
                  } catch (_) {
                    if (context.mounted) {
                      errorToast('Unable to log out. Please try again.');
                    }
                  } finally {
                    if (context.mounted) isLoggingOut.value = false;
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
                  Icon(Icons.logout, color: ColorName.redColor, size: 20.sp),
                  Gap(8.w),
                  Text(
                    isLoggingOut.value ? 'Logging out...' : 'Logout',
                    style: TextStyle(
                      color: ColorName.redColor,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      fontFamily: FontFamily.poppins,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
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
              color: ColorName.blueColor1.withAlpha(16),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Icon(icon, color: ColorName.blueColor1, size: 25.sp),
          ),
          Gap(14.w),
          Expanded(
            child: Text(
              title,
              style: TextStyle(
                color: ColorName.black,
                fontSize: 15.5.sp,
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
                      ? ColorName.blueColor2
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
            Icon(Icons.arrow_forward_ios,
                size: 17.sp, color: ColorName.borderColor),
        ],
      ),
    );
  }

  Widget _buildSupportRow({
    required IconData icon,
    required String title,
    Widget? trailing,
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
                color: ColorName.blueColor1.withAlpha(16),
                borderRadius: BorderRadius.circular(14),
              ),
              child: Icon(icon, color: ColorName.blueColor1, size: 25.sp),
            ),
            Gap(14.w),
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  color: ColorName.black,
                  fontSize: 15.5.sp,
                  fontWeight: FontWeight.w500,
                  fontFamily: FontFamily.poppins,
                ),
              ),
            ),
            trailing ??
                Icon(Icons.arrow_forward_ios,
                    size: 17.sp, color: ColorName.borderColor),
          ],
        ),
      ),
    );
  }
}
