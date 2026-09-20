import 'package:edu_connect/core/shared/helpers/local_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:local_auth/local_auth.dart';

const biometricEnabledKey = 'biometric_login_enabled';
final biometricServiceProvider = Provider((ref) => BiometricService());
final biometricEnabledProvider = FutureProvider<bool>((ref) async =>
    await ref.watch(secureStorageProvider).readBool(biometricEnabledKey) ??
    false);

class BiometricService {
  final _auth = LocalAuthentication();

  Future<String?> availabilityError() async {
    if (kIsWeb ||
        (defaultTargetPlatform != TargetPlatform.android &&
            defaultTargetPlatform != TargetPlatform.iOS)) {
      return 'Fingerprint setup is available on supported Android and iOS devices.';
    }
    if (defaultTargetPlatform == TargetPlatform.android) {
      final supported = await const MethodChannel('edu_connect/biometrics')
          .invokeMethod<bool>('hasFingerprintHardware');
      if (supported != true)
        return 'This device does not have a fingerprint sensor.';
    }
    if (!await _auth.canCheckBiometrics) {
      return 'Fingerprint verification is unavailable. Check your device security settings.';
    }
    final enrolled = await _auth.getAvailableBiometrics();
    if (enrolled.isEmpty) {
      return 'Add a fingerprint in your device Settings > Security, then return and try again.';
    }
    if (defaultTargetPlatform == TargetPlatform.iOS &&
        !enrolled.contains(BiometricType.fingerprint)) {
      return 'Touch ID is not available on this device. This setup requires fingerprint support.';
    }
    return null;
  }

  Future<bool> verify() => _auth.authenticate(
        localizedReason:
            'Verify your identity to enable biometric login for Edu Connect.',
        options: const AuthenticationOptions(
          biometricOnly: true,
          stickyAuth: false,
          useErrorDialogs: false,
        ),
      );

  Future<void> cancel() async {
    await _auth.stopAuthentication();
  }

  static String errorMessage(Object error) {
    if (error is PlatformException) {
      switch (error.code) {
        case 'NotEnrolled':
          return 'Add a fingerprint in your device security settings, then try again.';
        case 'LockedOut':
          return 'Too many attempts. Wait a moment before trying again.';
        case 'PermanentlyLockedOut':
          return 'Biometrics are locked. Unlock your device with its PIN or passcode, then try again.';
        case 'PasscodeNotSet':
          return 'Set up a device PIN or passcode before enabling fingerprints.';
        case 'NotAvailable':
          return 'Biometric verification is unavailable. Check your device security settings.';
      }
    }
    return 'Unable to start biometric verification. Please try again.';
  }
}
