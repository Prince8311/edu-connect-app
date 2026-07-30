import 'package:edu_connect/core/router/app_router.dart';
import 'package:edu_connect/core/shared/miscellaneous/app_extensions.dart';
import 'package:edu_connect/core/shared/miscellaneous/gap.dart';
import 'package:edu_connect/core/shared/widgets/app_bar.dart';
import 'package:edu_connect/gen/assets.gen.dart';
import 'package:edu_connect/gen/colors.gen.dart';
import 'package:edu_connect/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BookDetailsScreen extends HookConsumerWidget {
  const BookDetailsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const bookName = 'Sarangi';
    const bookSubject = 'Hindi Literature';
    const bookClass = 'Class I';
    const bookAuthor = 'NCERT Editorial Board';

    const chapters = [
      ('1', 'Siblings Siblings Siblings Siblings'),
      ('2', 'Rhymes'),
      ('3', 'Stories'),
      ('4', 'Playtime'),
      ('5', 'Nature'),
      ('6', 'Family'),
    ];

    return Scaffold(
      backgroundColor: ColorName.lightBackground4,
      appBar: const PrimaryAppBar(
        title: 'Book Details',
        useHomeRouteOnBack: false,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: ColorName.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withAlpha(16),
                    blurRadius: 18,
                    offset: const Offset(0, 8),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(14),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 110,
                      height: 150,
                      decoration: BoxDecoration(
                        color: ColorName.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: ColorName.borderColor),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withAlpha(10),
                            blurRadius: 10,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(9),
                        child: Assets.images.book.image(
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Gap(14.h),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            bookName,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600,
                              fontFamily: FontFamily.poppins,
                              color: ColorName.black,
                              height: 1.2,
                            ),
                          ),
                          Gap(12.h),
                          LayoutBuilder(
                            builder: (context, constraints) {
                              return Wrap(
                                spacing: 8,
                                runSpacing: 8,
                                children: [
                                  _metaChip(
                                    icon: Icons.menu_book_rounded,
                                    text: bookSubject,
                                    maxWidth: constraints.maxWidth,
                                  ),
                                  _metaChip(
                                    icon: Icons.class_rounded,
                                    text: bookClass,
                                    maxWidth: constraints.maxWidth,
                                  ),
                                ],
                              );
                            },
                          ),
                          Gap(12.h),
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 9,
                            ),
                            decoration: BoxDecoration(
                              color: ColorName.lightBackground4,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.person_rounded,
                                  color: ColorName.blueColor1,
                                  size: 18.sp,
                                ),
                                Gap(7.w),
                                Expanded(
                                  child: Text(
                                    'Author: $bookAuthor',
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: FontFamily.poppins,
                                      color: ColorName.black1,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Gap(24.h),
            _uploadNewChapterCard(context: context),
            Gap(26.h),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: chapters.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 10,
                mainAxisSpacing: 8,
                childAspectRatio: 0.52,
              ),
              itemBuilder: (context, index) {
                final chapter = chapters[index];
                return _chapterItem(
                  number: chapter.$1,
                  title: chapter.$2,
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _metaChip({
    required IconData icon,
    required String text,
    double? maxWidth,
  }) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: maxWidth ?? double.infinity,
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 4.5),
        decoration: BoxDecoration(
          color: ColorName.blueColor1.withAlpha(20),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: ColorName.blueColor1.withAlpha(35)),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              size: 14.sp,
              color: ColorName.blueColor1,
            ),
            Gap(5.w),
            Flexible(
              child: Text(
                text,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w500,
                  fontFamily: FontFamily.poppins,
                  color: ColorName.blueColor1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _uploadNewChapterCard({required BuildContext context}) {
    return GestureDetector(
      onTap: () => AddChapterRoute().push(context),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              ColorName.blueColor2,
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
                size: 27.sp,
              ),
            ),
            Gap(16.h),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Add New Chapter',
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w600,
                      fontFamily: FontFamily.poppins,
                      color: ColorName.white,
                    ),
                  ),
                  Gap(2.h),
                  Text(
                    'Support pdf file, Size limit: 40MB',
                    style: TextStyle(
                      fontSize: 14.sp,
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
                size: 24.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _chapterItem({
    required String number,
    required String title,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Assets.images.chapterPdf.image(
          fit: BoxFit.contain,
          width: 68.w,
        ),
        Gap(12.h),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: ColorName.blueColor1.withAlpha(30),
            borderRadius: BorderRadius.circular(6),
          ),
          child: Text(
            'Chapter $number',
            style: TextStyle(
              fontSize: 10.sp,
              fontWeight: FontWeight.w500,
              fontFamily: FontFamily.poppins,
              color: ColorName.blueColor1,
            ),
          ),
        ),
        Gap(6.h),
        Text(
          title,
          textAlign: TextAlign.center,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 13.sp,
            height: 1.35,
            fontWeight: FontWeight.w500,
            fontFamily: FontFamily.poppins,
            color: ColorName.black,
          ),
        ),
      ],
    );
  }
}
