import 'package:edu_connect/core/shared/miscellaneous/gap.dart';
import 'package:edu_connect/core/shared/widgets/app_bar.dart';
import 'package:edu_connect/core/shared/widgets/text_field.dart';
import 'package:edu_connect/core/shared/widgets/toast.dart';
import 'package:edu_connect/features/profile/domain/models/profile_model.dart';
import 'package:edu_connect/features/profile/presentation/providers/profile_provider.dart';
import 'package:edu_connect/gen/colors.gen.dart';
import 'package:edu_connect/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:edu_connect/core/shared/miscellaneous/app_extensions.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ChangePasswordScreen extends HookConsumerWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentPasswordController = useTextEditingController();
    final newPasswordController = useTextEditingController();
    final confirmPasswordController = useTextEditingController();
    final isLoading = useState(false);

    useListenable(currentPasswordController);
    useListenable(newPasswordController);
    useListenable(confirmPasswordController);

    useEffect(() {
      return () {
        currentPasswordController.dispose();
        newPasswordController.dispose();
        confirmPasswordController.dispose();
      };
    }, []);

    final isFormValid = currentPasswordController.text.trim().isNotEmpty &&
        newPasswordController.text.trim().isNotEmpty &&
        confirmPasswordController.text.trim().isNotEmpty &&
        newPasswordController.text == confirmPasswordController.text;

    return Scaffold(
      backgroundColor: ColorName.white,
      appBar: const PrimaryAppBar(
        title: 'Change Password',
        useHomeRouteOnBack: false,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppTextField(
                        label: 'Current Password',
                        controller: currentPasswordController,
                        obscureText: true,
                      ),
                      Gap(15.h),
                      AppTextField(
                        label: 'New Password',
                        controller: newPasswordController,
                        obscureText: true,
                      ),
                      Gap(15.h),
                      AppTextField(
                        label: 'Confirm Password',
                        controller: confirmPasswordController,
                        obscureText: true,
                      ),
                    ],
                  ),
                ),
              ),
              Gap(16.h),
              ValueListenableBuilder<TextEditingValue>(
                valueListenable: currentPasswordController,
                builder: (_, __, ___) {
                  return ValueListenableBuilder<TextEditingValue>(
                    valueListenable: newPasswordController,
                    builder: (_, __, ___) {
                      return ValueListenableBuilder<TextEditingValue>(
                        valueListenable: confirmPasswordController,
                        builder: (_, __, ___) {
                          final canSubmit = isFormValid && !isLoading.value;
                          return SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: canSubmit
                                  ? () async {
                                      isLoading.value = true;
                                      try {
                                        final request = ChangePasswordRequest(
                                          password: currentPasswordController
                                              .text
                                              .trim(),
                                          newPassword:
                                              newPasswordController.text.trim(),
                                          confirmPassword:
                                              confirmPasswordController.text
                                                  .trim(),
                                        );

                                        final result = await ref.read(
                                          changePasswordProvider(
                                            requestBody: request,
                                          ).future,
                                        );

                                        if (!context.mounted) return;

                                        if (result == true) {
                                          successToast(
                                              'Password updated successfully');
                                          Navigator.of(context).pop();
                                        } else {
                                          errorToast(
                                              'Failed to update password. Please try again.');
                                        }
                                      } catch (e) {
                                        if (context.mounted) {
                                          errorToast(
                                              'An error occurred. Please try again.');
                                        }
                                      } finally {
                                        if (context.mounted) {
                                          isLoading.value = false;
                                        }
                                      }
                                    }
                                  : null,
                              child: Ink(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: canSubmit
                                        ? const [
                                            ColorName.blueColor,
                                            ColorName.blueColor2,
                                          ]
                                        : [
                                            ColorName.blueColor.withAlpha(110),
                                            ColorName.blueColor2.withAlpha(110),
                                          ],
                                  ),
                                ),
                                child: AnimatedOpacity(
                                  duration: const Duration(milliseconds: 180),
                                  opacity: canSubmit ? 1 : 0.8,
                                  child: Center(
                                    child: isLoading.value
                                        ? SpinKitThreeBounce(
                                            color: Colors.white,
                                            size: 20.sp,
                                          )
                                        : Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.lock_outline,
                                                color: ColorName.white,
                                                size: 21.sp,
                                              ),
                                              Gap(3.w),
                                              Text(
                                                'Update Password',
                                                style: TextStyle(
                                                  fontSize: 17.sp,
                                                  color: ColorName.white,
                                                  fontFamily:
                                                      FontFamily.poppins,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                  ),
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.transparent,
                                shadowColor: Colors.transparent,
                                surfaceTintColor: Colors.transparent,
                                elevation: 0,
                                padding: EdgeInsets.zero,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
