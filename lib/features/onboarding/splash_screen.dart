import 'dart:math' as math;

import 'package:edu_connect/core/router/app_router.dart';
import 'package:edu_connect/core/shared/miscellaneous/app_extensions.dart';
import 'package:edu_connect/core/shared/miscellaneous/gap.dart';
import 'package:edu_connect/features/auth/presentation/providers/auth_token_provider.dart';
import 'package:edu_connect/gen/assets.gen.dart';
import 'package:edu_connect/gen/colors.gen.dart';
import 'package:edu_connect/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  bool _started = false;
  bool _reduceMotion = false;

  double _progress(double start, double end,
      [Curve curve = Curves.easeOutCubic]) {
    return curve.transform(
      ((_controller.value - start) / (end - start)).clamp(0.0, 1.0),
    );
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1900),
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_started) return;
    _started = true;
    _reduceMotion = MediaQuery.disableAnimationsOf(context);
    _start();
  }

  Future<void> _start() async {
    // Read the session while the artwork is decoded and the animation plays.
    final tokenFuture = ref.read(authTokenProvider.notifier).getToken();
    await Future.wait([
      precacheImage(Assets.images.logo1Png.provider(), context),
      precacheImage(
          const AssetImage('assets/images/splash-campus.png'), context),
    ]);
    if (!mounted) return;
    try {
      if (_reduceMotion) {
        _controller.value = 1;
      } else {
        await _controller.forward().orCancel;
      }
      await Future<void>.delayed(const Duration(milliseconds: 200));
      final token = await tokenFuture;
      if (!mounted) return;
      if (token != null && token.isNotEmpty) {
        HomeRoute().go(context);
      } else {
        AuthRoute().go(context);
      }
    } on TickerCanceled {
      // The splash was removed before its animation finished.
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.white,
      body: LayoutBuilder(builder: (context, constraints) {
        final height = constraints.maxHeight;
        final width = constraints.maxWidth;
        final illustrationHeight = math.min(height * 0.40, 360.0);
        return AnimatedBuilder(
          animation: _controller,
          builder: (context, _) {
            final circle = _progress(0.18, 0.58);
            final background = _progress(0.48, 0.90);
            final wave = _progress(0.52, 0.92);
            // Swing right, then left, then settle at the center.
            final elapsed = _controller.value * 1900;
            final double angle;
            if (_reduceMotion || elapsed >= 1050) {
              angle = 0;
            } else if (elapsed < 270) {
              angle = -6;
            } else if (elapsed < 570) {
              angle = -6 + 12 * ((elapsed - 270) / 300);
            } else if (elapsed < 870) {
              angle = 6 - 12 * ((elapsed - 570) / 300);
            } else {
              angle = -6 *
                  (1 - Curves.easeOutCubic.transform((elapsed - 870) / 180));
            }
            return Stack(
              clipBehavior: Clip.hardEdge,
              fit: StackFit.expand,
              children: [
                Positioned(
                  top: -95 - 50 * (1 - circle),
                  right: -95 - 50 * (1 - circle),
                  child: Opacity(
                    opacity: circle,
                    child: Transform.scale(
                      scale: 0.6 + 0.4 * circle,
                      child: Container(
                        width: 205,
                        height: 205,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            colors: [
                              ColorName.themeColor,
                              ColorName.blueColor2
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                for (var i = 0; i < 2; i++)
                  Positioned(
                    top: 112.0 + i * 38,
                    right: 35.0 + i * 33,
                    child: Opacity(
                      opacity: circle * (i == 0 ? 0.28 : 0.22),
                      child: Transform.scale(
                        scale: circle,
                        child: Container(
                          width: i == 0 ? 16 : 8,
                          height: i == 0 ? 16 : 8,
                          decoration: const BoxDecoration(
                            color: ColorName.themeColor,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ),
                  ),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 30,
                  child: Opacity(
                    opacity: background,
                    child: Transform.translate(
                      offset: Offset(0, 125 * (1 - background)),
                      child: Transform.scale(
                        scale: 0.94 + 0.06 * background,
                        alignment: Alignment.bottomCenter,
                        child: Image.asset(
                          'assets/images/splash-campus.png',
                          height: illustrationHeight,
                          fit: BoxFit.cover,
                          alignment: Alignment.bottomCenter,
                          excludeFromSemantics: true,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: -6,
                  child: Opacity(
                    opacity: wave,
                    child: Transform.translate(
                      offset: Offset(0, 55 * (1 - wave)),
                      child: Transform.scale(
                        scaleY: 0.8 + 0.2 * wave,
                        alignment: Alignment.bottomCenter,
                        child: SizedBox(
                          height: math.min(height * 0.13, 105),
                          child:
                              const CustomPaint(painter: _BottomWavePainter()),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: height * 0.27,
                  left: 24,
                  right: 24,
                  child: Column(
                    children: [
                      Opacity(
                        opacity: _progress(0, 0.20, Curves.easeOut),
                        child: Transform.scale(
                          scale: 0.68 +
                              0.32 * _progress(0, 0.25, Curves.easeOutBack),
                          child: Transform.rotate(
                            angle: angle * math.pi / 180,
                            alignment: Alignment.topCenter,
                            child: Assets.images.logo1Png.image(
                              height: math.min(height * 0.16, 125),
                              width: math.min(width * 0.45, 180),
                              fit: BoxFit.contain,
                              semanticLabel: 'Edu Connect',
                            ),
                          ),
                        ),
                      ),
                      Gap(20.h),
                      _AnimatedTagline(progress: _progress(0.24, 0.62)),
                    ],
                  ),
                ),
              ],
            );
          },
        );
      }),
    );
  }
}

class _AnimatedTagline extends StatelessWidget {
  const _AnimatedTagline({required this.progress});
  final double progress;

  @override
  Widget build(BuildContext context) {
    const words = ['Connected', 'Campus.', 'Brighter', 'Futures.'];
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 5.w,
      runSpacing: 3.h,
      children: List.generate(words.length, (index) {
        final start = index / (words.length + 2);
        final end = (index + 2) / (words.length + 2);
        final value = Curves.easeOutCubic.transform(
          ((progress - start) / (end - start)).clamp(0.0, 1.0),
        );
        return ClipRect(
          child: Opacity(
            opacity: value,
            child: Transform.translate(
              offset: Offset(-18 * (1 - value), 0),
              child: Text(
                words[index],
                style: TextStyle(
                  fontFamily: FontFamily.poppins,
                  color: ColorName.blueColor2,
                  fontSize: 14.sp,
                  height: 1.35,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.15,
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}

class _BottomWavePainter extends CustomPainter {
  const _BottomWavePainter();

  @override
  void paint(Canvas canvas, Size size) {
    final path = Path()
      ..moveTo(0, size.height * 0.45)
      ..cubicTo(size.width * 0.16, size.height * 0.08, size.width * 0.32,
          size.height * 0.10, size.width * 0.48, size.height * 0.42)
      ..cubicTo(size.width * 0.64, size.height * 0.72, size.width * 0.78,
          size.height * 0.74, size.width * 0.88, size.height * 0.43)
      ..cubicTo(size.width * 0.94, size.height * 0.22, size.width * 0.98,
          size.height * 0.22, size.width, size.height * 0.30)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..close();
    canvas.drawPath(path, Paint()..color = ColorName.blueColor2);
  }

  @override
  bool shouldRepaint(covariant _BottomWavePainter oldDelegate) => false;
}
