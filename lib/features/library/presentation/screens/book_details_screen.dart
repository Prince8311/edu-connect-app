import 'package:edu_connect/core/router/app_router.dart';
import 'package:edu_connect/core/api/end_points.dart';
import 'package:edu_connect/core/shared/miscellaneous/app_extensions.dart';
import 'package:edu_connect/core/shared/miscellaneous/gap.dart';
import 'package:edu_connect/core/shared/widgets/app_bar.dart';
import 'package:edu_connect/core/shared/widgets/api_list_widget.dart';
import 'package:edu_connect/core/shared/widgets/loader.dart';
import 'package:edu_connect/core/shared/widgets/toast.dart';
import 'package:edu_connect/features/auth/presentation/providers/auth_provider.dart';
import 'package:edu_connect/features/library/domain/models/library_model.dart';
import 'package:edu_connect/features/library/presentation/screens/chapter_pdf_viewer_screen.dart';
import 'package:edu_connect/features/library/presentation/providers/library_provider.dart';
import 'package:edu_connect/gen/assets.gen.dart';
import 'package:edu_connect/gen/colors.gen.dart';
import 'package:edu_connect/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lottie/lottie.dart';

class BookDetailsScreen extends HookConsumerWidget {
  const BookDetailsScreen({super.key, required this.book});

  final BookItemModel book;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bookId = (book.id ?? '').trim();
    final userInfo = ref.watch(savedUserInfoProvider).valueOrNull;
    final isTeacher = (userInfo?.type ?? '').trim().toLowerCase() == 'teacher';
    final chapterState = ref.watch(libraryBookChaptersNotifierProvider(bookId));
    final coverImageUrl = _resolveCoverImageUrl(
      imageName: (book.coverImage ?? '').trim(),
      shortCode: (book.shortCode ?? '').trim(),
    );
    final bookName =
        (book.name ?? '').trim().isEmpty ? 'Untitled' : book.name!.trim();
    final bookSubject = (book.subject ?? '').trim().isEmpty
        ? 'No subject'
        : book.subject!.trim();
    final bookClass = (book.className ?? '').trim().isEmpty
        ? 'No class'
        : 'Class ${book.className!.trim()}';
    final bookAuthor = (book.author ?? '').trim().isEmpty
        ? 'Unknown author'
        : book.author!.trim();
    final uploadedAt =
        (book.uploadedAt ?? '').trim().isEmpty ? '--' : book.uploadedAt!.trim();

    return Scaffold(
      backgroundColor: ColorName.lightBackground4,
      appBar: const PrimaryAppBar(
        title: 'Book Details',
        useHomeRouteOnBack: false,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: ColorName.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withAlpha(16),
                        blurRadius: 24,
                        offset: const Offset(0, 10),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 95,
                            height: 130,
                            decoration: BoxDecoration(
                              color: ColorName.white,
                              borderRadius: BorderRadius.circular(14),
                              border: Border.all(color: ColorName.borderColor),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withAlpha(22),
                                  blurRadius: 14,
                                  offset: const Offset(0, 6),
                                ),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(13),
                              child: coverImageUrl != null
                                  ? Image.network(
                                      coverImageUrl,
                                      fit: BoxFit.cover,
                                      errorBuilder: (_, __, ___) =>
                                          Assets.images.book.image(
                                        fit: BoxFit.cover,
                                      ),
                                    )
                                  : Assets.images.book.image(
                                      fit: BoxFit.cover,
                                    ),
                            ),
                          ),
                          Gap(16.w),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Gap(8.h),
                                Text(
                                  bookName,
                                  style: TextStyle(
                                    fontSize: 17.sp,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: FontFamily.poppins,
                                    color: ColorName.black,
                                    height: 1.15,
                                  ),
                                ),
                                Gap(14.h),
                                LayoutBuilder(
                                  builder: (context, constraints) {
                                    return Wrap(
                                      spacing: 10,
                                      runSpacing: 7,
                                      children: [
                                        _metaChip(
                                          icon: Icons.menu_book_rounded,
                                          text: bookSubject,
                                          maxWidth: constraints.maxWidth,
                                          backgroundColor: ColorName.blueColor1
                                              .withAlpha(18),
                                          borderColor: ColorName.blueColor1
                                              .withAlpha(60),
                                          textColor: ColorName.blueColor1,
                                          iconBackgroundColor: ColorName
                                              .blueColor1
                                              .withAlpha(26),
                                        ),
                                        _metaChip(
                                          icon: Icons.school_rounded,
                                          text: bookClass,
                                          maxWidth: constraints.maxWidth,
                                          backgroundColor:
                                              const Color(0xFFECF8F4),
                                          borderColor: const Color(0xFFAEDFD0),
                                          textColor: const Color(0xFF197E74),
                                          iconBackgroundColor:
                                              const Color(0xFFDBF1EA),
                                        ),
                                      ],
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Gap(16.h),
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                          color: ColorName.white,
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                              color: ColorName.borderColor.withAlpha(110)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withAlpha(10),
                              blurRadius: 16,
                              offset: const Offset(0, 8),
                            ),
                          ],
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: _summaryInfoTile(
                                icon: Icons.draw,
                                iconColor: const Color(0xFF6E59D9),
                                iconBackgroundColor: const Color(0xFFECE8FF),
                                title: 'Author',
                                value: bookAuthor,
                              ),
                            ),
                            Container(
                              width: 1,
                              height: 32,
                              color: ColorName.borderColor.withAlpha(120),
                            ),
                            Expanded(
                              child: _summaryInfoTile(
                                icon: Icons.calendar_month_rounded,
                                iconColor: const Color(0xFF1A8A7F),
                                iconBackgroundColor: const Color(0xFFE4F6F1),
                                title: 'Uploaded at',
                                value: uploadedAt,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Gap(24.h),
                Expanded(
                  child: chapterState.isLoading && chapterState.chapters.isEmpty
                      ? _chaptersLoadingSkeleton(
                          bottomPadding: isTeacher ? 86 : 16,
                        )
                      : ApiListWidget<LibraryBookChaptersState>(
                          data: chapterState,
                          provider: libraryBookChaptersNotifierProvider(bookId),
                          emptyCondition: chapterState.chapters.isEmpty &&
                              !chapterState.isLoading,
                          emptyBuilder: (context) => Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Gap(40.h),
                              Lottie.asset(
                                Assets.animations.searchNotFound,
                                width: 220.w,
                                height: 220.h,
                              ),
                              Gap(8.h),
                              Text(
                                'No Chapters Found',
                                style: TextStyle(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: FontFamily.poppins,
                                  color: ColorName.black1.withAlpha(150),
                                ),
                              ),
                            ],
                          ),
                          itemCount: chapterState.chapters.length,
                          pageProvider: null,
                          canLoadMore: null,
                          canLoadMoreReader: (r) =>
                              r.read(libraryChapterCanLoadMoreProvider(bookId)),
                          onIncrementPage: (r) {
                            r
                                .read(
                                    libraryChapterPageProvider(bookId).notifier)
                                .update((state) => state + 1);
                          },
                          onResetPage: (r) {
                            r
                                .read(
                                    libraryChapterPageProvider(bookId).notifier)
                                .state = 1;
                          },
                          crossAxisCount: 4,
                          crossAxisSpacing: 10,
                          isGridView: true,
                          aspectRatio: 0.52,
                          padding: EdgeInsets.only(bottom: isTeacher ? 86 : 16),
                          itemBuilder: (context, index) {
                            final chapter = chapterState.chapters[index];
                            final chapterNumber =
                                (chapter.chapterIndex ?? '').trim().isEmpty
                                    ? (index + 1).toString()
                                    : chapter.chapterIndex!.trim();
                            final chapterTitle =
                                (chapter.name ?? '').trim().isEmpty
                                    ? 'Untitled chapter'
                                    : chapter.name!.trim();
                            final chapterPdfUrl = _resolveChapterPdfUrl(
                              shortCode: (book.shortCode ?? '').trim(),
                              fileName: (chapter.fileName ?? '').trim(),
                            );
                            final chapterPdfFallbackUrl = _resolveChapterPdfUrl(
                              shortCode: (book.shortCode ?? '').trim(),
                              fileName: (chapter.fileName ?? '').trim(),
                              includeChaptersSegment: true,
                            );

                            return _chapterItem(
                              number: chapterNumber,
                              title: chapterTitle,
                              onTap: () async {
                                if (chapterPdfUrl == null) {
                                  errorToast('Chapter file not available');
                                  return;
                                }

                                if (!context.mounted) return;
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (_) => ChapterPdfViewerScreen(
                                      pdfUrl: chapterPdfUrl,
                                      fallbackPdfUrl: chapterPdfFallbackUrl,
                                      title: chapterTitle,
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                ),
              ],
            ),
            if (isTeacher)
              Positioned(
                right: 0,
                bottom: 10,
                child: GestureDetector(
                  onTap: () => AddChapterRoute(
                    bookId: bookId,
                    bookName: bookName,
                  ).push(context),
                  child: Container(
                    height: 43,
                    padding: const EdgeInsets.fromLTRB(16, 0, 26, 0),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          ColorName.blueColor,
                          ColorName.blueColor2,
                        ],
                      ),
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.add,
                          color: ColorName.white,
                          size: 20.5.sp,
                        ),
                        Gap(3.w),
                        Text(
                          'Add Chapter',
                          style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500,
                            fontFamily: FontFamily.poppins,
                            color: ColorName.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  String? _resolveCoverImageUrl({
    required String imageName,
    required String shortCode,
  }) {
    if (imageName.isEmpty || shortCode.isEmpty) return null;

    final baseUrl = Endpoints.documentBaseURL;
    final normalizedShortCode = shortCode.replaceAll('/', '');
    final normalizedImageName =
        imageName.startsWith('/') ? imageName.substring(1) : imageName;

    return '$baseUrl/library/books/$normalizedShortCode/$normalizedImageName';
  }

  String? _resolveChapterPdfUrl({
    required String shortCode,
    required String fileName,
    bool includeChaptersSegment = false,
  }) {
    if (shortCode.isEmpty || fileName.isEmpty) return null;

    final baseUrl = Endpoints.documentBaseURL;
    final normalizedShortCode = shortCode.replaceAll('/', '');
    final normalizedFileName =
        fileName.startsWith('/') ? fileName.substring(1) : fileName;

    final chaptersSegment = includeChaptersSegment ? '/chapters' : '';

    return '$baseUrl/library/books/${Uri.encodeComponent(normalizedShortCode)}$chaptersSegment/chapters/${Uri.encodeComponent(normalizedFileName)}';
  }

  Widget _chaptersLoadingSkeleton({required double bottomPadding}) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.only(bottom: bottomPadding),
      itemCount: 8,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 10,
        mainAxisSpacing: 8,
        childAspectRatio: 0.52,
      ),
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            SkeletonLoader(
              height: 88,
              width: 68,
            ),
            SizedBox(height: 12),
            SkeletonLoader(
              height: 18,
              width: 62,
            ),
            SizedBox(height: 6),
            SkeletonLoader(
              height: 30,
              width: 72,
            ),
          ],
        );
      },
    );
  }

  Widget _metaChip({
    required IconData icon,
    required String text,
    double? maxWidth,
    required Color backgroundColor,
    required Color borderColor,
    required Color textColor,
    required Color iconBackgroundColor,
  }) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: maxWidth ?? double.infinity,
      ),
      child: Container(
        padding: const EdgeInsets.fromLTRB(4, 4, 16, 4),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(22),
          border: Border.all(color: borderColor),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 22,
              height: 22,
              decoration: BoxDecoration(
                color: iconBackgroundColor,
                shape: BoxShape.circle,
              ),
              child: Icon(
                icon,
                size: 14.sp,
                color: textColor,
              ),
            ),
            Gap(8.w),
            Flexible(
              child: Text(
                text,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w500,
                  fontFamily: FontFamily.poppins,
                  color: textColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _summaryInfoTile({
    required IconData icon,
    required Color iconColor,
    required Color iconBackgroundColor,
    required String title,
    required String value,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              color: iconBackgroundColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(
              icon,
              color: iconColor,
              size: 20.sp,
            ),
          ),
          Gap(10.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w500,
                    fontFamily: FontFamily.poppins,
                    color: ColorName.black1.withAlpha(170),
                  ),
                ),
                Gap(3.h),
                Text(
                  value,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                    height: 1.2,
                    fontFamily: FontFamily.poppins,
                    color: ColorName.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _chapterItem({
    required String number,
    required String title,
    required Future<void> Function() onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
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
      ),
    );
  }
}
