import 'dart:async';
import 'dart:math' as math;

import 'package:edu_connect/core/router/app_router.dart';
import 'package:edu_connect/core/shared/helpers/local_storage.dart';
import 'package:edu_connect/features/profile/presentation/providers/biometric_provider.dart';
import 'package:edu_connect/features/auth/presentation/providers/auth_token_provider.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:edu_connect/core/shared/miscellaneous/app_extensions.dart';
import 'package:edu_connect/core/shared/miscellaneous/gap.dart';
import 'package:edu_connect/core/shared/widgets/text_field.dart';
import 'package:edu_connect/core/shared/widgets/toast.dart';
import 'package:edu_connect/features/auth/domain/models/auth_model.dart';
import 'package:edu_connect/features/auth/presentation/providers/auth_provider.dart';
import 'package:edu_connect/gen/assets.gen.dart';
import 'package:edu_connect/gen/colors.gen.dart';
import 'package:edu_connect/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:url_launcher/url_launcher.dart';

class AuthScreen extends HookConsumerWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final fingerprintEnabled =
        ref.watch(biometricLoginAvailableProvider).asData?.value ?? false;
    final isPassword = useState(true);
    final showOtpField = useState(false);
    final nameController = useTextEditingController();
    final passwordController = useTextEditingController();
    final termsRecognizer = useMemoized(() => TapGestureRecognizer());
    final privacyRecognizer = useMemoized(() => TapGestureRecognizer());

    Future<void> openLegalLink(String url) async {
      try {
        final launched = await launchUrl(
          Uri.parse(url),
          mode: LaunchMode.externalApplication,
        );
        if (!launched && context.mounted) {
          errorToast('Unable to open link. Please try again.');
        }
      } catch (_) {
        if (context.mounted) {
          errorToast('Unable to open link. Please try again.');
        }
      }
    }

    termsRecognizer.onTap =
        () => openLegalLink('https://educonnekt.in/terms-conditions');
    privacyRecognizer.onTap =
        () => openLegalLink('https://educonnekt.in/privacy-policy');

    useEffect(() {
      return () {
        termsRecognizer.dispose();
        privacyRecognizer.dispose();
      };
    }, [termsRecognizer, privacyRecognizer]);

    final controllers = useMemoized(
      () => List.generate(6, (_) => TextEditingController()),
    );

    final focusNodes = useMemoized(
      () => List.generate(6, (_) => FocusNode()),
    );

    final secondsLeft = useState(0);
    final timer = useRef<Timer?>(null);
    final isLoading = useState(false);
    final biometricBusy = useState(false);
    final authBusy = isLoading.value || biometricBusy.value;

    Future<void> loginWithBiometric() async {
      if (isLoading.value || biometricBusy.value) return;
      biometricBusy.value = true;
      const label = 'Fingerprint';
      try {
        final service = ref.read(biometricServiceProvider);
        final unavailable = await service.availabilityError();
        if (!context.mounted) return;
        if (unavailable != null) {
          errorToast(unavailable);
          return;
        }
        final verified = await service.verify();
        if (!context.mounted || !verified) return;
        final storage = ref.read(secureStorageProvider);
        final deviceId =
            await storage.readData(LocalStorageKeys.biometricDeviceId);
        final config = await readBiometricConfig(storage);
        if (deviceId == null ||
            deviceId.isEmpty ||
            config == null ||
            config.type != fingerprintBiometricType ||
            config.deviceToken.isEmpty ||
            config.users.isEmpty) {
          errorToast(
              '$label login is unavailable. Please sign in with your password and set it up again.');
          return;
        }
        final deviceToken = config.deviceToken;
        final result = await ref.refresh(biometricLoginProvider(
          requestBody: BiometricLoginRequest(
            deviceId: deviceId,
            deviceToken: deviceToken,
            biometricType: fingerprintBiometricType,
          ),
        ).future);
        if (!context.mounted || result == null) return;
        if (result.userChoose == true) {
          UserSelectRoute().go(context);
        } else if (result.nextScreen == 'home' &&
            result.authToken?.isNotEmpty == true) {
          HomeRoute().go(context);
        } else if (result.nextScreen == 'selectRole') {
          RoleSelectRoute().go(context);
        } else if (result.nextScreen == 'selectStudent') {
          StudentSelectRoute().go(context);
        } else {
          errorToast('Unable to complete sign in. Please try again.');
        }
      } on PlatformException catch (error) {
        if (context.mounted) errorToast(BiometricService.errorMessage(error));
      } catch (_) {
        if (context.mounted)
          errorToast('Unable to sign in with $label. Please try again.');
      } finally {
        if (context.mounted) {
          biometricBusy.value = false;
        }
      }
    }

    final otpStatus = useState<_OtpStatus>(_OtpStatus.idle);
    final completedTicks = useState(0);
    final shakeController = useAnimationController(
      duration: const Duration(milliseconds: 450),
    );
    final shakeProgress = useAnimation(shakeController);
    final otpColor = switch (otpStatus.value) {
      _OtpStatus.idle => null,
      _OtpStatus.error => Colors.red.shade600,
      _OtpStatus.success => Colors.green.shade600,
    };

    void resetOtpFeedback() {
      otpStatus.value = _OtpStatus.idle;
      completedTicks.value = 0;
      shakeController.reset();
    }

    Future<void> showOtpError() async {
      otpStatus.value = _OtpStatus.error;
      unawaited(HapticFeedback.vibrate().catchError((Object _) {}));
      await shakeController.forward(from: 0).orCancel;
    }

    final otp = controllers.map((c) => c.text).join();

    useListenable(nameController);
    useListenable(passwordController);
    for (final c in controllers) {
      useListenable(c);
    }

    final isFormValid = isPassword.value
        ? nameController.text.trim().isNotEmpty &&
            passwordController.text.trim().isNotEmpty
        : showOtpField.value
            ? nameController.text.trim().isNotEmpty && otp.length == 6
            : nameController.text.trim().isNotEmpty;

    void startTimer() {
      secondsLeft.value = 90;
      timer.value?.cancel();
      timer.value = Timer.periodic(const Duration(seconds: 1), (t) {
        if (secondsLeft.value == 0) {
          t.cancel();
        } else {
          secondsLeft.value--;
        }
      });
    }

    useEffect(() {
      return () {
        for (final c in controllers) {
          c.dispose();
        }
        for (final f in focusNodes) {
          f.dispose();
        }
      };
    }, []);

    useEffect(() {
      return () {
        timer.value?.cancel();
      };
    }, []);

    return Scaffold(
      backgroundColor: ColorName.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Center(
                        child: Column(
                          children: [
                            Assets.images.logo1Jpg.image(
                              width: 75,
                              fit: BoxFit.contain,
                            ),
                            Gap(6.h),
                            Text(
                              'Edu Connekt',
                              style: TextStyle(
                                fontSize: 23.sp,
                                fontWeight: FontWeight.w600,
                                fontFamily: FontFamily.poppins,
                              ),
                            ),
                            Gap(2.h),
                            Text(
                              'School & college management',
                              style: TextStyle(
                                fontSize: 15.sp,
                                height: 1,
                                color: ColorName.black2,
                                fontFamily: FontFamily.poppins,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Gap(28.h),
                      Center(
                        child: Text(
                          'Welcome',
                          style: TextStyle(
                            fontSize: 31.sp,
                            fontWeight: FontWeight.w600,
                            fontFamily: FontFamily.oleoScript,
                          ),
                        ),
                      ),
                      Gap(2.h),
                      Center(
                        child: Text(
                          'Please sign in to continue your journey',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14.sp,
                            height: 1,
                            color: ColorName.black2,
                            fontFamily: FontFamily.poppins,
                          ),
                        ),
                      ),
                      Gap(22.h),
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: ColorName.lightBackground3,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: GestureDetector(
                                onTap: authBusy
                                    ? null
                                    : () {
                                        resetOtpFeedback();
                                        isPassword.value = true;
                                      },
                                child: Container(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 12),
                                  decoration: BoxDecoration(
                                    color: isPassword.value
                                        ? ColorName.white
                                        : ColorName.transparent,
                                    borderRadius: BorderRadius.circular(7),
                                    boxShadow: isPassword.value
                                        ? const [
                                            BoxShadow(
                                              color:
                                                  Color.fromRGBO(0, 0, 0, 0.08),
                                              blurRadius: 12,
                                              spreadRadius: 1,
                                              offset: Offset(0, 0),
                                            ),
                                          ]
                                        : null,
                                  ),
                                  child: Text(
                                    'Password',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: isPassword.value
                                          ? ColorName.blueColor
                                          : ColorName.black1,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16.sp,
                                      fontFamily: FontFamily.poppins,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: GestureDetector(
                                onTap: authBusy
                                    ? null
                                    : () {
                                        resetOtpFeedback();
                                        isPassword.value = false;
                                      },
                                child: Container(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 12),
                                  decoration: BoxDecoration(
                                    color: !isPassword.value
                                        ? ColorName.white
                                        : ColorName.transparent,
                                    borderRadius: BorderRadius.circular(7),
                                    boxShadow: !isPassword.value
                                        ? const [
                                            BoxShadow(
                                              color:
                                                  Color.fromRGBO(0, 0, 0, 0.08),
                                              blurRadius: 12,
                                              spreadRadius: 1,
                                              offset: Offset(0, 0),
                                            ),
                                          ]
                                        : null,
                                  ),
                                  child: Text(
                                    'OTP',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: !isPassword.value
                                          ? ColorName.blueColor
                                          : ColorName.black1,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16.sp,
                                      fontFamily: FontFamily.poppins,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Gap(24.h),
                      AppTextField(
                        label: 'Email / Mobile No.',
                        controller: nameController,
                        keyboardType: TextInputType.emailAddress,
                      ),
                      if (isPassword.value) ...[
                        Gap(15.h),
                        AppTextField(
                          label: 'Password',
                          controller: passwordController,
                          obscureText: true,
                        ),
                      ],
                      if (!isPassword.value && showOtpField.value) ...[
                        Gap(15.h),
                        Padding(
                          padding: const EdgeInsets.only(left: 4),
                          child: Text(
                            'Enter OTP',
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: ColorName.black,
                              fontFamily: FontFamily.poppins,
                            ),
                          ),
                        ),
                        Gap(6.h),
                        Transform.translate(
                          offset: Offset(
                            math.sin(shakeProgress * math.pi * 8) *
                                9 *
                                (1 - shakeProgress),
                            0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: List.generate(6, (index) {
                              return SizedBox(
                                width: 45,
                                height: 45,
                                child: AnimatedSwitcher(
                                  duration: const Duration(milliseconds: 180),
                                  child: index < completedTicks.value
                                      ? Container(
                                          key: ValueKey('otp-tick-$index'),
                                          width: 45,
                                          height: 45,
                                          decoration: BoxDecoration(
                                            color: otpColor?.withAlpha(24),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            border: Border.all(
                                              color: otpColor!,
                                              width: 1.2,
                                            ),
                                          ),
                                          child: Icon(Icons.check_rounded,
                                              color: otpColor, size: 26),
                                        )
                                      : TextField(
                                          key: ValueKey('otp-digit-$index'),
                                          readOnly: authBusy,
                                          inputFormatters: [
                                            FilteringTextInputFormatter
                                                .digitsOnly
                                          ],
                                          controller: controllers[index],
                                          focusNode: focusNodes[index],
                                          keyboardType: TextInputType.number,
                                          textAlign: TextAlign.center,
                                          maxLength: 1,
                                          cursorColor: ColorName.black,
                                          style: TextStyle(
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: FontFamily.poppins,
                                          ),
                                          decoration: InputDecoration(
                                            filled: otpColor != null,
                                            fillColor: otpColor?.withAlpha(24),
                                            counterText: "",
                                            contentPadding: EdgeInsets.zero,
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              borderSide: BorderSide(
                                                color: otpColor ??
                                                    ColorName.borderColor,
                                                width: 1.2,
                                              ),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              borderSide: BorderSide(
                                                color: otpColor ??
                                                    ColorName.blueColor,
                                                width: 1.3,
                                              ),
                                            ),
                                          ),
                                          onChanged: (value) {
                                            resetOtpFeedback();
                                            if (value.isNotEmpty && index < 5) {
                                              FocusScope.of(context)
                                                  .requestFocus(
                                                      focusNodes[index + 1]);
                                            }
                                            if (value.isEmpty && index > 0) {
                                              FocusScope.of(context)
                                                  .requestFocus(
                                                      focusNodes[index - 1]);
                                            }
                                          },
                                        ),
                                ),
                              );
                            }),
                          ),
                        ),
                      ],
                      if (!isPassword.value && showOtpField.value) ...[
                        Gap(10.h),
                        Padding(
                          padding: const EdgeInsets.only(right: 6),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: secondsLeft.value > 0
                                ? Text(
                                    'Resend OTP in ${secondsLeft.value}s',
                                    style: TextStyle(
                                      fontSize: 13.sp,
                                      color: ColorName.black2,
                                      fontFamily: FontFamily.poppins,
                                    ),
                                  )
                                : GestureDetector(
                                    onTap: authBusy
                                        ? null
                                        : () {
                                            resetOtpFeedback();
                                            startTimer();
                                            successToast("OTP resent");
                                          },
                                    child: Text(
                                      'Resend OTP',
                                      style: TextStyle(
                                        fontSize: 13.sp,
                                        color: ColorName.blueColor,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: FontFamily.poppins,
                                      ),
                                    ),
                                  ),
                          ),
                        ),
                      ],
                      Gap(isPassword.value ? 30.h : 20.h),
                      FilledButton(
                        onPressed: (isFormValid && !authBusy)
                            ? () async {
                                if (isPassword.value) {
                                  isLoading.value = true;
                                  final request = LoginRequest(
                                    name: nameController.text.trim(),
                                    loginByOtp: false,
                                    password: passwordController.text.trim(),
                                  );
                                  print("Login Request: ${request.toJson()}");
                                  final result = await ref.read(
                                      loginProvider(requestBody: request)
                                          .future);
                                  isLoading.value = false;
                                  if (!context.mounted) return;
                                  if (result?.nextScreen == 'home') {
                                    if (result?.authToken != null &&
                                        context.mounted) {
                                      HomeRoute().go(context);
                                    }
                                  } else if (result?.nextScreen ==
                                      'selectRole') {
                                    RoleSelectRoute().go(context);
                                  } else if (result?.nextScreen ==
                                      'selectStudent') {
                                    StudentSelectRoute().go(context);
                                  }
                                } else {
                                  if (!showOtpField.value) {
                                    isLoading.value = true;
                                    startTimer();
                                    final request = OtpRequest(
                                      name: nameController.text.trim(),
                                    );
                                    final result = await ref.read(
                                        sendOtpProvider(requestBody: request)
                                            .future);
                                    isLoading.value = false;
                                    if (result == true) {
                                      showOtpField.value = true;
                                    }
                                  } else {
                                    isLoading.value = true;
                                    resetOtpFeedback();
                                    FocusScope.of(context).unfocus();
                                    final request = LoginRequest(
                                      name: nameController.text.trim(),
                                      loginByOtp: true,
                                      otp: otp,
                                    );
                                    try {
                                      final result = await ref.refresh(
                                          loginProvider(requestBody: request)
                                              .future);
                                      if (!context.mounted) return;
                                      if (result == null) {
                                        await showOtpError();
                                        return;
                                      }
                                      final canNavigate = (result.nextScreen ==
                                                  'home' &&
                                              result.authToken != null) ||
                                          result.nextScreen == 'selectRole' ||
                                          result.nextScreen == 'selectStudent';
                                      if (!canNavigate) {
                                        errorToast(
                                            'Unable to complete sign in. Please try again.');
                                        return;
                                      }
                                      otpStatus.value = _OtpStatus.success;
                                      await Future<void>.delayed(
                                          const Duration(milliseconds: 200));
                                      for (var i = 1; i <= 6; i++) {
                                        if (!context.mounted) return;
                                        completedTicks.value = i;
                                        await Future<void>.delayed(
                                            const Duration(milliseconds: 160));
                                      }
                                      await Future<void>.delayed(
                                          const Duration(milliseconds: 250));
                                      if (!context.mounted) return;
                                      ref.invalidate(authTokenProvider);

                                      if (result.nextScreen == 'home') {
                                        if (result.authToken != null &&
                                            context.mounted) {
                                          HomeRoute().go(context);
                                        }
                                      } else if (result.nextScreen ==
                                          'selectRole') {
                                        await RoleSelectRoute()
                                            .push<void>(context);
                                      } else if (result.nextScreen ==
                                          'selectStudent') {
                                        await StudentSelectRoute()
                                            .push<void>(context);
                                      }
                                    } on TickerCanceled {
                                      // The screen was disposed during the shake.
                                    } catch (_) {
                                      if (context.mounted) {
                                        errorToast(
                                            'Unable to verify OTP. Please try again.');
                                      }
                                    } finally {
                                      if (context.mounted) {
                                        isLoading.value = false;
                                        if (otpStatus.value ==
                                            _OtpStatus.success) {
                                          resetOtpFeedback();
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            : null,
                        style: FilledButton.styleFrom(
                          backgroundColor: ColorName.blueColor,
                          disabledBackgroundColor:
                              ColorName.blueColor.withAlpha(100),
                          foregroundColor: ColorName.white,
                          disabledForegroundColor: ColorName.white,
                          padding: const EdgeInsets.symmetric(vertical: 13),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          textStyle: TextStyle(
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w600,
                            fontFamily: FontFamily.poppins,
                          ),
                        ),
                        child: isLoading.value
                            ? SpinKitThreeBounce(
                                color: Colors.white,
                                size: 20.sp,
                              )
                            : Text(
                                isPassword.value
                                    ? 'Sign In'
                                    : showOtpField.value
                                        ? 'Verify OTP & Sign In'
                                        : 'Send OTP',
                              ),
                      ),
                      if (fingerprintEnabled) ...[
                        Gap(24.h),
                        Row(
                          children: [
                            Expanded(
                                child: Divider(color: ColorName.borderColor1)),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 12),
                              child: Text(
                                'OR ACCESS VIA',
                                style: TextStyle(
                                  color: ColorName.black3,
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: FontFamily.poppins,
                                ),
                              ),
                            ),
                            Expanded(
                                child: Divider(color: ColorName.borderColor1)),
                          ],
                        ),
                        Gap(20.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            if (fingerprintEnabled)
                              _AuthIconButton(
                                icon: Icons.fingerprint,
                                onTap: authBusy
                                    ? null
                                    : loginWithBiometric,
                                isLoading: biometricBusy.value,
                              ),
                          ],
                        ),
                      ],
                      Gap(24.h),
                      Center(
                        child: Text.rich(
                          TextSpan(
                            text: 'By signing in, you agree to our ',
                            style: TextStyle(
                              color: ColorName.black2,
                              fontSize: 13.sp,
                              fontFamily: FontFamily.poppins,
                            ),
                            children: [
                              TextSpan(
                                text: 'Terms & Conditions',
                                recognizer: termsRecognizer,
                                style: TextStyle(
                                  color: ColorName.blueColor,
                                ),
                              ),
                              const TextSpan(text: ' and '),
                              TextSpan(
                                text: 'Privacy Policy',
                                recognizer: privacyRecognizer,
                                style: TextStyle(
                                  color: ColorName.blueColor,
                                ),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

enum _OtpStatus { idle, error, success }

class _AuthIconButton extends HookWidget {
  const _AuthIconButton({
    required this.icon,
    required this.onTap,
    this.isLoading = false,
  });

  final IconData icon;
  final VoidCallback? onTap;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    final reduceMotion = MediaQuery.disableAnimationsOf(context);
    final controller = useAnimationController(
      duration: const Duration(milliseconds: 1800),
    );
    useEffect(() {
      if (isLoading && !reduceMotion) {
        controller.repeat();
      } else {
        controller.stop();
        controller.value = 0;
      }
      return null;
    }, [isLoading, reduceMotion]);
    final progress = useAnimation(controller);
    final pulse = (1 - math.cos(progress * math.pi * 2)) / 2;

    return Semantics(
      button: true,
      enabled: onTap != null,
      liveRegion: true,
      label: 'Fingerprint sign in',
      value: isLoading ? 'Verifying identity' : null,
      child: InkWell(
        onTap: isLoading ? null : onTap,
        borderRadius: BorderRadius.circular(16),
        child: Container(
          width: 52,
          height: 52,
          decoration: BoxDecoration(
            color: isLoading
                ? ColorName.blueColor.withAlpha(18)
                : ColorName.lightBackground4,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: isLoading
                  ? ColorName.blueColor.withAlpha(100)
                  : ColorName.borderColor,
            ),
            boxShadow: isLoading
                ? [
                    BoxShadow(
                      color: ColorName.blueColor
                          .withAlpha((25 + pulse * 25).round()),
                      blurRadius: 8 + pulse * 8,
                      spreadRadius: pulse * 2,
                    )
                  ]
                : null,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Transform.scale(
                scale: isLoading ? 0.94 + pulse * 0.06 : 1,
                child: Icon(icon, color: ColorName.blueColor, size: 32.sp),
              ),
              if (isLoading)
                Positioned.fill(
                  child: IgnorePointer(
                    child: CustomPaint(
                      painter: _FingerprintScanPainter(
                        progress: reduceMotion ? 0.5 : progress,
                        color: ColorName.blueColor,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class _FingerprintScanPainter extends CustomPainter {
  const _FingerprintScanPainter({required this.progress, required this.color});

  final double progress;
  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final bounds = Offset.zero & size;
    final outline =
        RRect.fromRectAndRadius(bounds.deflate(2), const Radius.circular(14));
    final path = Path()..addRRect(outline);
    final metric = path.computeMetrics().first;
    final start = progress * metric.length;
    final length = metric.length * 0.28;
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2
      ..strokeCap = StrokeCap.round;
    canvas.drawPath(
        metric.extractPath(start, math.min(start + length, metric.length)),
        paint);
    if (start + length > metric.length) {
      canvas.drawPath(
          metric.extractPath(0, start + length - metric.length), paint);
    }

    canvas.save();
    canvas.clipRRect(outline);
    final y =
        10 + (size.height - 20) * (1 - math.cos(progress * math.pi * 2)) / 2;
    final scan = Rect.fromLTWH(9, y - 7, size.width - 18, 9);
    canvas.drawRect(
        scan,
        Paint()
          ..shader = LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [color.withAlpha(0), color.withAlpha(65)],
          ).createShader(scan));
    canvas.drawLine(
        Offset(10, y + 2),
        Offset(size.width - 10, y + 2),
        Paint()
          ..color = color.withAlpha(190)
          ..strokeWidth = 1.5);
    canvas.restore();
  }

  @override
  bool shouldRepaint(_FingerprintScanPainter oldDelegate) =>
      progress != oldDelegate.progress || color != oldDelegate.color;
}
