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

enum BookFilterType {
  classes,
  subjects,
}

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
                              hintText: 'Search books by title or author...',
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
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          useRootNavigator: true,
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          builder: (_) => const BookFilterBottomSheet(),
                        );
                      },
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
                Gap(28.h),
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
                          aspectRatio: 0.45,
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
            if (isTeacher)
              Positioned(
                right: 0,
                bottom: 10,
                child: GestureDetector(
                  onTap: () => AddBookRoute().push(context),
                  child: Container(
                    height: 45,
                    padding: const EdgeInsets.fromLTRB(16, 0, 24, 0),
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
                          size: 22.sp,
                        ),
                        Gap(3.w),
                        Text(
                          'Add New',
                          style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
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
              padding: const EdgeInsets.fromLTRB(8, 8, 14, 12),
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

class BookFilterBottomSheet extends StatefulWidget {
  const BookFilterBottomSheet({super.key});

  @override
  State<BookFilterBottomSheet> createState() => _BookFilterBottomSheetState();
}

class _BookFilterBottomSheetState extends State<BookFilterBottomSheet> {
  BookFilterType selectedType = BookFilterType.classes;

  final Set<String> selectedClasses = {};
  final Set<String> selectedSubjects = {};

  final List<String> classes = [
    "Class 1",
    "Class 2",
    "Class 3",
    "Class 4",
    "Class 5",
    "Class 6",
  ];

  final List<String> subjects = [
    "Mathematics",
    "Science",
    "English",
    "History",
    "Geography",
    "Computer",
  ];

  @override
  Widget build(BuildContext context) {
    final values = selectedType == BookFilterType.classes ? classes : subjects;

    final selected = selectedType == BookFilterType.classes
        ? selectedClasses
        : selectedSubjects;

    return FractionallySizedBox(
      heightFactor: 0.55,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(22),
          ),
        ),
        child: Column(
          children: [
            Gap(12.h),
            Container(
              height: 4,
              width: 95,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            Gap(12.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      width: 70,
                      height: 1,
                      decoration: BoxDecoration(
                        color: ColorName.black.withAlpha(255),
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    Gap(3.h),
                    Container(
                      width: 50,
                      height: 1,
                      decoration: BoxDecoration(
                        color: ColorName.black.withAlpha(255),
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                  ],
                ),
                Gap(6.w),
                Text(
                  "Filter by",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    fontFamily: FontFamily.poppins,
                    color: ColorName.black1,
                  ),
                ),
                Gap(6.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 70,
                      height: 1,
                      decoration: BoxDecoration(
                        color: ColorName.black.withAlpha(255),
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    Gap(3.h),
                    Container(
                      width: 50,
                      height: 1,
                      decoration: BoxDecoration(
                        color: ColorName.black.withAlpha(255),
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Gap(20.h),
            Expanded(
              child: Row(
                children: [
                  /// LEFT PANEL
                  SizedBox(
                    width: 130,
                    child: Column(
                      children: [
                        _filterTile(
                          title: "Classes",
                          selected: selectedType == BookFilterType.classes,
                          onTap: () {
                            setState(() {
                              selectedType = BookFilterType.classes;
                            });
                          },
                        ),
                        _filterTile(
                          title: "Subjects",
                          selected: selectedType == BookFilterType.subjects,
                          onTap: () {
                            setState(() {
                              selectedType = BookFilterType.subjects;
                            });
                          },
                        ),
                      ],
                    ),
                  ),

                  VerticalDivider(
                    width: 1,
                    thickness: 1,
                    color: Colors.grey.shade300,
                  ),

                  /// RIGHT PANEL
                  Expanded(
                    child: ListView.separated(
                      itemCount: values.length,
                      separatorBuilder: (_, __) => Gap(5.h),
                      itemBuilder: (_, index) {
                        final value = values[index];

                        return _filterOption(
                          value: value,
                          selected: selected,
                          onTap: () {
                            setState(() {
                              if (selected.contains(value)) {
                                selected.remove(value);
                              } else {
                                selected.add(value);
                              }
                            });
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 46,
                      child: OutlinedButton(
                        onPressed: () {
                          setState(() {
                            selectedClasses.clear();
                            selectedSubjects.clear();
                          });
                        },
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(
                            color: ColorName.blueColor2,
                            width: 1.5,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          backgroundColor: Colors.white,
                          elevation: 0,
                        ),
                        child: Text(
                          "Reset",
                          style: TextStyle(
                            fontSize: 15.5.sp,
                            fontWeight: FontWeight.w600,
                            fontFamily: FontFamily.poppins,
                            color: ColorName.blueColor2,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Gap(14.w),
                  Expanded(
                    child: SizedBox(
                      height: 46,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(
                            context,
                            (
                              classes: selectedClasses.toList(),
                              subjects: selectedSubjects.toList(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Ink(
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
                          ),
                          child: Container(
                            alignment: Alignment.center,
                            child: Text(
                              "Apply",
                              style: TextStyle(
                                fontSize: 15.5.sp,
                                fontWeight: FontWeight.w600,
                                fontFamily: FontFamily.poppins,
                                color: ColorName.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _filterTile({
    required String title,
    required bool selected,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        color: selected ? ColorName.themeColor.withAlpha(35) : Colors.white,
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 14,
        ),
        width: double.infinity,
        child: Text(
          title,
          style: TextStyle(
            fontWeight: selected ? FontWeight.w600 : FontWeight.w500,
            color: selected ? ColorName.blueColor1 : Colors.black87,
            fontFamily: FontFamily.poppins,
            fontSize: 14.sp,
          ),
        ),
      ),
    );
  }

  Widget _filterOption({
    required String value,
    required Set<String> selected,
    required VoidCallback onTap,
  }) {
    final isSelected = selected.contains(value);

    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 10, 26, 10),
        child: Row(
          children: [
            Expanded(
              child: Text(
                value,
                style: const TextStyle(
                  fontFamily: FontFamily.poppins,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 180),
              width: 22,
              height: 22,
              decoration: BoxDecoration(
                color: isSelected ? ColorName.blueColor1 : Colors.white,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color:
                      isSelected ? ColorName.blueColor1 : ColorName.borderColor,
                  width: 1.5,
                ),
              ),
              child: isSelected
                  ? const Center(
                      child: Icon(
                        Icons.check_rounded,
                        color: Colors.white,
                        size: 15,
                      ),
                    )
                  : null,
            ),
          ],
        ),
      ),
    );
  }
}
