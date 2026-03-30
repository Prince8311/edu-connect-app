import 'package:edu_connect/core/shared/miscellaneous/app_extensions.dart';
import 'package:edu_connect/core/shared/miscellaneous/gap.dart';
import 'package:edu_connect/gen/colors.gen.dart';
import 'package:edu_connect/gen/fonts.gen.dart';
import 'package:flutter/material.dart';

enum LibraryTab { books, materials }

class LibraryTabs extends StatelessWidget {
  final LibraryTab selected;
  final ValueChanged<LibraryTab> onChanged;

  const LibraryTabs({
    super.key,
    required this.selected,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            _tabItem(
              icon: const Icon(
                Icons.auto_stories,
                size: 19,
                color: ColorName.black1,
              ),
              selectedIcon: const Icon(
                Icons.auto_stories,
                size: 19,
                color: ColorName.white,
              ),
              label: 'Books',
              isSelected: selected == LibraryTab.books,
              onTap: () => onChanged(LibraryTab.books),
            ),
            Gap(10.w),
            _tabItem(
              icon: const Icon(
                Icons.library_books,
                size: 18,
                color: ColorName.black1,
              ),
              selectedIcon: const Icon(
                Icons.library_books,
                size: 18,
                color: ColorName.white,
              ),
              label: 'Materials',
              isSelected: selected == LibraryTab.materials,
              onTap: () => onChanged(LibraryTab.materials),
            ),
          ],
        ),
      ),
    );
  }

  Widget _tabItem({
    required Widget icon,
    required Widget selectedIcon,
    required String label,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.fromLTRB(14, 7, 20, 7),
        decoration: BoxDecoration(
          color: isSelected ? ColorName.blueColor1 : ColorName.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
              color: isSelected
                  ? ColorName.blueColor1
                  : ColorName.black.withAlpha(40)),
        ),
        child: Row(
          children: [
            isSelected ? selectedIcon : icon,
            const SizedBox(width: 6),
            Text(
              label,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w500,
                fontFamily: FontFamily.poppins,
                color: isSelected ? ColorName.white : ColorName.black1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
