import 'dart:async';

import 'package:edu_connect/core/router/app_router.dart';
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
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AuthScreen extends HookConsumerWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isPassword = useState(true);
    final showOtpField = useState(false);
    final nameController = useTextEditingController();
    final passwordController = useTextEditingController();

    final controllers = useMemoized(
      () => List.generate(6, (_) => TextEditingController()),
    );

    final focusNodes = useMemoized(
      () => List.generate(6, (_) => FocusNode()),
    );

    final secondsLeft = useState(0);
    final timer = useRef<Timer?>(null);
    final isLoading = useState(false);

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
                            const Text(
                              'Edu Connekt',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                fontFamily: FontFamily.poppins,
                              ),
                            ),
                            Text(
                              'School & college management',
                              style: TextStyle(
                                fontSize: 13,
                                color: ColorName.black2,
                                fontFamily: FontFamily.poppins,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Gap(25.h),
                      const Center(
                        child: Text(
                          'Welcome',
                          style: TextStyle(
                            fontSize: 28,
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
                            fontSize: 12,
                            color: ColorName.black2,
                            fontFamily: FontFamily.poppins,
                          ),
                        ),
                      ),
                      Gap(28.h),
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
                                onTap: () => isPassword.value = true,
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
                                      fontFamily: FontFamily.poppins,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: GestureDetector(
                                onTap: () => isPassword.value = false,
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
                                      fontSize: 12,
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
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: ColorName.black,
                              fontFamily: FontFamily.poppins,
                            ),
                          ),
                        ),
                        Gap(6.h),
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
                                onChanged: (value) {
                                  if (value.isNotEmpty && index < 5) {
                                    FocusScope.of(context)
                                        .requestFocus(focusNodes[index + 1]);
                                  }
                                  if (value.isEmpty && index > 0) {
                                    FocusScope.of(context)
                                        .requestFocus(focusNodes[index - 1]);
                                  }
                                },
                              ),
                            );
                          }),
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
                                      fontSize: 12,
                                      color: ColorName.black2,
                                      fontFamily: FontFamily.poppins,
                                    ),
                                  )
                                : GestureDetector(
                                    onTap: () {
                                      startTimer();
                                      successToast("OTP resent");
                                    },
                                    child: Text(
                                      'Resend OTP',
                                      style: TextStyle(
                                        fontSize: 12,
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
                        onPressed: (isFormValid && !isLoading.value)
                            ? () async {
                                if (isPassword.value) {
                                  isLoading.value = true;
                                  final request = LoginRequest(
                                    name: nameController.text.trim(),
                                    loginByOtp: false,
                                    password: passwordController.text.trim(),
                                  );
                                  final result = await ref.read(
                                      loginProvider(requestBody: request)
                                          .future);
                                  isLoading.value = false;
                                  if (result?.authToken != null &&
                                      context.mounted) {
                                    TeacherHomeRoute().go(context);
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
                                    final request = LoginRequest(
                                      name: nameController.text.trim(),
                                      loginByOtp: true,
                                      otp: otp,
                                    );
                                    final result = await ref.read(
                                        loginProvider(requestBody: request)
                                            .future);
                                    isLoading.value = false;
                                    if (result?.authToken != null &&
                                        context.mounted) {
                                      TeacherHomeRoute().go(context);
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
                          textStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontFamily: FontFamily.poppins,
                          ),
                        ),
                        child: isLoading.value
                            ? const SpinKitThreeBounce(
                                color: Colors.white,
                                size: 20,
                              )
                            : Text(
                                isPassword.value
                                    ? 'Sign In'
                                    : showOtpField.value
                                        ? 'Verify OTP & Sign In'
                                        : 'Send OTP',
                              ),
                      ),
                      Gap(24.h),
                      Row(
                        children: [
                          Expanded(
                              child: Divider(color: ColorName.borderColor1)),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: Text(
                              'OR ACCESS VIA',
                              style: TextStyle(
                                color: ColorName.black3,
                                fontSize: 12,
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
                          _AuthIconButton(
                            icon: Icons.fingerprint,
                            onTap: () {},
                          ),
                          Gap(16.w),
                          _AuthIconButton(
                            icon: Icons.face,
                            onTap: () {},
                          ),
                        ],
                      ),
                      Gap(24.h),
                      Center(
                        child: Text.rich(
                          TextSpan(
                            text: 'By signing in, you agree to our ',
                            style: TextStyle(
                              color: ColorName.black2,
                              fontSize: 12,
                              fontFamily: FontFamily.poppins,
                            ),
                            children: [
                              TextSpan(
                                text: 'Terms & Conditions',
                                style: TextStyle(
                                  color: ColorName.blueColor,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              const TextSpan(text: ' and '),
                              TextSpan(
                                text: 'Privacy Policy',
                                style: TextStyle(
                                  color: ColorName.blueColor,
                                  decoration: TextDecoration.underline,
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

class _AuthIconButton extends StatelessWidget {
  const _AuthIconButton({
    required this.icon,
    required this.onTap,
  });

  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        width: 52,
        height: 52,
        decoration: BoxDecoration(
          color: ColorName.lightBackground4,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: ColorName.borderColor),
        ),
        child: Icon(
          icon,
          color: ColorName.blueColor,
          size: 28,
        ),
      ),
    );
  }
}
