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

const List<String> SectionList = [
  "A",
  "B",
  "C",
  "D",
  "E",
  "F",
  "G",
  "H",
  "I",
  "J"
];

const List<String> SubjectList = [
  "Mathematics",
  "Science",
  "Social Studies",
  "English",
  "Hindi",
  "Sanskrit"
];

class ClassroomCreateScreen extends HookConsumerWidget {
  const ClassroomCreateScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedClass = useState<String?>(null);
    final selectedSection = useState<String?>(null);
    final selectedSubject = useState<String?>(null);

    return Scaffold(
      backgroundColor: ColorName.white,
      appBar: const PrimaryAppBar(
        title: 'Create Classroom',
        useHomeRouteOnBack: false,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Expanded(
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
                  label: "Section",
                  hint: "Select Section",
                  value: selectedSection.value,
                  items: SectionList.map((city) => DropdownMenuItem(
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
                    selectedSection.value = value;
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
                              'Create Class',
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
      ),
    );
  }
}
