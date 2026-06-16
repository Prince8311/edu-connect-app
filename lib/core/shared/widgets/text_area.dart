import 'package:edu_connect/gen/colors.gen.dart';
import 'package:edu_connect/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:edu_connect/core/shared/miscellaneous/app_extensions.dart';

class AppTextArea extends StatelessWidget {
  final String label;
  final TextEditingController? controller;
  final int maxLines;

  const AppTextArea({
    super.key,
    required this.label,
    this.controller,
    this.maxLines = 4,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLines: maxLines,
      keyboardType: TextInputType.multiline,
      style: TextStyle(
        fontSize: 13.sp,
        color: ColorName.black1,
        fontFamily: FontFamily.poppins,
      ),
      decoration: InputDecoration(
        alignLabelWithHint: true, // important for multiline label
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 16),

        labelText: label,
        labelStyle: TextStyle(
          fontFamily: FontFamily.poppins,
          fontSize: 13.sp,
          color: ColorName.black2,
        ),

        floatingLabelStyle: TextStyle(
          fontFamily: FontFamily.poppins,
          fontSize: 13.sp,
          color: ColorName.blueColor,
          fontWeight: FontWeight.w500,
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: ColorName.borderColor,
            width: 1.25,
          ),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: ColorName.themeColor,
            width: 1.25,
          ),
        ),
      ),
    );
  }
}








