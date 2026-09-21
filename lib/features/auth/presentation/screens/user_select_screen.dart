import 'dart:math' as math;
import 'package:edu_connect/core/shared/widgets/toast.dart';
import 'package:edu_connect/core/api/end_points.dart';
import 'package:edu_connect/core/router/app_router.dart';
import 'package:edu_connect/core/shared/helpers/local_storage.dart';
import 'package:edu_connect/core/shared/miscellaneous/app_extensions.dart';
import 'package:edu_connect/core/shared/miscellaneous/gap.dart';
import 'package:edu_connect/core/shared/widgets/loader.dart';
import 'package:edu_connect/features/auth/domain/models/auth_model.dart';
import 'package:edu_connect/features/auth/presentation/providers/auth_provider.dart';
import 'package:edu_connect/features/profile/presentation/providers/biometric_provider.dart';
import 'package:edu_connect/gen/assets.gen.dart';
import 'package:edu_connect/gen/colors.gen.dart';
import 'package:edu_connect/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final biometricSelectionUsersProvider =
    FutureProvider.autoDispose<List<BiometricUserInfo>?>((ref) async {
  final storage = ref.watch(secureStorageProvider);
  final deviceId = await storage.readData(LocalStorageKeys.biometricDeviceId);
  final config = await readBiometricConfig(storage);
  if (deviceId == null ||
      deviceId.isEmpty ||
      config == null ||
      config.deviceToken.isEmpty ||
      config.type != fingerprintBiometricType ||
      config.users.isEmpty) {
    throw StateError('Fingerprint setup is unavailable. Please sign in again.');
  }
  return ref.watch(getBiometricUsersProvider(
    deviceId: deviceId,
    deviceToken: config.deviceToken,
    biometricType: config.type,
  ).future);
});

class UserSelectScreen extends HookConsumerWidget {
  const UserSelectScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final users = ref.watch(biometricSelectionUsersProvider);
    final selectedId = useState<int?>(null);
    final isSigningIn = useState(false);
    Future<void> selectUser(BiometricUserInfo user) async {
      if (isSigningIn.value || user.id == null) return;
      isSigningIn.value = true;
      selectedId.value = user.id;
      try {
        final storage = ref.read(secureStorageProvider);
        final deviceId =
            await storage.readData(LocalStorageKeys.biometricDeviceId);
        final config = await readBiometricConfig(storage);
        if (!context.mounted) return;
        if (deviceId == null ||
            deviceId.isEmpty ||
            config == null ||
            config.deviceToken.isEmpty ||
            config.type != fingerprintBiometricType) {
          errorToast('Fingerprint setup is unavailable. Please sign in again.');
          return;
        }
        final result = await ref.refresh(biometricLoginProvider(
          requestBody: BiometricLoginRequest(
              userId: user.id,
              deviceId: deviceId,
              deviceToken: config.deviceToken,
              biometricType: config.type),
        ).future);
        if (!context.mounted || result == null) return;
        final nextScreen = result.nextScreen?.trim();
        if (nextScreen == 'selectRole') {
          RoleSelectRoute().push(context);
        } else if (nextScreen == 'selectStudent') {
          StudentSelectRoute().push(context);
        } else if (result.authToken?.trim().isNotEmpty == true &&
            (nextScreen == null ||
                nextScreen.isEmpty ||
                nextScreen == 'home')) {
          // A completed login may omit next_screen after choosing an account.
          HomeRoute().go(context);
        } else if (result.userChoose == true) {
          errorToast('Unable to select this account. Please try again.');
        } else {
          errorToast('Unable to complete sign in. Please try again.');
        }
      } catch (_) {
        if (context.mounted) errorToast('Unable to sign in. Please try again.');
      } finally {
        if (context.mounted) {
          isSigningIn.value = false;
          selectedId.value = null;
        }
      }
    }

    void retry() {
      selectedId.value = null;
      ref.invalidate(getBiometricUsersProvider);
      ref.invalidate(biometricSelectionUsersProvider);
    }

    Widget message(String text, {bool canRetry = false}) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 24),
          child: Center(
              child: Column(children: [
            Icon(Icons.person_search_outlined,
                size: 56, color: ColorName.blueColor1),
            Gap(16.h),
            Text(text,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontFamily: FontFamily.poppins, color: ColorName.black3)),
            if (canRetry) ...[
              Gap(12.h),
              OutlinedButton.icon(
                  onPressed: retry,
                  icon: const Icon(Icons.refresh),
                  label: const Text('Try again')),
            ],
          ])),
        );

    return Scaffold(
      backgroundColor: ColorName.lightBackground4,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(16),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            OutlinedButton.icon(
              onPressed:
                  isSigningIn.value ? null : () => AuthRoute().go(context),
              icon: const Icon(Icons.keyboard_arrow_left, size: 22),
              label: const Text('Back'),
              style: OutlinedButton.styleFrom(
                foregroundColor: ColorName.black.withAlpha(150),
                side: BorderSide(color: ColorName.black.withAlpha(80)),
                shape: const StadiumBorder(),
              ),
            ),
            Gap(40.h),
            Center(
                child: Column(children: [
              Assets.images.logo1Png.image(width: 90),
              Gap(18.h),
              Text('Select Your',
                  style: TextStyle(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w500,
                      fontFamily: FontFamily.poppins)),
              Text('Account',
                  style: TextStyle(
                      fontSize: 29.sp,
                      height: 1.1,
                      fontWeight: FontWeight.w600,
                      color: ColorName.blueColor1,
                      fontFamily: FontFamily.oleoScript)),
              Gap(12.h),
              Text('Select an account to continue.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 14.sp,
                      color: ColorName.black.withAlpha(140),
                      fontFamily: FontFamily.poppins)),
            ])),
            Gap(35.h),
            users.when(
              skipLoadingOnRefresh: false,
              loading: () => Column(children: [
                for (var i = 0; i < 3; i++) ...[
                  SkeletonLoader(width: double.infinity, height: 100.h),
                  Gap(18.h),
                ],
              ]),
              error: (_, __) => message(
                  'Unable to load accounts. Try again or return to sign in.',
                  canRetry: true),
              data: (items) {
                if (items == null)
                  return message('Unable to load accounts right now.',
                      canRetry: true);
                if (items.isEmpty)
                  return message(
                      'No accounts are linked to fingerprint login on this device.',
                      canRetry: true);
                return Column(children: [
                  for (final user in items) ...[
                    _BiometricUserCard(
                        user: user,
                        selected:
                            user.id != null && selectedId.value == user.id,
                        isLoading:
                            isSigningIn.value && selectedId.value == user.id,
                        onTap: user.id == null || isSigningIn.value
                            ? null
                            : () => selectUser(user)),
                    Gap(15.h),
                  ],
                ]);
              },
            ),
            Gap(12.h),
            Center(
                child: TextButton(
              onPressed:
                  isSigningIn.value ? null : () => AuthRoute().go(context),
              child: const Text(
                'Sign in with another account',
                style: TextStyle(fontFamily: FontFamily.poppins),
              ),
            )),
          ]),
        ),
      ),
    );
  }
}

class _BiometricUserCard extends StatelessWidget {
  const _BiometricUserCard(
      {required this.user,
      required this.selected,
      required this.isLoading,
      required this.onTap});
  final BiometricUserInfo user;
  final bool selected;
  final bool isLoading;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final imagePath = user.profileImage?.trim() ?? '';
    final roles = user.userType
            ?.map((role) => role.trim().toLowerCase())
            .where((role) => role.isNotEmpty)
            .toSet() ??
        <String>{};
    Widget avatar() => Assets.images.profileImage
        .image(width: 48, height: 48, fit: BoxFit.cover);
    return Semantics(
      selected: selected,
      button: true,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 180),
        decoration: BoxDecoration(
          color: selected ? ColorName.blueColor.withAlpha(10) : ColorName.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
              color: selected ? ColorName.blueColor : Colors.transparent),
          boxShadow: [
            BoxShadow(
                color: ColorName.black.withAlpha(20),
                blurRadius: 10,
                offset: const Offset(2, 4))
          ],
        ),
        child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: onTap,
              borderRadius: BorderRadius.circular(12),
              child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(children: [
                    Container(
                      width: 54,
                      height: 54,
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: ColorName.lightBackground4,
                          border:
                              Border.all(color: ColorName.black.withAlpha(40))),
                      child: ClipOval(
                          child: imagePath.isEmpty
                              ? avatar()
                              : Image.network(
                                  '${Endpoints.profileImageBaseURL}/user/$imagePath',
                                  fit: BoxFit.cover,
                                  errorBuilder: (_, __, ___) => avatar(),
                                )),
                    ),
                    Gap(12.w),
                    Expanded(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                          Text(
                              user.name?.trim().isNotEmpty == true
                                  ? user.name!
                                  : 'Account',
                              style: TextStyle(
                                  fontSize: 16.5.sp,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: FontFamily.poppins)),
                          Gap(6.h),
                          Wrap(spacing: 6, runSpacing: 6, children: [
                            for (final role in roles)
                              _UserRoleBadge(role: role),
                          ]),
                        ])),
                    Gap(8.w),
                    if (isLoading)
                      const _AccountSignInLoader()
                    else
                      Container(
                        width: 34,
                        height: 34,
                        decoration: BoxDecoration(
                          color: ColorName.blueColor.withAlpha(12),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Icon(Icons.arrow_forward_rounded,
                            color: ColorName.blueColor, size: 20),
                      ),
                  ])),
            )),
      ),
    );
  }
}

class _AccountSignInLoader extends HookWidget {
  const _AccountSignInLoader();

  @override
  Widget build(BuildContext context) {
    final reduceMotion = MediaQuery.disableAnimationsOf(context);
    final controller = useAnimationController(
      duration: const Duration(milliseconds: 1200),
    );
    useEffect(() {
      if (!reduceMotion) controller.repeat();
      return controller.stop;
    }, [reduceMotion]);
    final progress = useAnimation(controller);
    return Semantics(
      label: 'Signing in',
      liveRegion: true,
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Container(
          width: 48,
          height: 34,
          decoration: BoxDecoration(
            color: ColorName.blueColor.withAlpha(14),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            for (var index = 0; index < 3; index++)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2),
                child: Transform.translate(
                  offset: Offset(
                      0,
                      reduceMotion
                          ? 0
                          : -3 *
                              math.sin(
                                  (progress - index * 0.18) * math.pi * 2)),
                  child: Container(
                    width: 6,
                    height: 6,
                    decoration: const BoxDecoration(
                        color: ColorName.blueColor, shape: BoxShape.circle),
                  ),
                ),
              ),
          ]),
        ),
        const SizedBox(height: 4),
        const Text('Signing in',
            style: TextStyle(
                fontSize: 10,
                color: ColorName.blueColor,
                fontFamily: FontFamily.poppins)),
      ]),
    );
  }
}

class _UserRoleBadge extends StatelessWidget {
  const _UserRoleBadge({required this.role});

  final String role;

  @override
  Widget build(BuildContext context) {
    final (foreground, background) = switch (role) {
      'guardian' => (const Color(0xFF6D28D9), const Color(0xFFF3E8FF)),
      'teacher' => (const Color(0xFF1D4ED8), const Color(0xFFEFF6FF)),
      'student' => (const Color(0xFF047857), const Color(0xFFECFDF5)),
      _ => (const Color(0xFF475569), const Color(0xFFF1F5F9)),
    };
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text('${role[0].toUpperCase()}${role.substring(1)}',
          style: TextStyle(
              fontSize: 12.sp,
              color: foreground,
              fontWeight: FontWeight.w500,
              fontFamily: FontFamily.poppins)),
    );
  }
}
