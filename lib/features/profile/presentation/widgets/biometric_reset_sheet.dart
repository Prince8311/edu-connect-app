import 'package:edu_connect/core/shared/miscellaneous/app_extensions.dart';
import 'package:edu_connect/core/shared/miscellaneous/gap.dart';
import 'package:edu_connect/features/profile/presentation/providers/biometric_provider.dart';
import 'package:edu_connect/gen/colors.gen.dart';
import 'package:edu_connect/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BiometricResetSheet extends ConsumerStatefulWidget {
  const BiometricResetSheet({super.key});

  @override
  ConsumerState<BiometricResetSheet> createState() =>
      _BiometricResetSheetState();
}

class _BiometricResetSheetState extends ConsumerState<BiometricResetSheet> {
  bool _saving = false;

  Future<void> _confirm() async {
    if (_saving) return;
    setState(() => _saving = true);
    try {
      final success = await ref.read(biometricSetupProvider).reset();
      if (mounted && success) Navigator.of(context).pop(true);
    } finally {
      if (mounted) setState(() => _saving = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: !_saving,
      child: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(20, 28, 20, 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.fingerprint,
                  size: 80, color: ColorName.blueColor2),
              Gap(16.h),
              const Text('Disable fingerprint login?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: FontFamily.poppins,
                      fontSize: 20,
                      fontWeight: FontWeight.w600)),
              const SizedBox(height: 12),
              const Text(
                'This will remove fingerprint login from this device. You can enable it again from your profile settings.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: FontFamily.poppins, color: ColorName.black2),
              ),
              Gap(24.h),
              SizedBox(
                width: double.infinity,
                height: 54,
                child: FilledButton(
                  onPressed: _saving ? null : _confirm,
                  style: FilledButton.styleFrom(
                      backgroundColor: ColorName.blueColor2),
                  child: _saving
                      ? const SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(strokeWidth: 2))
                      : const Text('Confirm',
                          style: TextStyle(fontFamily: FontFamily.poppins)),
                ),
              ),
              TextButton(
                onPressed:
                    _saving ? null : () => Navigator.of(context).pop(false),
                child: const Text('Cancel',
                    style: TextStyle(fontFamily: FontFamily.poppins)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
