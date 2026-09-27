import 'dart:typed_data';

import 'package:edu_connect/core/shared/miscellaneous/app_extensions.dart';
import 'package:edu_connect/features/profile/presentation/providers/profile_provider.dart';
import 'package:edu_connect/gen/colors.gen.dart';
import 'package:edu_connect/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProfilePhotoEditor extends ConsumerStatefulWidget {
  const ProfilePhotoEditor({super.key, required this.currentPhoto});

  final Widget currentPhoto;

  @override
  ConsumerState<ProfilePhotoEditor> createState() => _ProfilePhotoEditorState();
}

class _ProfilePhotoEditorState extends ConsumerState<ProfilePhotoEditor>
    with SingleTickerProviderStateMixin {
  Uint8List? _preview;
  Uint8List? _incomingPhoto;
  bool _picking = false;
  bool _uploading = false;
  Widget? _previousPhoto;
  late final AnimationController _scanController;

  @override
  void initState() {
    super.initState();
    _scanController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1800),
    );
  }

  @override
  void dispose() {
    _scanController.dispose();
    super.dispose();
  }

  Future<void> _revealPhoto(Uint8List bytes) async {
    await precacheImage(MemoryImage(bytes), context);
    if (!mounted) return;
    if (!MediaQuery.disableAnimationsOf(context)) {
      // Let the confirmation sheet clear the avatar before the scan starts.
      await Future<void>.delayed(const Duration(milliseconds: 300));
      if (!mounted) return;
      _scanController.value = 0;
      setState(() => _incomingPhoto = bytes);
      await _scanController.forward().orCancel;
      if (!mounted) return;
    }
    setState(() {
      _preview = bytes;
      _incomingPhoto = null;
      _previousPhoto = null;
    });
  }

  Widget get _currentPhoto =>
      _previousPhoto ??
      (_preview == null
          ? widget.currentPhoto
          : Image.memory(_preview!, fit: BoxFit.cover, gaplessPlayback: true));

  Future<void> _pickPhoto() async {
    if (_picking) return;
    setState(() => _picking = true);
    try {
      final file = await ImagePicker().pickImage(
        source: ImageSource.gallery,
        maxWidth: 1600,
        maxHeight: 1600,
        imageQuality: 90,
        requestFullMetadata: false,
      );
      if (file == null || !mounted) return;
      final bytes = await file.readAsBytes();
      // Decode before opening the sheet so an unreadable file cannot be confirmed.
      final decoded = await decodeImageFromList(bytes);
      decoded.dispose();
      if (!mounted) return;
      final confirmed = await showModalBottomSheet<bool>(
        context: context,
        useRootNavigator: true,
        isScrollControlled: true,
        useSafeArea: true,
        backgroundColor: Colors.white,
        barrierColor: const Color(0xFF102342).withAlpha(125),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
        ),
        clipBehavior: Clip.antiAlias,
        builder: (context) => ProfilePhotoConfirmationSheet(
          currentPhoto: _currentPhoto,
          selectedPhoto: bytes,
        ),
      );
      if (!mounted || confirmed != true) return;
      final previousPhoto = _currentPhoto;
      setState(() {
        _previousPhoto = previousPhoto;
        _uploading = true;
      });
      if (MediaQuery.disableAnimationsOf(context)) {
        _scanController.value = 0.5;
      } else {
        _scanController.repeat(period: const Duration(milliseconds: 1400));
      }
      final response = await ref
          .read(userDetailsNotifierProvider.notifier)
          .updateProfileImage(bytes: bytes, filename: file.name);
      if (!mounted) return;
      _scanController.stop();
      setState(() => _uploading = false);
      if (response == null) return;
      await _revealPhoto(bytes);
      if (!mounted) return;
    } on TickerCanceled {
      // The profile screen was removed while the scan was running.
    } catch (_) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
              'Unable to open this photo. Please try another image or check photo access in Settings.'),
        ),
      );
    } finally {
      if (mounted) {
        _scanController.stop();
        setState(() {
          _picking = false;
          _uploading = false;
          _previousPhoto = null;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 112,
      height: 112,
      child: Stack(
        children: [
          Container(
            width: 104,
            height: 104,
            padding: const EdgeInsets.all(3),
            decoration: const BoxDecoration(
              color: ColorName.blueColor2,
              shape: BoxShape.circle,
            ),
            child: Container(
              padding: const EdgeInsets.all(3.5),
              decoration: const BoxDecoration(
                  color: Colors.white, shape: BoxShape.circle),
              child: ClipOval(
                child: _incomingPhoto == null
                    ? _currentPhoto
                    : AnimatedBuilder(
                        animation: _scanController,
                        builder: (context, child) {
                          final progress = Curves.easeInOutSine
                              .transform(_scanController.value);
                          return Stack(
                            fit: StackFit.expand,
                            children: [
                              _currentPhoto,
                              ClipPath(
                                clipper: _PhotoScanClipper(progress),
                                child: child,
                              ),
                              CustomPaint(painter: _PhotoScanPainter(progress)),
                            ],
                          );
                        },
                        child: Image.memory(_incomingPhoto!, fit: BoxFit.cover),
                      ),
              ),
            ),
          ),
          if (_uploading)
            Positioned(
              top: 6.5,
              left: 6.5,
              width: 91,
              height: 91,
              child: Semantics(
                label: 'Uploading profile photo',
                liveRegion: true,
                child: ClipOval(
                  child: ColoredBox(
                    color: const Color(0x330C2340),
                    child: AnimatedBuilder(
                      animation: _scanController,
                      builder: (context, child) => CustomPaint(
                        painter: _PhotoScanPainter(
                          Curves.easeInOutSine.transform(_scanController.value),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          Positioned(
            right: 5,
            bottom: 5,
            child: GestureDetector(
              onTap: _picking ? null : _pickPhoto,
              child: Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  color: ColorName.blueColor2,
                  border: Border.all(color: Colors.white, width: 3),
                  borderRadius: BorderRadius.circular(55),
                ),
                child: Icon(
                  Icons.edit,
                  size: 16.sp,
                  color: ColorName.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Small staggered columns make the reveal resolve in pixels at the scan edge.
class _PhotoScanClipper extends CustomClipper<Path> {
  const _PhotoScanClipper(this.progress);
  final double progress;

  @override
  Path getClip(Size size) {
    final path = Path();
    final edge = progress * (size.height + 12) - 6;
    for (var column = 0; column * 2 < size.width; column++) {
      final offset = ((column * 17) % 7 - 3).toDouble();
      final bottom = (edge + offset).clamp(0.0, size.height);
      path.addRect(Rect.fromLTWH(column * 2.0, 0, 2, bottom));
    }
    return path;
  }

  @override
  bool shouldReclip(_PhotoScanClipper oldClipper) =>
      oldClipper.progress != progress;
}

class _PhotoScanPainter extends CustomPainter {
  const _PhotoScanPainter(this.progress);
  final double progress;

  @override
  void paint(Canvas canvas, Size size) {
    final y = progress * (size.height + 12) - 6;
    final opacity =
        (progress * 12).clamp(0.0, 1.0) * ((1 - progress) * 12).clamp(0.0, 1.0);
    final band = Rect.fromLTWH(0, y - 16, size.width, 22);
    canvas.drawRect(
      band,
      Paint()
        ..shader = LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: const [0, 0.72, 1],
          colors: [
            const Color(0xFF6EE7FF).withValues(alpha: 0),
            const Color(0xFF6EE7FF).withValues(alpha: 0.4 * opacity),
            const Color(0xFF6EE7FF).withValues(alpha: 0),
          ],
        ).createShader(band),
    );
    final line = Paint()
      ..color = const Color(0xFFB9F5FF).withValues(alpha: opacity)
      ..strokeWidth = 2
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 3);
    canvas.drawLine(Offset(0, y), Offset(size.width, y), line);
    canvas.drawLine(
      Offset(0, y),
      Offset(size.width, y),
      Paint()
        ..color = Colors.white.withValues(alpha: opacity)
        ..strokeWidth = 1,
    );
    for (var column = 0; column * 4 < size.width; column++) {
      final offset = ((column * 13) % 9 - 4).toDouble();
      canvas.drawRect(
        Rect.fromLTWH(column * 4.0, y + offset, 1.5, 1.5),
        Paint()
          ..color = const Color(0xFFD5FAFF).withValues(alpha: opacity * 0.7),
      );
    }
  }

  @override
  bool shouldRepaint(_PhotoScanPainter oldDelegate) =>
      oldDelegate.progress != progress;
}

class ProfilePhotoConfirmationSheet extends StatelessWidget {
  const ProfilePhotoConfirmationSheet({
    super.key,
    required this.currentPhoto,
    required this.selectedPhoto,
  });

  final Widget currentPhoto;
  final Uint8List selectedPhoto;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(24, 12, 24, 24),
        child: DefaultTextStyle(
          style: const TextStyle(
              fontFamily: FontFamily.poppins, color: Color(0xFF182B49)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                  width: 40,
                  height: 4,
                  decoration: BoxDecoration(
                      color: const Color(0xFFDCE2EA),
                      borderRadius: BorderRadius.circular(8))),
              const SizedBox(height: 24),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                    color: const Color(0xFFEDF3FF),
                    borderRadius: BorderRadius.circular(30)),
                child: const Text('A FRESH LOOK',
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1.5,
                        color: ColorName.blueColor2)),
              ),
              const SizedBox(height: 14),
              const Text('Change your profile photo',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 22, fontWeight: FontWeight.w600, height: 1.3)),
              const SizedBox(height: 8),
              const Text('A little update. A familiar you.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 13, color: Color(0xFF718097))),
              const SizedBox(height: 28),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Color(0xFFF5F8FF), Color(0xFFEDF3FC)]),
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(color: const Color(0xFFE4EBF7)),
                ),
                child: Row(
                  children: [
                    Expanded(
                        child: _photo(currentPhoto, 'Current photo', false)),
                    Container(
                      margin: const EdgeInsets.fromLTRB(8, 0, 8, 28),
                      padding: const EdgeInsets.all(9),
                      decoration: const BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                      child: const Icon(Icons.arrow_forward_rounded,
                          size: 20, color: ColorName.blueColor2),
                    ),
                    Expanded(
                        child: _photo(
                            Image.memory(selectedPhoto, fit: BoxFit.cover),
                            'New photo',
                            true)),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text('Preview your new photo before confirming.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 12, height: 1.6, color: Color(0xFF718097))),
              const SizedBox(height: 24),
              Row(
                children: [
                  Expanded(
                      child: OutlinedButton(
                    onPressed: () => Navigator.of(context).pop(false),
                    style: OutlinedButton.styleFrom(
                      foregroundColor: const Color(0xFF58677D),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      side: const BorderSide(color: Color(0xFFDCE3EF)),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)),
                    ),
                    child: const Text('Cancel'),
                  )),
                  const SizedBox(width: 12),
                  Expanded(
                      child: FilledButton(
                    onPressed: () => Navigator.of(context).pop(true),
                    style: FilledButton.styleFrom(
                      backgroundColor: ColorName.blueColor2,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)),
                    ),
                    child: const Text('Confirm'),
                  )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _photo(Widget image, String label, bool selected) {
    return Column(
      children: [
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 104),
          child: AspectRatio(
            aspectRatio: 1,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    border: Border.all(
                        color: selected
                            ? ColorName.blueColor2
                            : const Color(0xFFDCE3EF),
                        width: selected ? 2 : 1),
                    boxShadow: [
                      BoxShadow(
                          color: ColorName.blueColor2
                              .withAlpha(selected ? 28 : 10),
                          blurRadius: 18,
                          offset: const Offset(0, 6))
                    ],
                  ),
                  child: ClipOval(child: image),
                ),
                if (selected)
                  Positioned(
                      right: 1,
                      bottom: 2,
                      child: Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            color: ColorName.blueColor2,
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white, width: 2)),
                        child: const Icon(Icons.check_rounded,
                            color: Colors.white, size: 14),
                      )),
              ],
            ),
          ),
        ),
        const SizedBox(height: 12),
        Text(label,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 11,
                fontWeight: selected ? FontWeight.w600 : FontWeight.w400,
                color:
                    selected ? ColorName.blueColor2 : const Color(0xFF718097))),
      ],
    );
  }
}
