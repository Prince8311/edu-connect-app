import 'package:edu_connect/core/shared/widgets/app_bar.dart';
import 'package:edu_connect/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ClassroomDetailsScreen extends HookConsumerWidget {
  const ClassroomDetailsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: ColorName.white,
      appBar: const PrimaryAppBar(
        title: 'Classroom Details',
        useHomeRouteOnBack: false,
      ),
    );
  }
}
