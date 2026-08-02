import 'package:dio/dio.dart';
import 'package:edu_connect/core/shared/miscellaneous/app_extensions.dart';
import 'package:edu_connect/core/shared/miscellaneous/gap.dart';
import 'package:edu_connect/core/shared/widgets/app_bar.dart';
import 'package:edu_connect/core/shared/widgets/text_field.dart';
import 'package:edu_connect/core/shared/widgets/toast.dart';
import 'package:edu_connect/features/library/presentation/providers/library_provider.dart';
import 'package:edu_connect/gen/colors.gen.dart';
import 'package:edu_connect/gen/fonts.gen.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ChapterAddScreen extends HookConsumerWidget {
  const ChapterAddScreen({
    super.key,
    required this.bookId,
    required this.bookName,
  });

  final String bookId;
  final String bookName;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final chapterIndexController = useTextEditingController();
    final chapterNameController = useTextEditingController();
    final selectedPdfPath = useState<String?>(null);
    final selectedPdfBytes = useState<Uint8List?>(null);
    final selectedPdfName = useState<String?>(null);
    final isSubmitting = useState<bool>(false);

    return Scaffold(
      backgroundColor: ColorName.white,
      appBar: const PrimaryAppBar(
        title: 'Add Chapter',
        useHomeRouteOnBack: false,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  keyboardDismissBehavior:
                      ScrollViewKeyboardDismissBehavior.manual,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 15.sp,
                            color: ColorName.black1,
                            fontFamily: FontFamily.poppins,
                          ),
                          children: [
                            TextSpan(
                              text: 'Book: ',
                              style: TextStyle(
                                color: ColorName.black.withAlpha(100),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            TextSpan(
                              text: bookName,
                              style: TextStyle(
                                color: ColorName.black,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Gap(15.h),
                      AppTextField(
                        label: 'Chapter No.',
                        controller: chapterIndexController,
                        keyboardType: TextInputType.number,
                      ),
                      Gap(15.h),
                      AppTextField(
                        label: 'Chapter Name',
                        controller: chapterNameController,
                      ),
                      Gap(15.h),
                      Padding(
                        padding: const EdgeInsets.only(left: 4),
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            style: TextStyle(
                              fontSize: 15.sp,
                              color: ColorName.black,
                              fontWeight: FontWeight.w500,
                              fontFamily: FontFamily.poppins,
                            ),
                            children: [
                              const TextSpan(
                                text: 'Upload Chapter PDF ',
                              ),
                              TextSpan(
                                text: '(Max size: 10MB)',
                                style: TextStyle(
                                  color: ColorName.black.withAlpha(120),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Gap(6.h),
                      InkWell(
                        borderRadius: BorderRadius.circular(8),
                        onTap: () async {
                          final result = await FilePicker.platform.pickFiles(
                            type: FileType.custom,
                            allowedExtensions: const ['pdf'],
                            withData: true,
                          );

                          if (result == null || result.files.isEmpty) {
                            return;
                          }

                          final file = result.files.first;
                          final ext = (file.extension ?? '').toLowerCase();
                          if (ext != 'pdf') {
                            errorToast('Only pdf files are allowed');
                            return;
                          }

                          if (file.bytes == null && file.path == null) {
                            errorToast(
                                'Unable to read selected file, try again');
                            return;
                          }

                          selectedPdfName.value = file.name;
                          selectedPdfPath.value = file.path;
                          selectedPdfBytes.value = file.bytes;
                        },
                        child: Container(
                          height: selectedPdfName.value != null ? 55 : 105,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: ColorName.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: ColorName.borderColor,
                              width: 1.25,
                            ),
                          ),
                          child: selectedPdfName.value != null
                              ? Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(14, 10, 10, 10),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.picture_as_pdf,
                                        color: ColorName.redColor1,
                                        size: 26.sp,
                                      ),
                                      Gap(10.w),
                                      Expanded(
                                        child: Text(
                                          selectedPdfName.value!,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontSize: 13.sp,
                                            color: ColorName.black1,
                                            fontFamily: FontFamily.poppins,
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          selectedPdfPath.value = null;
                                          selectedPdfBytes.value = null;
                                          selectedPdfName.value = null;
                                        },
                                        child: Container(
                                          width: 34,
                                          height: 34,
                                          decoration: BoxDecoration(
                                            color: ColorName.redColor1
                                                .withAlpha(30),
                                            borderRadius:
                                                BorderRadius.circular(6),
                                          ),
                                          child: Icon(
                                            Icons.delete_rounded,
                                            color: ColorName.redColor1,
                                            size: 20.sp,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              : Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.upload_file,
                                        size: 38.sp,
                                        color: ColorName.black1.withAlpha(100),
                                      ),
                                      Gap(10.h),
                                      RichText(
                                        textAlign: TextAlign.center,
                                        text: TextSpan(
                                          style: TextStyle(
                                            fontSize: 14.sp,
                                            color: ColorName.black1,
                                            fontFamily: FontFamily.poppins,
                                          ),
                                          children: [
                                            const TextSpan(
                                              text: 'Tap to upload file, ',
                                            ),
                                            TextSpan(
                                              text: 'click here.',
                                              style: TextStyle(
                                                color: ColorName.redColor1,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ],
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
              ),
              Gap(8.h),
              ValueListenableBuilder<TextEditingValue>(
                valueListenable: chapterIndexController,
                builder: (_, __, ___) {
                  return ValueListenableBuilder<TextEditingValue>(
                    valueListenable: chapterNameController,
                    builder: (_, __, ___) {
                      final isFormReady =
                          chapterIndexController.text.trim().isNotEmpty &&
                              chapterNameController.text.trim().isNotEmpty &&
                              (selectedPdfPath.value != null ||
                                  selectedPdfBytes.value != null);
                      final canSubmit = isFormReady && !isSubmitting.value;

                      return SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: canSubmit
                              ? () async {
                                  final chapterIndex =
                                      chapterIndexController.text.trim();
                                  final chapterName =
                                      chapterNameController.text.trim();

                                  if (bookId.trim().isEmpty) {
                                    errorToast('Book id missing');
                                    return;
                                  }
                                  if (chapterIndex.isEmpty) {
                                    errorToast('Please enter chapter number');
                                    return;
                                  }
                                  if (chapterName.isEmpty) {
                                    errorToast('Please enter chapter name');
                                    return;
                                  }
                                  if (selectedPdfPath.value == null &&
                                      selectedPdfBytes.value == null) {
                                    errorToast('Please upload chapter pdf');
                                    return;
                                  }

                                  MultipartFile chapterFile;
                                  if (selectedPdfPath.value != null) {
                                    chapterFile = await MultipartFile.fromFile(
                                      selectedPdfPath.value!,
                                      filename: selectedPdfName.value,
                                    );
                                  } else {
                                    chapterFile = MultipartFile.fromBytes(
                                      selectedPdfBytes.value!,
                                      filename: selectedPdfName.value ??
                                          'chapter.pdf',
                                    );
                                  }

                                  final formData = FormData.fromMap({
                                    'bookId': bookId,
                                    'index': chapterIndex,
                                    'name': chapterName,
                                    'chapter_file': chapterFile,
                                  });

                                  isSubmitting.value = true;
                                  final result = await ref.read(
                                    addBookChapterProvider(formData: formData)
                                        .future,
                                  );
                                  isSubmitting.value = false;

                                  if (result == true && context.mounted) {
                                    ref.invalidate(
                                      libraryBookChaptersNotifierProvider(
                                          bookId),
                                    );
                                    Navigator.of(context).pop(true);
                                  }
                                }
                              : null,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                            surfaceTintColor: Colors.transparent,
                            elevation: 0,
                            padding: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: Ink(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: canSubmit
                                    ? const [
                                        ColorName.blueColor,
                                        ColorName.blueColor2,
                                      ]
                                    : [
                                        ColorName.blueColor.withAlpha(110),
                                        ColorName.blueColor2.withAlpha(110),
                                      ],
                              ),
                            ),
                            child: AnimatedOpacity(
                              duration: const Duration(milliseconds: 180),
                              opacity: canSubmit ? 1 : 0.8,
                              child: Center(
                                child: isSubmitting.value
                                    ? SpinKitThreeBounce(
                                        color: Colors.white,
                                        size: 20.sp,
                                      )
                                    : Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.add,
                                            color: ColorName.white,
                                            size: 21.sp,
                                          ),
                                          Gap(3.w),
                                          Text(
                                            'Add Chapter',
                                            style: TextStyle(
                                              fontSize: 17.sp,
                                              color: ColorName.white,
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
