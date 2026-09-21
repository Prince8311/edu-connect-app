import 'package:edu_connect/core/shared/widgets/animated_greeting.dart';
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
  });

  final VoidCallback? onNotificationTap;

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

    // Determine the greeting for the local time.
    String greeting = 'GOOD MORNING';

    if (hour >= 5 && hour < 12) {
      greeting = 'GOOD MORNING';
    } else if (hour >= 12 && hour < 17) {
      greeting = 'GOOD AFTERNOON';
    } else if (hour >= 17 && hour < 21) {
      greeting = 'GOOD EVENING';
    } else {
      greeting = 'GOOD NIGHT';
    }

    final userName = savedUserAsync.asData?.value?.name ?? 'User';
    final profileImageFileName = savedUserAsync.asData?.value?.profileImage;
    final profileImageUrl =
        profileImageFileName != null && profileImageFileName.isNotEmpty
            ? '${Endpoints.profileImageBaseURL}/user/$profileImageFileName'
            : null;

    final night = hour < 5 || hour >= 21;
    final subtitle = night
        ? 'Rest well for a brighter tomorrow!'
        : hour < 12
            ? 'A fresh start to a day of learning.'
            : hour < 17
                ? 'Keep your curiosity shining.'
                : 'Take a moment to unwind.';
    final accent = night ? const Color(0xFF555DAB) : const Color(0xFF167D9A);
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(bottom: Radius.circular(24)),
      child: Stack(children: [
        Positioned.fill(
            child: IgnorePointer(
                child: AnimatedGreeting(hour: hour, background: true))),
        SafeArea(
            bottom: false,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(children: [
                      ClipOval(
                          child: profileImageUrl == null
                              ? Assets.images.profileImage.image(
                                  width: 48, height: 48, fit: BoxFit.cover)
                              : Image.network(profileImageUrl,
                                  width: 48,
                                  height: 48,
                                  fit: BoxFit.cover,
                                  errorBuilder: (context, error, stack) =>
                                      Assets.images.profileImage.image(
                                          width: 48,
                                          height: 48,
                                          fit: BoxFit.cover))),
                      Gap(12.w),
                      Expanded(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                            Text(
                                greeting
                                        .toLowerCase()
                                        .split(' ')
                                        .map((word) =>
                                            word[0].toUpperCase() +
                                            word.substring(1))
                                        .join(' ') +
                                    ',',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontFamily: FontFamily.poppins,
                                    fontSize: 12.sp,
                                    color: const Color(0xFF616777),
                                    height: 1.3)),
                            Gap(1.25.h),
                            Text(userName.toUpperCase(),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontFamily: FontFamily.poppins,
                                    fontSize: 17.sp,
                                    fontWeight: FontWeight.w600,
                                    color: ColorName.black)),
                          ])),
                      const Gap(54),
                      Material(
                          color: Colors.white.withAlpha(240),
                          borderRadius: BorderRadius.circular(16),
                          child: IconButton(
                              tooltip: 'Notifications',
                              onPressed: onNotificationTap,
                              icon: Icon(Icons.notifications, color: accent),
                              constraints: const BoxConstraints(
                                  minWidth: 44, minHeight: 44))),
                    ]),
                    Row(children: [
                      const SizedBox(width: 55),
                      Icon(Icons.auto_awesome_outlined,
                          size: 14, color: accent.withAlpha(160)),
                      const Gap(4),
                      Expanded(
                          child: Text(subtitle,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontFamily: FontFamily.poppins,
                                  fontSize: 11.sp,
                                  color: const Color(0xFF717787)))),
                    ]),
                  ]),
            )),
      ]),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(106);
}

class PrimaryAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PrimaryAppBar({
    super.key,
    required this.title,
    this.showNotification = true,
    this.useHomeRouteOnBack = true,
  });

  final String title;
  final bool showNotification;
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
              Expanded(
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () async {
                        if (useHomeRouteOnBack) {
                          HomeRoute().go(context);
                        } else {
                          final rootNavigator =
                              Navigator.of(context, rootNavigator: true);
                          if (rootNavigator.canPop()) {
                            rootNavigator.pop();
                          } else if (context.canPop()) {
                            context.pop();
                          } else {
                            HomeRoute().go(context);
                          }
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
                    Expanded(
                      child: Text(
                        title,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: ColorName.black,
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w500,
                          fontFamily: FontFamily.poppins,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  if (showNotification) ...[
                    _NavIconButton(
                      icon: Icons.notifications,
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
  });

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
