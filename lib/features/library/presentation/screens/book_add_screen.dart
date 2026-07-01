import 'package:edu_connect/core/shared/miscellaneous/app_extensions.dart';
import 'package:edu_connect/core/shared/miscellaneous/gap.dart';
import 'package:edu_connect/core/shared/widgets/app_bar.dart';
import 'package:edu_connect/core/shared/widgets/app_dropdown.dart';
import 'package:edu_connect/gen/colors.gen.dart';
import 'package:edu_connect/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

const List<String> ClassList = [
  "1",
  "2",
  "3",
  "4",
  "5",
  "6",
  "7",
  "8",
  "9",
  "10"
];
const List<String> SubjectList = [
  "Mathematics",
  "Science",
  "Social Studies",
  "English",
  "Hindi",
  "Sanskrit"
];

class BookAddScreen extends HookConsumerWidget {
  const BookAddScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedClass = useState<String?>(null);
    final selectedSubject = useState<String?>(null);

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
              AppDropdown<String>(
                label: "Class",
                hint: "Select Class",
                value: selectedClass.value,
                items: ClassList.map((city) => DropdownMenuItem(
                      value: city,
                      child: Text(
                        city,
                        style: TextStyle(
                          fontSize: 15.sp,
                          color: ColorName.black1,
                          fontFamily: FontFamily.poppins,
                        ),
                      ),
                    )).toList(),
                onChanged: (value) {
                  selectedClass.value = value;
                },
              ),
              Gap(15.h),
              AppDropdown<String>(
                label: "Subject",
                hint: "Select Subject",
                value: selectedSubject.value,
                items: SubjectList.map((subject) => DropdownMenuItem(
                      value: subject,
                      child: Text(
                        subject,
                        style: TextStyle(
                          fontSize: 15.sp,
                          color: ColorName.black1,
                          fontFamily: FontFamily.poppins,
                        ),
                      ),
                    )).toList(),
                onChanged: (value) {
                  selectedSubject.value = value;
                },
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
              Container(
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
                child: Center(
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
              Spacer(),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    // Handle book addition logic here
                  },
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
                      gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          ColorName.blueColor,
                          ColorName.blueColor2,
                        ],
                      ),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
