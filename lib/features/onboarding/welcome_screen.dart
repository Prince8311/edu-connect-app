import 'package:edu_connect/core/router/app_router.dart';
import 'package:edu_connect/core/shared/helpers/local_storage.dart';
import 'package:edu_connect/core/shared/miscellaneous/app_extensions.dart';
import 'package:edu_connect/core/shared/miscellaneous/gap.dart';
import 'package:edu_connect/features/auth/presentation/providers/auth_token_provider.dart';
import 'package:edu_connect/gen/assets.gen.dart';
import 'package:edu_connect/gen/colors.gen.dart';
import 'package:edu_connect/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class WelcomeScreen extends ConsumerStatefulWidget {
  const WelcomeScreen({super.key});

  @override
  ConsumerState<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends ConsumerState<WelcomeScreen> {
  final _pages = PageController();
  int _index = 0;
  bool _saving = false;

  Future<void> _finish() async {
    if (_saving) return;
    setState(() => _saving = true);
    try {
      final storage = await ref.read(localStorageProvider.future);
      final saved =
          await storage.writeBool(LocalStorageKeys.welcomeCompleted, true);
      if (!saved) throw StateError('Unable to save welcome preference');
      if (!mounted) return;
      final token = await ref.read(authTokenProvider.notifier).getToken();
      if (!mounted) return;
      if (token != null && token.isNotEmpty) {
        HomeRoute().go(context);
      } else {
        AuthRoute().go(context);
      }
    } catch (_) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            content: Text('Unable to continue right now. Please try again.')),
      );
    } finally {
      if (mounted) setState(() => _saving = false);
    }
  }

  void _move(int page) {
    if (MediaQuery.disableAnimationsOf(context)) {
      _pages.jumpToPage(page);
    } else {
      _pages.animateToPage(page,
          duration: const Duration(milliseconds: 450),
          curve: Curves.easeInOutCubic);
    }
  }

  @override
  void dispose() {
    _pages.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final last = _index == _slides.length - 1;
    return Scaffold(
      backgroundColor: ColorName.white,
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 600),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 12, 16, 4),
                  child: Row(
                    children: [
                      Assets.images.logo1Png.image(height: 38, width: 38),
                      Gap(10.w),
                      const Text('EDU CONNECT',
                          style: TextStyle(
                            fontFamily: FontFamily.poppins,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1.5,
                            color: ColorName.blueColor2,
                          )),
                      const Spacer(),
                      GestureDetector(
                        onTap: _saving ? null : _finish,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(18, 5, 10, 5),
                          decoration: BoxDecoration(
                            color: ColorName.blueColor2.withAlpha(20),
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Text(
                                'Skip',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: ColorName.blueColor2,
                                ),
                              ),
                              Gap(4.w),
                              const Icon(
                                Icons.keyboard_double_arrow_right,
                                size: 20,
                                color: ColorName.blueColor2,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: PageView.builder(
                    controller: _pages,
                    itemCount: _slides.length,
                    physics:
                        _saving ? const NeverScrollableScrollPhysics() : null,
                    onPageChanged: (value) => setState(() => _index = value),
                    itemBuilder: (context, index) => AnimatedBuilder(
                      animation: _pages,
                      builder: (context, child) {
                        final page =
                            _pages.hasClients && _pages.position.haveDimensions
                                ? _pages.page ?? _index.toDouble()
                                : _index.toDouble();
                        final distance = (page - index).abs().clamp(0.0, 1.0);
                        final reduceMotion =
                            MediaQuery.disableAnimationsOf(context);
                        return Opacity(
                          opacity: reduceMotion ? 1 : 1 - distance * 0.45,
                          child: Transform.scale(
                            scale: reduceMotion ? 1 : 1 - distance * 0.06,
                            child: child,
                          ),
                        );
                      },
                      child: _WelcomeSlide(slide: _slides[index]),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 12, 24, 20),
                  child: Column(
                    children: [
                      Semantics(
                        label: 'Page ${_index + 1} of ${_slides.length}',
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                              _slides.length,
                              (index) => AnimatedContainer(
                                    duration: const Duration(milliseconds: 250),
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 4),
                                    width: index == _index ? 30 : 8,
                                    height: 8,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: index == _index
                                          ? ColorName.blueColor2
                                          : const Color(0xFFDCEBF1),
                                    ),
                                  )),
                        ),
                      ),
                      Gap(24.h),
                      Row(
                        children: [
                          if (_index > 0) ...[
                            OutlinedButton(
                              onPressed: _index == 0 || _saving
                                  ? null
                                  : () => _move(_index - 1),
                              style: OutlinedButton.styleFrom(
                                foregroundColor: ColorName.blueColor2,
                                minimumSize: const Size(100, 54),
                                side:
                                    const BorderSide(color: Color(0xFFDCEBF1)),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18)),
                              ),
                              child: const Text('Previous'),
                            ),
                            Gap(14.w),
                          ],
                          Expanded(
                            child: FilledButton(
                              onPressed: _saving
                                  ? null
                                  : last
                                      ? _finish
                                      : () => _move(_index + 1),
                              style: FilledButton.styleFrom(
                                backgroundColor: ColorName.blueColor2,
                                foregroundColor: ColorName.white,
                                minimumSize: const Size(0, 54),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18)),
                              ),
                              child: _saving
                                  ? const SizedBox(
                                      width: 20,
                                      height: 20,
                                      child: CircularProgressIndicator(
                                          strokeWidth: 2))
                                  : Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                          Flexible(
                                              child: Text(
                                                  last ? 'Get Started' : 'Next',
                                                  textAlign: TextAlign.center,
                                                  style: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600))),
                                          Gap(10.w),
                                          const Icon(
                                              Icons.arrow_forward_rounded,
                                              size: 20),
                                        ]),
                            ),
                          ),
                        ],
                      ),
                    ],
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

class _SlideData {
  const _SlideData(this.eyebrow, this.title, this.description, this.image,
      this.badge, this.icon);
  final String eyebrow, title, description, image, badge;
  final IconData icon;
}

const _slides = [
  _SlideData(
      'ONE CAMPUS. ONE COMMUNITY.',
      'Together for\na brighter future.',
      'A shared space for students, teachers and guardians. Keep your academic world connected, every day.',
      'assets/images/welcome-community.png',
      'Connected campus',
      Icons.people_alt_outlined),
  _SlideData(
      'MAKE ROOM FOR LEARNING.',
      'Your day,\nbeautifully organized.',
      'Find your classes, follow your timetable and stay on top of the school day. Less searching, more learning.',
      'assets/images/welcome-schedule.png',
      'Classes & timetables',
      Icons.calendar_month_outlined),
  _SlideData(
      'LET CURIOSITY LEAD.',
      'Big ideas.\nAlways within reach.',
      'Explore your library, open chapters and access learning materials. Keep discovering, one page at a time.',
      'assets/images/welcome-library.png',
      'Your digital library',
      Icons.auto_stories_outlined),
];

class _WelcomeSlide extends StatelessWidget {
  const _WelcomeSlide({required this.slide});
  final _SlideData slide;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final imageHeight = (constraints.maxHeight * 0.54).clamp(180.0, 380.0);
      return SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(24, 12, 24, 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(32),
                  child: Image.asset(slide.image,
                      height: imageHeight,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      excludeFromSemantics: true),
                ),
                Positioned(
                  bottom: 16,
                  left: 16,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 14, vertical: 10),
                    decoration: BoxDecoration(
                      color: ColorName.white.withAlpha(240),
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            color: ColorName.blueColor2.withAlpha(15),
                            blurRadius: 18)
                      ],
                    ),
                    child: Row(mainAxisSize: MainAxisSize.min, children: [
                      Icon(slide.icon, size: 18, color: ColorName.blueColor2),
                      Gap(8.w),
                      Text(slide.badge,
                          style: const TextStyle(
                              fontSize: 12,
                              color: ColorName.blueColor2,
                              fontWeight: FontWeight.w500)),
                    ]),
                  ),
                ),
              ],
            ),
            Gap(28.h),
            Text(slide.eyebrow,
                style: const TextStyle(
                    fontFamily: FontFamily.poppins,
                    fontSize: 10,
                    letterSpacing: 1.7,
                    fontWeight: FontWeight.w600,
                    color: ColorName.blueColor1)),
            Gap(10.h),
            Text(slide.title,
                style: const TextStyle(
                    fontFamily: FontFamily.poppins,
                    fontSize: 25,
                    height: 1.25,
                    fontWeight: FontWeight.w600,
                    color: ColorName.blueColor2)),
            Gap(14.h),
            Text(slide.description,
                style: const TextStyle(
                    fontFamily: FontFamily.poppins,
                    fontSize: 14,
                    height: 1.65,
                    color: ColorName.black2)),
          ],
        ),
      );
    });
  }
}
