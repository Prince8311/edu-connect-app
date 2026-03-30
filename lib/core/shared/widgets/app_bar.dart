import 'package:edu_connect/core/shared/miscellaneous/app_extensions.dart';
import 'package:edu_connect/core/router/app_router.dart';
import 'package:edu_connect/gen/assets.gen.dart';
import 'package:edu_connect/gen/colors.gen.dart';
import 'package:edu_connect/gen/fonts.gen.dart';
import 'package:edu_connect/core/shared/miscellaneous/gap.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({
    super.key,
    this.onNotificationTap,
    this.onSettingsTap,
  });

  final VoidCallback? onNotificationTap;
  final VoidCallback? onSettingsTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorName.white,
        border: Border(
          bottom: BorderSide(color: ColorName.borderColor),
        ),
      ),
      child: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 46,
                    height: 46,
                    decoration: BoxDecoration(
                      color: ColorName.lightBackground4,
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: ColorName.borderColor),
                    ),
                    child: Center(
                      child:
                          Assets.images.logo1Jpg.image(width: 28, height: 28),
                    ),
                  ),
                  Gap(12.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'GOOD EVENING',
                        style: TextStyle(
                          color: ColorName.black3,
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                          fontFamily: FontFamily.poppins,
                        ),
                      ),
                      Gap(2.h),
                      Text(
                        'V GEETHANJALI',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: ColorName.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          fontFamily: FontFamily.poppins,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  _NavIconButton(
                    icon: Icons.notifications_none,
                    onTap: onNotificationTap,
                  ),
                  Gap(12.w),
                  _NavIconButton(
                    icon: Icons.settings,
                    onTap: () => SettingsRoute().push(context),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(75);
}

class PrimaryAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PrimaryAppBar({
    super.key,
    required this.title,
    this.showNotification = true,
    this.showSettings = true,
    this.useHomeRouteOnBack = true,
  });

  final String title;
  final bool showNotification;
  final bool showSettings;
  final bool useHomeRouteOnBack;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorName.white,
        border: Border(
          bottom: BorderSide(color: ColorName.borderColor),
        ),
      ),
      child: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      if (useHomeRouteOnBack) {
                        TeacherHomeRoute().go(context);
                      } else {
                        context.pop();
                      }
                    },
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: ColorName.blueColor.withAlpha(30),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: const Icon(
                        Icons.arrow_back,
                        size: 24,
                        color: ColorName.themeColor,
                      ),
                    ),
                  ),
                  Gap(14.w),
                  Text(
                    title,
                    style: TextStyle(
                      color: ColorName.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontFamily: FontFamily.poppins,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  if (showNotification) ...[
                    _NavIconButton(
                      icon: Icons.notifications_none,
                      onTap: () => SettingsRoute().push(context),
                    ),
                  ],
                  if (showSettings) ...[
                    Gap(12.w),
                    _NavIconButton(
                      icon: Icons.settings,
                      onTap: () => SettingsRoute().push(context),
                    ),
                  ],
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(75);
}

class _NavIconButton extends StatelessWidget {
  const _NavIconButton({
    required this.icon,
    this.onTap,
  });

  final IconData icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 42,
        height: 42,
        decoration: BoxDecoration(
          color: ColorName.lightBackground2.withAlpha(100),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Icon(icon, color: ColorName.black1, size: 22),
      ),
    );
  }
}
