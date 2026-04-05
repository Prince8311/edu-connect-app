import 'package:edu_connect/core/shared/miscellaneous/app_extensions.dart';
import 'package:edu_connect/core/shared/miscellaneous/gap.dart';
import 'package:edu_connect/core/shared/widgets/app_bar.dart';
import 'package:edu_connect/core/shared/widgets/text_field.dart';
import 'package:edu_connect/gen/colors.gen.dart';
import 'package:edu_connect/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ChapterAddScreen extends HookConsumerWidget {
  const ChapterAddScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final chapterIndexController = useTextEditingController();
    final chapterNameController = useTextEditingController();

    return Scaffold(
      backgroundColor: ColorName.white,
      appBar: const PrimaryAppBar(
        title: 'Add Chapter',
        useHomeRouteOnBack: false,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 16.0),
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: const TextStyle(
                      fontSize: 13,
                      color: ColorName.black1,
                      fontFamily: FontFamily.poppins,
                    ),
                    children: [
                      TextSpan(
                        text: "Subject: ",
                        style: TextStyle(
                          color: ColorName.black.withAlpha(100),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextSpan(
                        text: "Mathematics",
                        style: const TextStyle(
                          color: ColorName.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                Gap(15.h),
                AppTextField(
                  label: 'Chapter No.',
                  controller: chapterIndexController,
                  keyboardType: TextInputType.number,
                ),
                Gap(15.h),
                AppTextField(
                  label: 'Chapter Name',
                  controller: chapterNameController,
                ),
                Gap(15.h),
                Padding(
                  padding: const EdgeInsets.only(left: 4),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: const TextStyle(
                        fontSize: 13,
                        color: ColorName.black,
                        fontWeight: FontWeight.w500,
                        fontFamily: FontFamily.poppins,
                      ),
                      children: [
                        TextSpan(
                          text: "Upload Chapter PDF ",
                        ),
                        TextSpan(
                          text: "(Max size: 10MB)",
                          style: TextStyle(
                            color: ColorName.black.withAlpha(120),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Gap(6.h),
                Container(
                  height: 125,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: ColorName.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: ColorName.borderColor,
                      width: 1.25,
                    ),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.upload_file,
                          size: 36,
                          color: ColorName.black1.withAlpha(100),
                        ),
                        Gap(10.h),
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            style: const TextStyle(
                              fontSize: 13,
                              color: ColorName.black1,
                              fontFamily: FontFamily.poppins,
                            ),
                            children: [
                              const TextSpan(
                                text: "Tap to upload file, ",
                              ),
                              TextSpan(
                                text: "click here.",
                                style: const TextStyle(
                                  color: ColorName.redColor1,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Spacer(),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle book addition logic here
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ColorName.themeColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text(
                      'Add Chapter',
                      style: TextStyle(
                        fontSize: 16,
                        color: ColorName.white,
                        fontFamily: FontFamily.poppins,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
