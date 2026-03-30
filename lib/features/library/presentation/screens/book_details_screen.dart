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
                    color: Colors.black.withAlpha(20),
                    blurRadius: 24,
                    offset: const Offset(0, 12),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(15),
                    ),
                    child: SizedBox(
                      height: 400,
                      width: double.infinity,
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          Assets.images.book.image(
                            fit: BoxFit.contain,
                            width: double.infinity,
                            height: double.infinity,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.black.withAlpha(30),
                                  Colors.black.withAlpha(166),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 22,
                            bottom: 20,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Sarangi',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: FontFamily.poppins,
                                    color: ColorName.white,
                                  ),
                                ),
                                Gap(4.h),
                                Text(
                                  'Class I • Hindi Literature',
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
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(22, 15, 22, 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Book Overview',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            fontFamily: FontFamily.poppins,
                            color: ColorName.black,
                          ),
                        ),
                        Gap(8.h),
                        Text(
                          'Explore this exclusive edition from Azure Academy. The book covers Hindi literature basics with a modern twist, making it perfect for Class I students.',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            fontFamily: FontFamily.poppins,
                            color: ColorName.black2,
                            height: 1.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Gap(24.h),
            _uploadNewChapterCard(),
            Gap(24.h),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text(
                'Chapters',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  fontFamily: FontFamily.poppins,
                  color: ColorName.black,
                ),
              ),
            ),
            Gap(16.h),
            _chapterItem(
              number: '03',
              title: 'Şiblings',
              subtitle: 'Bonds and play',
              isCurrent: true,
            ),
            Gap(12.h),
            _chapterItem(
              number: '04',
              title: 'Rhymes',
              subtitle: 'Sound and rhythm',
              isCurrent: false,
            ),
            Gap(12.h),
            _chapterItem(
              number: '05',
              title: 'Stories',
              subtitle: 'Imagination and lessons',
              isCurrent: false,
            ),
          ],
        ),
      ),
    );
  }

  Widget _uploadNewChapterCard() {
    return Container(
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
                  'Add New Chapter',
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
                  'Support pdf file, Size limit: 40MB',
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
    );
  }

  Widget _chapterItem({
    required String number,
    required String title,
    required String subtitle,
    required bool isCurrent,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: BoxDecoration(
        color: ColorName.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(12),
            blurRadius: 16,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: ColorName.blueColor,
              borderRadius: BorderRadius.circular(14),
            ),
            child: Center(
              child: Text(
                number,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  fontFamily: FontFamily.poppins,
                  color: ColorName.white,
                ),
              ),
            ),
          ),
          Gap(14.w),
          Expanded(
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
                Gap(3.h),
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
          Gap(12.w),
          Icon(
            Icons.chevron_right,
            color: ColorName.black2,
            size: 24,
          ),
        ],
      ),
    );
  }
}
