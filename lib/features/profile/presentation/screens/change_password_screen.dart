import 'package:edu_connect/core/shared/widgets/app_bar.dart';
import 'package:edu_connect/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ChangePasswordScreen extends HookConsumerWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: ColorName.white,
      appBar: const PrimaryAppBar(
        title: 'Change Password',
        useHomeRouteOnBack: false,
      ),
    );
  }
}
