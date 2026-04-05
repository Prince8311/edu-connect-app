import 'package:edu_connect/core/router/app_router.dart';
import 'package:edu_connect/core/shared/miscellaneous/app_extensions.dart';
import 'package:edu_connect/core/shared/miscellaneous/gap.dart';
import 'package:edu_connect/gen/assets.gen.dart';
import 'package:edu_connect/gen/colors.gen.dart';
import 'package:edu_connect/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BooksContent extends HookConsumerWidget {
  const BooksContent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Expanded(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 2),
                decoration: BoxDecoration(
                  color: ColorName.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withAlpha(10),
                      blurRadius: 14,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      size: 25,
                      color: ColorName.blueColor,
                    ),
                    hintText: 'Search books by title, author, or ISBN...',
                    hintStyle: TextStyle(
                      fontSize: 13,
                      color: ColorName.black3,
                      fontFamily: FontFamily.poppins,
                    ),
                    filled: true,
                    fillColor: ColorName.white,
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 14, horizontal: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: BorderSide.none,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              Gap(12.h),
              Row(
                children: [
                  Expanded(
                    child: _filterOption(label: 'Classes'),
                  ),
                  Gap(12.h),
                  Expanded(
                    child: _filterOption(label: 'Subjects'),
                  ),
                ],
              ),
              Gap(16.h),
              _uploadNewBookCard(context: context),
              Gap(24.h),
              LayoutBuilder(
                builder: (context, constraints) {
                  final cardWidth = (constraints.maxWidth - 16) / 2;
                  return Wrap(
                    spacing: 16,
                    runSpacing: 16,
                    children: [
                      _bookCard(
                        context: context,
                        width: cardWidth,
                        title: 'Shahnai',
                        subtitle: 'Class I • Urdu',
                        status: 'Available',
                        badgeText: 'NEW',
                      ),
                      _bookCard(
                        context: context,
                        width: cardWidth,
                        title: 'Saman',
                        subtitle: 'Class II • English',
                        status: 'Available',
                        badgeText: 'NEW',
                      ),
                      _bookCard(
                        context: context,
                        width: cardWidth,
                        title: 'Qirath',
                        subtitle: 'Class III • Arabic',
                        status: 'Available',
                        badgeText: 'NEW',
                      ),
                      _bookCard(
                        context: context,
                        width: cardWidth,
                        title: 'Nazar',
                        subtitle: 'Class IV • Urdu',
                        status: 'Available',
                        badgeText: 'NEW',
                      ),
                    ],
                  );
                },
              ),
              Gap(24.h),
            ],
          ),
        ),
      ),
    );
  }

  Widget _uploadNewBookCard({required BuildContext context}) {
    return GestureDetector(
      onTap: () => AddBookRoute().push(context),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              ColorName.blueColor1,
              ColorName.blueColor,
            ],
          ),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: ColorName.blueColor.withAlpha(60),
              blurRadius: 18,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 46,
              height: 46,
              decoration: BoxDecoration(
                color: ColorName.white.withAlpha(60),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(
                Icons.upload_file,
                color: ColorName.white,
                size: 24,
              ),
            ),
            Gap(16.h),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Add New Book',
                    style: TextStyle(
                      fontSize: 16,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w600,
                      fontFamily: FontFamily.poppins,
                      color: ColorName.white,
                    ),
                  ),
                  Gap(3.h),
                  Text(
                    'Add a new book to your library',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      fontFamily: FontFamily.poppins,
                      color: ColorName.white.withAlpha(200),
                    ),
                  ),
                ],
              ),
            ),
            Gap(12.h),
            Container(
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                color: ColorName.white.withAlpha(60),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.info_outline,
                color: ColorName.white,
                size: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _bookCard({
    required BuildContext context,
    required double width,
    required String title,
    required String subtitle,
    required String status,
    required String badgeText,
  }) {
    return GestureDetector(
      onTap: () => BookDetailsRoute().push(context),
      child: SizedBox(
        width: width,
        child: Container(
          decoration: BoxDecoration(
            color: ColorName.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withAlpha(12),
                blurRadius: 18,
                offset: const Offset(0, 8),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 165,
                width: double.infinity,
                child: Container(
                  decoration: BoxDecoration(
                    color: ColorName.blueColor.withAlpha(40),
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(10),
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(10),
                    ),
                    child: Assets.images.book.image(
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 10, 14, 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontFamily: FontFamily.poppins,
                        color: ColorName.black,
                      ),
                    ),
                    Gap(2.h),
                    Text(
                      subtitle,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        fontFamily: FontFamily.poppins,
                        color: ColorName.black2,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _filterOption({required String label}) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 12, 12, 12),
      decoration: BoxDecoration(
        color: ColorName.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(10),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
        border: Border.all(
          color: ColorName.black3.withAlpha(50),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w500,
              fontFamily: FontFamily.poppins,
              color: ColorName.black1.withAlpha(180),
            ),
          ),
          Icon(
            Icons.keyboard_arrow_down,
            size: 24,
            color: ColorName.black3,
          ),
        ],
      ),
    );
  }
}
