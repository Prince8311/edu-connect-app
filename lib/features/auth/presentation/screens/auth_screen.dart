import 'package:edu_connect/core/router/app_router.dart';
import 'package:edu_connect/core/shared/miscellaneous/app_extensions.dart';
import 'package:edu_connect/core/shared/miscellaneous/gap.dart';
import 'package:edu_connect/core/shared/widgets/text_field.dart';
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
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();

    return Scaffold(
      backgroundColor: ColorName.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
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
                        controller: emailController,
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
                      Gap(28.h),
                      FilledButton(
                        onPressed: () => TeacherHomeRoute().go(context),
                        style: FilledButton.styleFrom(
                          backgroundColor: ColorName.blueColor,
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
                        child: Text(isPassword.value ? 'Sign In' : 'Send OTP'),
                      ),
                      Gap(20.h),
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
                      Gap(18.h),
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
