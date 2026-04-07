import 'package:bot_toast/bot_toast.dart';
import 'package:edu_connect/core/shared/miscellaneous/app_extensions.dart';
import 'package:edu_connect/core/shared/miscellaneous/gap.dart';
import 'package:edu_connect/gen/colors.gen.dart';
import 'package:edu_connect/gen/fonts.gen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void Function() errorToast(
  String? title, {
  String? message,
  Duration? duration,
  bool dissmissable = true,
}) {
  return BotToast.showCustomNotification(
    duration: duration ?? const Duration(seconds: kReleaseMode ? 3 : 20),
    enableSlideOff: dissmissable,
    toastBuilder: (cancelFunc) => Container(
      // height: 64,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 242, 242),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: ColorName.black.withAlpha(20)),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(202, 202, 202, 0.408),
              blurRadius: 8,
              spreadRadius: 2,
              offset: Offset(0, 0),
            )
          ]),
      padding: const EdgeInsets.fromLTRB(12, 12, 16, 12),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: ColorName.redColor.withAlpha(40),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Center(
              child: Container(
                width: 26,
                height: 26,
                decoration: BoxDecoration(
                  color: ColorName.redColor1,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Center(
                  child: Icon(
                    Icons.priority_high,
                    color: ColorName.white,
                    size: 15,
                  ),
                ),
              ),
            ),
          ),
          Gap(14.w),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                title == null
                    ? const SizedBox()
                    : Text(
                        title,
                        maxLines: 10,
                        style: TextStyle(
                          fontSize: message == null ? 13 : 14,
                          fontWeight: message == null
                              ? FontWeight.w400
                              : FontWeight.w500,
                          fontFamily: FontFamily.poppins,
                          color: message == null
                              ? ColorName.black1
                              : ColorName.black,
                        ),
                      ),
                Gap(message == null ? 0 : 2.h),
                message == null
                    ? const SizedBox()
                    : Text(
                        message,
                        maxLines: 10,
                        style: TextStyle(
                          fontSize: 13,
                          height: 1.4,
                          fontWeight: FontWeight.w400,
                          color: ColorName.black1,
                          fontFamily: FontFamily.poppins,
                        ),
                      ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

void Function() successToast(
  String? title, {
  String? message,
  Duration? duration,
}) {
  return BotToast.showCustomNotification(
    duration: duration ?? const Duration(seconds: 3),
    toastBuilder: (cancelFunc) => Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 247, 255, 249),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: ColorName.black.withAlpha(20)),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(202, 202, 202, 0.408),
              blurRadius: 8,
              spreadRadius: 2,
              offset: Offset(0, 0),
            )
          ]),
      padding: const EdgeInsets.fromLTRB(12, 12, 16, 12),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: ColorName.greenColor.withAlpha(60),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Center(
              child: Container(
                width: 26,
                height: 26,
                decoration: BoxDecoration(
                  color: ColorName.greenColor,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Center(
                  child: Icon(
                    Icons.check,
                    color: ColorName.white,
                    size: 15,
                  ),
                ),
              ),
            ),
          ),
          Gap(14.w),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                title == null
                    ? const SizedBox()
                    : Text(
                        title,
                        maxLines: 10,
                        style: TextStyle(
                          fontSize: message == null ? 14 : 13,
                          fontWeight: message == null
                              ? FontWeight.w500
                              : FontWeight.w600,
                          fontFamily: FontFamily.poppins,
                          color: message == null
                              ? ColorName.black1
                              : ColorName.black,
                        ),
                      ),
                message == null
                    ? const SizedBox()
                    : Text(
                        message,
                        maxLines: 10,
                        style: TextStyle(
                          fontSize: 13,
                          height: 1.6,
                          fontWeight: FontWeight.w500,
                          color: ColorName.black1,
                          fontFamily: FontFamily.poppins,
                        ),
                      ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
