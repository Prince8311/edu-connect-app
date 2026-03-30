import 'package:edu_connect/core/router/app_router.dart';
import 'package:edu_connect/core/shared/miscellaneous/app_extensions.dart';
import 'package:edu_connect/core/shared/miscellaneous/gap.dart';
import 'package:edu_connect/gen/colors.gen.dart';
import 'package:edu_connect/gen/fonts.gen.dart';
import 'package:flutter/material.dart';

class ComingSoonScreen extends StatelessWidget {
  const ComingSoonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.lightBackground4,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: double.infinity,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 32, vertical: 40),
                  decoration: BoxDecoration(
                    color: ColorName.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      const BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.06),
                        blurRadius: 24,
                        offset: Offset(0, 18),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 96,
                        height: 96,
                        decoration: BoxDecoration(
                          color: ColorName.lightBackground3.withAlpha(180),
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.construction,
                            color: ColorName.blueColor,
                            size: 75,
                          ),
                        ),
                      ),
                      Gap(28.h),
                      Text(
                        'Coming Soon',
                        style: TextStyle(
                          color: ColorName.black,
                          fontSize: 28,
                          fontWeight: FontWeight.w600,
                          fontFamily: FontFamily.poppins,
                        ),
                      ),
                      Gap(10.h),
                      Text(
                        "We're working hard to bring this feature to you. The digital campus is expanding with new tools for your academic success. Stay tuned for updates!",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: ColorName.black2.withAlpha(180),
                          fontSize: 14,
                          height: 1.5,
                          fontFamily: FontFamily.poppins,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 32),
                SizedBox(
                  width: 220,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      TeacherHomeRoute().go(context);
                    },
                    icon: const Icon(Icons.home_outlined,
                        color: ColorName.white, size: 21),
                    label: const Text('Back to Home'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ColorName.blueColor,
                      foregroundColor: ColorName.white,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      textStyle: TextStyle(
                        fontFamily: FontFamily.poppins,
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                      elevation: 4,
                      shadowColor: ColorName.blueColor.withAlpha(40),
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
