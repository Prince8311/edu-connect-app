import 'package:edu_connect/core/router/app_router.dart';
import 'package:edu_connect/core/api/end_points.dart';
import 'package:edu_connect/core/shared/miscellaneous/app_extensions.dart';
import 'package:edu_connect/core/shared/miscellaneous/gap.dart';
import 'package:edu_connect/core/shared/widgets/api_list_widget.dart';
import 'package:edu_connect/core/shared/widgets/loader.dart';
import 'package:edu_connect/features/auth/presentation/providers/auth_provider.dart';
import 'package:edu_connect/features/library/presentation/providers/library_provider.dart';
import 'package:edu_connect/gen/assets.gen.dart';
import 'package:edu_connect/gen/colors.gen.dart';
import 'package:edu_connect/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BooksContent extends HookConsumerWidget {
  const BooksContent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final booksState = ref.watch(libraryBooksNotifierProvider);
    final books = booksState.books;
    final userInfo = ref.watch(savedUserInfoProvider).valueOrNull;
    final isTeacher = (userInfo?.type ?? '').trim().toLowerCase() == 'teacher';

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Stack(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 47,
                        child: Container(
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
                              isDense: true,
                              prefixIcon: Icon(
                                Icons.search,
                                size: 24.sp,
                                color: ColorName.blueColor1,
                              ),
                              prefixIconConstraints: const BoxConstraints(
                                minWidth: 44,
                                minHeight: 44,
                              ),
                              hintText:
                                  'Search books by title, author, or ISBN...',
                              hintStyle: TextStyle(
                                fontSize: 14.sp,
                                color: ColorName.black3,
                                fontFamily: FontFamily.poppins,
                              ),
                              filled: true,
                              fillColor: ColorName.white,
                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 11,
                                horizontal: 14,
                              ),
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
                      ),
                    ),
                    Gap(12.w),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 46,
                        height: 46,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              ColorName.blueColor,
                              ColorName.blueColor2,
                            ],
                          ),
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: ColorName.blueColor.withAlpha(70),
                              blurRadius: 12,
                              offset: const Offset(0, 6),
                            ),
                          ],
                        ),
                        child: Icon(
                          Icons.tune_rounded,
                          color: ColorName.white,
                          size: 25.sp,
                        ),
                      ),
                    ),
                  ],
                ),
                Gap(isTeacher ? 16.h : 25.h),
                if (isTeacher) ...[
                  _uploadNewBookCard(context: context),
                  Gap(24.h),
                ],
                Expanded(
                  child: booksState.isLoading && books.isEmpty
                      ? _booksLoadingSkeleton()
                      : ApiListWidget<LibraryBooksState>(
                          data: booksState,
                          provider: libraryBooksNotifierProvider,
                          pageProvider: libraryPageProvider,
                          canLoadMore: libraryCanLoadMoreProvider,
                          emptyCondition:
                              booksState.books.isEmpty && !booksState.isLoading,
                          itemCount: booksState.books.length,
                          isGridView: true,
                          aspectRatio: 0.44,
                          padding: EdgeInsets.only(
                            bottom: isTeacher ? 86 : 16,
                          ),
                          itemBuilder: (context, index) {
                            final book = booksState.books[index];
                            return _bookCard(
                              context: context,
                              width: double.infinity,
                              title: (book.name ?? '').trim().isEmpty
                                  ? 'Untitled'
                                  : book.name!.trim(),
                              className: (book.className ?? '').trim(),
                              subject: (book.subject ?? '').trim(),
                              coverImage: (book.coverImage ?? '').trim(),
                              shortCode: (book.shortCode ?? '').trim(),
                            );
                          },
                        ),
                ),
              ],
            ),
            // if (isTeacher)
            //   Positioned(
            //     right: 0,
            //     bottom: 10,
            //     child: GestureDetector(
            //       onTap: () => AddBookRoute().push(context),
            //       child: Container(
            //         height: 45,
            //         padding: const EdgeInsets.fromLTRB(16, 0, 24, 0),
            //         decoration: BoxDecoration(
            //           gradient: const LinearGradient(
            //             begin: Alignment.topLeft,
            //             end: Alignment.bottomRight,
            //             colors: [
            //               ColorName.blueColor,
            //               ColorName.blueColor2,
            //             ],
            //           ),
            //           borderRadius: BorderRadius.circular(24),
            //         ),
            //         child: Row(
            //           children: [
            //             Icon(
            //               Icons.add,
            //               color: ColorName.white,
            //               size: 22.sp,
            //             ),
            //             Gap(3.w),
            //             Text(
            //               'Add New',
            //               style: TextStyle(
            //                 fontSize: 15.sp,
            //                 fontWeight: FontWeight.w600,
            //                 fontFamily: FontFamily.poppins,
            //                 color: ColorName.white,
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),
            //     ),
            //   ),
          ],
        ),
      ),
    );
  }

  Widget _booksLoadingSkeleton() {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.only(bottom: 16),
      itemCount: 6,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 8,
        mainAxisSpacing: 10,
        childAspectRatio: 0.55,
      ),
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SkeletonLoader(
              height: 155,
              width: double.infinity,
            ),
            SizedBox(height: 8),
            SkeletonLoader(
              height: 14,
              width: double.infinity,
            ),
            SizedBox(height: 6),
            SkeletonLoader(
              height: 12,
              width: 70,
            ),
          ],
        );
      },
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
                size: 26.sp,
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
                      fontSize: 18.sp,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w600,
                      fontFamily: FontFamily.poppins,
                      color: ColorName.white,
                    ),
                  ),
                  Gap(2.h),
                  Text(
                    'Add a new book to your library',
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

  Widget _bookCard({
    required BuildContext context,
    required double width,
    required String title,
    required String className,
    required String subject,
    required String coverImage,
    required String shortCode,
  }) {
    final coverImageUrl = _resolveCoverImageUrl(
      imageName: coverImage,
      shortCode: shortCode,
    );

    return GestureDetector(
      onTap: () => BookDetailsRoute().push(context),
      child: SizedBox(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 155,
              width: double.infinity,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withAlpha(12),
                            blurRadius: 15,
                            offset: const Offset(2, 4),
                          ),
                        ],
                      ),
                      child: Assets.images.blankBook.image(
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 11,
                    top: 9,
                    right: 20,
                    bottom: 10,
                    child: Transform(
                      alignment: Alignment.center,
                      transform: Matrix4.identity()
                        ..setEntry(3, 2, 0.0024)
                        ..rotateY(0.4),
                      child: ClipRect(
                        child: Opacity(
                          opacity: 0.88,
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
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 9, 14, 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      fontFamily: FontFamily.poppins,
                      color: ColorName.black,
                    ),
                  ),
                  Text(
                    subject.isEmpty ? 'No subject' : subject,
                    style: TextStyle(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w400,
                      fontFamily: FontFamily.poppins,
                      color: ColorName.black2,
                    ),
                  ),
                  if (className.isNotEmpty)
                    Container(
                      margin: const EdgeInsets.only(top: 4),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: ColorName.blueColor1.withAlpha(30),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(
                        'Class $className',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          fontFamily: FontFamily.poppins,
                          color: ColorName.blueColor1,
                        ),
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
}
