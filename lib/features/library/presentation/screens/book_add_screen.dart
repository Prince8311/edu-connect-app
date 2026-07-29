import 'package:dio/dio.dart';
import 'package:edu_connect/core/shared/miscellaneous/app_extensions.dart';
import 'package:edu_connect/core/shared/miscellaneous/gap.dart';
import 'package:edu_connect/core/shared/widgets/app_bar.dart';
import 'package:edu_connect/core/shared/widgets/app_dropdown.dart';
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

class BookAddScreen extends HookConsumerWidget {
  const BookAddScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedClass = useState<String?>(null);
    final selectedSubject = useState<String?>(null);
    final bookNameController = useTextEditingController();
    final authorController = useTextEditingController();
    final selectedImagePath = useState<String?>(null);
    final selectedImageBytes = useState<Uint8List?>(null);
    final selectedImageName = useState<String?>(null);
    final isSubmitting = useState<bool>(false);

    final classesAsync = ref.watch(libraryClassesProvider);
    final subjectsAsync = selectedClass.value == null
        ? null
        : ref.watch(
            librarySubjectsProvider(className: selectedClass.value),
          );

    final classItems = classesAsync.when(
      data: (list) {
        final classes = list ?? const <String>[];
        return classes
            .map(
              (className) => DropdownMenuItem<String>(
                value: className,
                child: Text(
                  className,
                  style: TextStyle(
                    fontSize: 15.sp,
                    color: ColorName.black1,
                    fontFamily: FontFamily.poppins,
                  ),
                ),
              ),
            )
            .toList();
      },
      loading: () => [
        DropdownMenuItem<String>(
          enabled: false,
          value: null,
          child: Text(
            'Loading classes...',
            style: TextStyle(
              fontSize: 15.sp,
              color: ColorName.black1,
              fontFamily: FontFamily.poppins,
            ),
          ),
        ),
      ],
      error: (_, __) => [
        DropdownMenuItem<String>(
          enabled: false,
          value: null,
          child: Text(
            'Failed to load classes',
            style: TextStyle(
              fontSize: 15.sp,
              color: ColorName.black1,
              fontFamily: FontFamily.poppins,
            ),
          ),
        ),
      ],
    );

    final subjectItems = selectedClass.value == null
        ? [
            DropdownMenuItem<String>(
              enabled: false,
              value: null,
              child: Text(
                'Select class first',
                style: TextStyle(
                  fontSize: 15.sp,
                  color: ColorName.black1,
                  fontFamily: FontFamily.poppins,
                ),
              ),
            ),
          ]
        : subjectsAsync!.when(
            data: (list) {
              final subjects = list ?? const <String>[];
              return subjects
                  .map(
                    (subject) => DropdownMenuItem<String>(
                      value: subject,
                      child: Text(
                        subject,
                        style: TextStyle(
                          fontSize: 15.sp,
                          color: ColorName.black1,
                          fontFamily: FontFamily.poppins,
                        ),
                      ),
                    ),
                  )
                  .toList();
            },
            loading: () => [
              DropdownMenuItem<String>(
                enabled: false,
                value: null,
                child: Text(
                  'Loading subjects...',
                  style: TextStyle(
                    fontSize: 15.sp,
                    color: ColorName.black1,
                    fontFamily: FontFamily.poppins,
                  ),
                ),
              ),
            ],
            error: (_, __) => [
              DropdownMenuItem<String>(
                enabled: false,
                value: null,
                child: Text(
                  'Failed to load subjects',
                  style: TextStyle(
                    fontSize: 15.sp,
                    color: ColorName.black1,
                    fontFamily: FontFamily.poppins,
                  ),
                ),
              ),
            ],
          );

    return Scaffold(
      backgroundColor: ColorName.white,
      appBar: const PrimaryAppBar(
        title: 'Add Book',
        useHomeRouteOnBack: false,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
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
                      AppDropdown<String>(
                        label: "Class",
                        hint: "Select Class",
                        value: selectedClass.value,
                        items: classItems,
                        onChanged: (value) {
                          selectedClass.value = value;
                          selectedSubject.value = null;
                        },
                      ),
                      Gap(15.h),
                      AppDropdown<String>(
                        label: "Subject",
                        hint: "Select Subject",
                        value: selectedSubject.value,
                        items: subjectItems,
                        onChanged: (value) {
                          if (selectedClass.value == null) return;
                          selectedSubject.value = value;
                        },
                      ),
                      Gap(15.h),
                      AppTextField(
                        label: 'Book Name',
                        controller: bookNameController,
                      ),
                      Gap(15.h),
                      AppTextField(
                        label: 'Author',
                        controller: authorController,
                      ),
                      Gap(15.h),
                      Padding(
                        padding: const EdgeInsets.only(left: 4),
                        child: Text(
                          'Upload Book Cover',
                          style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500,
                            color: ColorName.black,
                            fontFamily: FontFamily.poppins,
                          ),
                        ),
                      ),
                      Gap(6.h),
                      InkWell(
                        borderRadius: BorderRadius.circular(8),
                        onTap: () async {
                          final result = await FilePicker.platform.pickFiles(
                            type: FileType.custom,
                            allowedExtensions: const ['jpg', 'jpeg', 'png'],
                            withData: true,
                          );

                          if (result == null || result.files.isEmpty) {
                            return;
                          }

                          final file = result.files.first;
                          final ext = (file.extension ?? '').toLowerCase();
                          if (!['jpg', 'jpeg', 'png'].contains(ext)) {
                            errorToast('Only jpg, jpeg, png files are allowed');
                            return;
                          }
                          if (file.bytes == null) {
                            errorToast(
                                'Unable to read selected image, try again');
                            return;
                          }

                          selectedImageName.value = file.name;
                          selectedImagePath.value = file.path;
                          selectedImageBytes.value = file.bytes;
                        },
                        child: Container(
                          height: 125,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: ColorName.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: ColorName.borderColor,
                              width: 1.25,
                            ),
                          ),
                          child: selectedImageBytes.value != null
                              ? ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Stack(
                                    fit: StackFit.expand,
                                    children: [
                                      Image.memory(
                                        selectedImageBytes.value!,
                                        fit: BoxFit.contain,
                                      ),
                                      Positioned(
                                        top: 10,
                                        right: 10,
                                        child: Material(
                                          color: Colors.transparent,
                                          child: InkWell(
                                            onTap: () {
                                              selectedImagePath.value = null;
                                              selectedImageBytes.value = null;
                                              selectedImageName.value = null;
                                            },
                                            borderRadius:
                                                BorderRadius.circular(18),
                                            child: Ink(
                                              width: 34,
                                              height: 34,
                                              decoration: BoxDecoration(
                                                color: ColorName.redColor1
                                                    .withAlpha(200),
                                                borderRadius:
                                                    BorderRadius.circular(18),
                                              ),
                                              child: Icon(
                                                Icons.delete_rounded,
                                                color: ColorName.white,
                                                size: 20.sp,
                                              ),
                                            ),
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
                                        Icons.add_photo_alternate,
                                        size: 40.sp,
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
                                              text: "Tap to upload image, ",
                                            ),
                                            TextSpan(
                                              text: "click here.",
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
                      Gap(12.h),
                    ],
                  ),
                ),
              ),
              Gap(8.h),
              ValueListenableBuilder<TextEditingValue>(
                valueListenable: bookNameController,
                builder: (_, __, ___) {
                  return ValueListenableBuilder<TextEditingValue>(
                    valueListenable: authorController,
                    builder: (_, __, ___) {
                      final isFormReady =
                          (selectedClass.value?.trim().isNotEmpty ?? false) &&
                              (selectedSubject.value?.trim().isNotEmpty ??
                                  false) &&
                              bookNameController.text.trim().isNotEmpty &&
                              authorController.text.trim().isNotEmpty &&
                              (selectedImagePath.value != null ||
                                  selectedImageBytes.value != null);
                      final canSubmit = isFormReady && !isSubmitting.value;

                      return SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: canSubmit
                              ? () async {
                                  final className = selectedClass.value;
                                  final subject = selectedSubject.value;
                                  final name = bookNameController.text.trim();
                                  final author = authorController.text.trim();

                                  if (className == null || className.isEmpty) {
                                    errorToast('Please select class');
                                    return;
                                  }
                                  if (subject == null || subject.isEmpty) {
                                    errorToast('Please select subject');
                                    return;
                                  }
                                  if (name.isEmpty) {
                                    errorToast('Please enter book name');
                                    return;
                                  }
                                  if (author.isEmpty) {
                                    errorToast('Please enter author name');
                                    return;
                                  }
                                  if (selectedImagePath.value == null &&
                                      selectedImageBytes.value == null) {
                                    errorToast('Please upload cover image');
                                    return;
                                  }

                                  MultipartFile coverImage;
                                  if (selectedImagePath.value != null) {
                                    coverImage = await MultipartFile.fromFile(
                                      selectedImagePath.value!,
                                      filename: selectedImageName.value,
                                    );
                                  } else {
                                    coverImage = MultipartFile.fromBytes(
                                      selectedImageBytes.value!,
                                      filename: selectedImageName.value ??
                                          'cover.jpg',
                                    );
                                  }

                                  final formData = FormData.fromMap({
                                    'name': name,
                                    'class': className,
                                    'subject': subject,
                                    'author': author,
                                    'cover_image': coverImage,
                                  });

                                  isSubmitting.value = true;
                                  final result = await ref.read(
                                    addBookProvider(formData: formData).future,
                                  );
                                  isSubmitting.value = false;

                                  if (result == true && context.mounted) {
                                    ref.invalidate(
                                        libraryBooksNotifierProvider);
                                    Navigator.of(context).pop(true);
                                  }
                                }
                              : null,
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
                                            'Add Book',
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
