import 'dart:async';

import 'package:edu_connect/core/api/end_points.dart';
import 'package:edu_connect/core/shared/miscellaneous/app_extensions.dart';
import 'package:edu_connect/core/router/app_router.dart';
import 'package:edu_connect/features/auth/presentation/providers/auth_provider.dart';
import 'package:edu_connect/gen/assets.gen.dart';
import 'package:edu_connect/gen/colors.gen.dart';
import 'package:edu_connect/gen/fonts.gen.dart';
import 'package:edu_connect/core/shared/miscellaneous/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeAppBar extends HookConsumerWidget implements PreferredSizeWidget {
  const HomeAppBar({
    super.key,
    this.onNotificationTap,
    this.onSettingsTap,
  });

  final VoidCallback? onNotificationTap;
  final VoidCallback? onSettingsTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final savedUserAsync = ref.watch(savedUserInfoProvider);
    final timeNotifier = useState<DateTime>(DateTime.now());

    // Update greeting every minute
    useEffect(() {
      final timer = Timer.periodic(const Duration(minutes: 1), (_) {
        timeNotifier.value = DateTime.now();
      });
      return timer.cancel;
    }, const []);

    final now = timeNotifier.value;
    final hour = now.hour;

    // Determine greeting and image
    String greeting = 'GOOD MORNING';
    AssetGenImage greetingImage = Assets.images.morning;

    if (hour >= 5 && hour < 12) {
      greeting = 'GOOD MORNING';
      greetingImage = Assets.images.morning;
    } else if (hour >= 12 && hour < 17) {
      greeting = 'GOOD AFTERNOON';
      greetingImage = Assets.images.afternoon;
    } else if (hour >= 17 && hour < 21) {
      greeting = 'GOOD EVENING';
      greetingImage = Assets.images.evening;
    } else {
      greeting = 'GOOD NIGHT';
      greetingImage = Assets.images.night;
    }

    final userName = savedUserAsync.asData?.value?.name ?? 'User';
    final profileImageFileName = savedUserAsync.asData?.value?.profileImage;
    final profileImageUrl =
        profileImageFileName != null && profileImageFileName.isNotEmpty
            ? '${Endpoints.profileImageBaseURL}/student/$profileImageFileName'
            : null;

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
                  // Profile Image
                  Container(
                    width: 46,
                    height: 46,
                    decoration: BoxDecoration(
                      color: ColorName.lightBackground4,
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: ColorName.borderColor),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: profileImageUrl != null &&
                              profileImageUrl.isNotEmpty
                          ? Image.network(
                              profileImageUrl,
                              width: 46,
                              height: 46,
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) {
                                return Assets.images.profileImage.image(
                                    width: 46, height: 46, fit: BoxFit.cover);
                              },
                            )
                          : Assets.images.profileImage
                              .image(width: 46, height: 46, fit: BoxFit.cover),
                    ),
                  ),
                  Gap(12.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            greeting,
                            style: TextStyle(
                              color: ColorName.black3,
                              fontSize: 12.sp,
                              height: 1.2,
                              fontWeight: FontWeight.w500,
                              fontFamily: FontFamily.poppins,
                            ),
                          ),
                          Gap(4.w),
                          greetingImage.image(height: 20),
                        ],
                      ),
                      Gap(2.h),
                      Text(
                        userName.toUpperCase(),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: ColorName.black,
                          fontSize: 17.sp,
                          letterSpacing: -0.1,
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
                    icon: Icons.notifications,
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
                        HomeRoute().go(context);
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
                      child: Icon(
                        Icons.arrow_back,
                        size: 25.sp,
                        color: ColorName.blueColor1,
                      ),
                    ),
                  ),
                  Gap(14.w),
                  Text(
                    title,
                    style: TextStyle(
                      color: ColorName.black,
                      fontSize: 17.sp,
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
          color: ColorName.themeColor.withAlpha(30),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Icon(icon, color: ColorName.blueColor2, size: 24.sp),
      ),
    );
  }
}
