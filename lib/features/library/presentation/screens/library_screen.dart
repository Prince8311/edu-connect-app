import 'package:edu_connect/core/shared/miscellaneous/app_extensions.dart';
import 'package:edu_connect/core/shared/miscellaneous/gap.dart';
import 'package:edu_connect/core/shared/widgets/app_bar.dart';
import 'package:edu_connect/features/library/presentation/screens/widgets/books_content.dart';
import 'package:edu_connect/features/library/presentation/screens/widgets/library_tabs.dart';
import 'package:edu_connect/features/library/presentation/screens/widgets/materials_content.dart';
import 'package:edu_connect/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LibraryScreen extends HookConsumerWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedTab = useState(LibraryTab.books);

    return Scaffold(
      backgroundColor: ColorName.lightBackground4,
      appBar: const PrimaryAppBar(title: 'Library'),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(16.h),
            LibraryTabs(
              selected: selectedTab.value,
              onChanged: (tab) => selectedTab.value = tab,
            ),
            Gap(20.h),
            if (selectedTab.value == LibraryTab.books) const BooksContent(),
            if (selectedTab.value == LibraryTab.materials)
              const MaterialsContent(),
          ],
        ),
      ),
    );
  }
}
