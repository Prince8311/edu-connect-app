import 'package:edu_connect/core/router/app_router.dart';
import 'package:edu_connect/gen/colors.gen.dart';
import 'package:edu_connect/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ComingSoonScreen extends StatelessWidget {
  const ComingSoonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F7FC),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) => SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: Center(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: 480,
                  minHeight:
                      (constraints.maxHeight - 48).clamp(0, double.infinity),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      children: [
                        IconButton.filledTonal(
                          tooltip: 'Go back',
                          onPressed: () => context.canPop()
                              ? context.pop()
                              : HomeRoute().go(context),
                          style: IconButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: ColorName.blueColor2,
                          ),
                          icon: const Icon(Icons.arrow_back_rounded),
                        ),
                        const SizedBox(width: 12),
                        const Text('WHAT’S NEXT',
                            style: TextStyle(
                              fontFamily: FontFamily.poppins,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 2,
                              color: ColorName.blueColor2,
                            )),
                      ],
                    ),
                    const SizedBox(height: 28),
                    Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32),
                        gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xFF102D60),
                            Color(0xFF075D9C),
                            Color(0xFF008CB5)
                          ],
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: ColorName.blueColor1.withAlpha(35),
                            blurRadius: 32,
                            offset: const Offset(0, 16),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(24, 32, 24, 36),
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 14, vertical: 8),
                              decoration: BoxDecoration(
                                color: Colors.white.withAlpha(20),
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(
                                    color: Colors.white.withAlpha(45)),
                              ),
                              child: const Text(
                                'THE NEXT CHAPTER',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: FontFamily.poppins,
                                  color: Color(0xFFB8EDFF),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 2,
                                ),
                              ),
                            ),
                            const SizedBox(height: 24),
                            const _LaunchIllustration(),
                            const SizedBox(height: 24),
                            const Text(
                              'Coming Soon',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: FontFamily.poppins,
                                color: Colors.white,
                                fontSize: 36,
                                height: 1.2,
                                fontWeight: FontWeight.w700,
                                letterSpacing: -1.2,
                              ),
                            ),
                            const SizedBox(height: 14),
                            const Text(
                              'A little more possibility.\nA whole new campus experience.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: FontFamily.poppins,
                                color: Color(0xFFD3EAFA),
                                fontSize: 14,
                                height: 1.7,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 28),
                    const Text(
                      'Something great is taking shape.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: FontFamily.poppins,
                        color: Color(0xFF173452),
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'We’re building new ways to make your campus day easier. This feature is still in the works — stay tuned.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: FontFamily.poppins,
                        color: Color(0xFF60748A),
                        fontSize: 14,
                        height: 1.7,
                      ),
                    ),
                    const SizedBox(height: 28),
                    FilledButton.icon(
                      onPressed: () => HomeRoute().go(context),
                      icon: const Icon(Icons.home_rounded, size: 22),
                      label: const Text('Back to Home'),
                      style: FilledButton.styleFrom(
                        backgroundColor: ColorName.blueColor1,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 18),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18)),
                        textStyle: const TextStyle(
                          fontFamily: FontFamily.poppins,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const SizedBox(height: 18),
                    const Text(
                      'Built for your everyday campus life',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: FontFamily.poppins,
                        fontSize: 11,
                        color: Color(0xFF60748A),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _LaunchIllustration extends StatelessWidget {
  const _LaunchIllustration();

  @override
  Widget build(BuildContext context) {
    return ExcludeSemantics(
      child: SizedBox(
        width: 240,
        height: 220,
        child: Stack(
          alignment: Alignment.center,
          children: [
            for (final size in [210.0, 162.0])
              Container(
                width: size,
                height: size,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white.withAlpha(30)),
                  color: Colors.white.withAlpha(5),
                ),
              ),
            Transform.rotate(
              angle: -0.12,
              child: Container(
                width: 112,
                height: 112,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.white, Color(0xFFC5EFFF)],
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withAlpha(35),
                        blurRadius: 28,
                        offset: const Offset(0, 12))
                  ],
                ),
                child: const Icon(Icons.rocket_launch_rounded,
                    size: 62, color: ColorName.blueColor1),
              ),
            ),
            const Positioned(
                top: 12,
                right: 26,
                child: Icon(Icons.auto_awesome,
                    color: Color(0xFFFFD58A), size: 30)),
            const Positioned(
                bottom: 24,
                left: 22,
                child: Icon(Icons.school_rounded,
                    color: Color(0xFFAAE7FF), size: 28)),
            const Positioned(
                top: 46,
                left: 22,
                child: Icon(Icons.circle, color: Color(0xFF65D7F2), size: 8)),
            const Positioned(
                bottom: 38,
                right: 28,
                child: Icon(Icons.add_rounded,
                    color: Color(0xFFAAE7FF), size: 22)),
          ],
        ),
      ),
    );
  }
}
