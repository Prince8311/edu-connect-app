import 'dart:math' as math;
import 'package:flutter/material.dart';

/// A small, locally rendered sky scene; no image downloads are needed.
class AnimatedGreeting extends StatefulWidget {
  const AnimatedGreeting(
      {super.key, required this.hour, this.background = false});
  final int hour;
  final bool background;

  @override
  State<AnimatedGreeting> createState() => _AnimatedGreetingState();
}

class _AnimatedGreetingState extends State<AnimatedGreeting>
    with SingleTickerProviderStateMixin {
  late final _motion =
      AnimationController(vsync: this, duration: const Duration(seconds: 8));

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (MediaQuery.disableAnimationsOf(context)) {
      _motion.stop();
      _motion.value = 0;
    } else if (!_motion.isAnimating) {
      _motion.repeat();
    }
  }

  @override
  void dispose() {
    _motion.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => ExcludeSemantics(
        child: RepaintBoundary(
          child: SizedBox(
            width: widget.background ? 170 : 44,
            height: widget.background ? 75 : 28,
            child: CustomPaint(
                painter: _SkyPainter(widget.hour, _motion, widget.background)),
          ),
        ),
      );
}

class _SkyPainter extends CustomPainter {
  _SkyPainter(this.hour, this.motion, this.background) : super(repaint: motion);
  final int hour;
  final Animation<double> motion;
  final bool background;

  @override
  void paint(Canvas canvas, Size size) {
    final night = hour < 5 || hour >= 21;
    final evening = hour >= 17 && hour < 21;
    final afternoon = hour >= 12 && hour < 17;
    final morning = hour >= 5 && hour < 12;
    final phase = motion.value * math.pi * 2;
    final rect = Offset.zero & size;
    final sky = RRect.fromRectAndRadius(rect, const Radius.circular(10));
    final colors = night
        ? [const Color(0xFF26345D), const Color(0xFF546595)]
        : evening
            ? [const Color(0xFFFFD8C2), const Color(0xFFF6B3C7)]
            : afternoon
                ? [const Color(0xFFBEEAFF), const Color(0xFFFFE7A4)]
                : [const Color(0xFFD9F0FF), const Color(0xFFFFF2CB)];
    canvas.save();
    if (background) {
      canvas.clipRect(rect);
      final tint = night
          ? const Color(0xFFC3CFF8)
          : evening
              ? const Color(0xFFF8D1DA)
              : afternoon
                  ? const Color(0xFFFFE4A6)
                  : const Color(0xFFC5EAF8);
      canvas.drawRect(
          rect,
          Paint()
            ..shader = LinearGradient(
              colors: [Colors.white, tint.withAlpha(70), tint],
              stops: const [0, .48, 1],
            ).createShader(rect));
      canvas.drawOval(
          Rect.fromCenter(
              center: Offset(size.width - 58, 12),
              width: 204,
              height: size.height * 1.65),
          Paint()..color = tint.withAlpha(100));
      // Layered cloud banks connect the scene to the curved header edge.
      final cloudPaint = Paint()..color = Colors.white.withAlpha(75);
      for (var i = 0; i < 5; i++) {
        canvas.drawCircle(
            Offset(size.width - 110 + i * 30 + math.sin(phase) * 3,
                size.height - 5 + (i.isEven ? 0 : 8)),
            28,
            cloudPaint);
      }
      canvas.translate(size.width - 126, math.max(20, size.height * .20 + 12));
      canvas.scale(1.65);
    } else {
      canvas.clipRRect(sky);
      canvas.drawRRect(
          sky,
          Paint()
            ..shader = LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: colors,
            ).createShader(rect));
    }
    if (night) {
      final moon = Offset(16, 12 + math.sin(phase) * 1.2);
      final crescent = Path.combine(
        PathOperation.difference,
        Path()..addOval(Rect.fromCircle(center: moon, radius: 7)),
        Path()
          ..addOval(
              Rect.fromCircle(center: moon + const Offset(4, -3), radius: 6.5)),
      );
      canvas.drawPath(
          crescent,
          Paint()
            ..color =
                background ? const Color(0xFF7285B7) : const Color(0xFFFFEAC0));
      for (var i = 0; i < 3; i++) {
        final center = [
          const Offset(30, 5),
          const Offset(35, 14),
          const Offset(27, 24)
        ][i];
        final glow = .55 + .45 * math.sin(phase + i * 2);
        final paint = Paint()
          ..color = (background ? const Color(0xFF8293BE) : Colors.white)
              .withValues(alpha: .4 + glow * .6)
          ..strokeWidth = 1.2
          ..strokeCap = StrokeCap.round;
        final radius = 1 + glow;
        canvas.drawLine(
            center - Offset(radius, 0), center + Offset(radius, 0), paint);
        canvas.drawLine(
            center - Offset(0, radius), center + Offset(0, radius), paint);
      }
    } else {
      final sun = Offset(
          20,
          (evening
                  ? 18
                  : morning
                      ? 16
                      : 13) +
              math.sin(phase) * 1.2);
      canvas.drawCircle(
          sun, 10, Paint()..color = const Color(0xFFFFC65C).withAlpha(55));
      for (var i = 0; i < 8; i++) {
        final angle = i * math.pi / 4 + phase;
        final direction = Offset(math.cos(angle), math.sin(angle));
        canvas.drawLine(
            sun + direction * 8,
            sun + direction * 10,
            Paint()
              ..color = const Color(0xFFEFA12B)
              ..strokeWidth = 1.2
              ..strokeCap = StrokeCap.round);
      }
      canvas.drawCircle(
          sun,
          6,
          Paint()
            ..color =
                evening ? const Color(0xFFF08354) : const Color(0xFFFFBC42));
      if (afternoon) {
        canvas.drawCircle(
            sun,
            12 + math.sin(phase) * .8,
            Paint()
              ..color = const Color(0xFFEFA12B).withAlpha(55)
              ..style = PaintingStyle.stroke
              ..strokeWidth = .7);
      }
      final cloud = Offset((afternoon ? 38 : 28) + math.sin(phase) * 3, 24);
      final paint = Paint()..color = Colors.white.withAlpha(225);
      canvas.drawRRect(
          RRect.fromRectAndRadius(
              Rect.fromCenter(center: cloud, width: 23, height: 6),
              const Radius.circular(3)),
          paint);
      canvas.drawCircle(cloud + const Offset(-4, -3), 4, paint);
      canvas.drawCircle(cloud + const Offset(3, -4), 5, paint);
    }
    canvas.restore();
  }

  @override
  bool shouldRepaint(_SkyPainter oldDelegate) =>
      oldDelegate.hour != hour ||
      oldDelegate.motion != motion ||
      oldDelegate.background != background;
}
