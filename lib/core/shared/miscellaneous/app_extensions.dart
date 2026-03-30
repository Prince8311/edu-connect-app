import 'package:edu_connect/core/constants/constants.dart';
import 'package:edu_connect/core/router/app_router.dart';
import 'package:flutter/material.dart';

extension ScreenSizes on num {
  double get h =>
      this *
      (MediaQuery.sizeOf(rootNavigatorKey.currentState!.context).height /
          AppConstants.designHeight);
  double get w =>
      this *
      (MediaQuery.sizeOf(rootNavigatorKey.currentState!.context).width /
          AppConstants.designWidth);
  double get sh =>
      this * MediaQuery.sizeOf(rootNavigatorKey.currentState!.context).height;
  double get sw =>
      this * MediaQuery.sizeOf(rootNavigatorKey.currentState!.context).width;
}
