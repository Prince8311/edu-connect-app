import 'dart:convert';
import 'dart:math';

import 'package:edu_connect/features/auth/presentation/providers/auth_provider.dart';

import 'package:edu_connect/core/shared/helpers/local_storage.dart';
import 'package:edu_connect/core/api/error_handler.dart';
import 'package:edu_connect/core/shared/widgets/toast.dart';
import 'package:edu_connect/features/profile/data/repositories/profile_repo_impl.dart';
import 'package:edu_connect/features/profile/domain/models/profile_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:local_auth/local_auth.dart';

const biometricEnabledKey = LocalStorageKeys.fingerprintEnabled;
const fingerprintBiometricType = 'fingerPrint';

String _buildDeviceToken() {
  final random = Random.secure();
  return base64UrlEncode(List.generate(32, (_) => random.nextInt(256)));
}

class BiometricDeviceConfig {
  const BiometricDeviceConfig({
    required this.deviceToken,
    required this.type,
    required this.users,
  });

  final String deviceToken;
  final String type;
  final List<String> users;

  factory BiometricDeviceConfig.fromJson(Map<String, dynamic> json) {
    final users = (json['users'] as List<dynamic>? ?? const [])
        .map((entry) => entry.toString())
        .toList();
    return BiometricDeviceConfig(
      deviceToken: (json['deviceToken'] ?? json['token'])?.toString() ?? '',
      type: (json['type'] ?? fingerprintBiometricType).toString(),
      users: users,
    );
  }

  Map<String, dynamic> toJson() => {
        'deviceToken': deviceToken,
        'type': type,
        'users': users,
      };
}

Future<String?> _currentUserId(LocalDB storage) async {
  final rawUser = await storage.readData('user');
  if (rawUser == null || rawUser.isEmpty) return null;

  try {
    final user = jsonDecode(rawUser) as Map<String, dynamic>;
    return user['id']?.toString();
  } catch (_) {
    return null;
  }
}

Future<BiometricDeviceConfig?> readBiometricConfig(
  LocalDB storage,
) async {
  final raw = await storage.readData(LocalStorageKeys.biometricDeviceToken);
  if (raw == null || raw.isEmpty) return null;

  try {
    final map = jsonDecode(raw) as Map<String, dynamic>;
    return BiometricDeviceConfig.fromJson(map);
  } catch (_) {
    return null;
  }
}

Future<void> _writeBiometricConfig(
  LocalDB storage,
  BiometricDeviceConfig config,
) async {
  if (!await storage.writeData(
    LocalStorageKeys.biometricDeviceToken,
    jsonEncode(config.toJson()),
  )) {
    throw StateError('Unable to save biometric configuration');
  }
}

final biometricServiceProvider = Provider((ref) => BiometricService());
final biometricEnabledProvider = FutureProvider<bool>((ref) async {
  final storage = ref.watch(secureStorageProvider);
  final currentUserId =
      (await ref.watch(savedUserInfoProvider.future))?.id?.toString();
  final enabled = await storage.readBool(biometricEnabledKey) ?? false;

  if (!enabled || currentUserId == null || currentUserId.isEmpty) {
    return false;
  }

  final config = await readBiometricConfig(storage);
  if (config == null ||
      config.type != fingerprintBiometricType ||
      config.deviceToken.isEmpty ||
      config.users.isEmpty) {
    return false;
  }

  if (!config.users.contains(currentUserId)) {
    return false;
  }

  return true;
});

final biometricLoginAvailableProvider = FutureProvider<bool>((ref) async {
  return _biometricLoginAvailable(ref);
});

Future<bool> _biometricLoginAvailable(Ref ref) async {
  final storage = ref.watch(secureStorageProvider);
  final config = await readBiometricConfig(storage);
  final deviceId = await storage.readData(LocalStorageKeys.biometricDeviceId);
  return deviceId != null &&
      deviceId.isNotEmpty &&
      config != null &&
      config.type == fingerprintBiometricType &&
      config.deviceToken.isNotEmpty &&
      config.users.isNotEmpty;
}

final biometricSetupProvider = Provider((ref) => BiometricSetup(ref));

class BiometricSetup {
  BiometricSetup(this.ref);

  final Ref ref;

  Future<bool> reset() async {
    final storage = ref.read(secureStorageProvider);
    try {
      final deviceId =
          await storage.readData(LocalStorageKeys.biometricDeviceId);
      final currentUserId = await _currentUserId(storage);
      final config =
          await readBiometricConfig(storage);
      if (deviceId == null ||
          deviceId.isEmpty ||
          config == null ||
          currentUserId == null ||
          currentUserId.isEmpty ||
          !config.users.contains(currentUserId)) {
        errorToast(
            'The saved fingerprint setup is unavailable. Please set it up again.');
        return false;
      }

      final deviceToken = config.deviceToken;
      final result = await ref.read(profileRepoProvider).resetBiometric(
            requestBody: BiometricRequest(
              deviceId: deviceId,
              deviceToken: deviceToken,
              biometricType: fingerprintBiometricType,
            ),
          );
      final success = result.fold(
        (error) {
          ApiError.commonErrorHandler(error);
          return false;
        },
        (value) => value == true,
      );
      if (!success) return false;

      final remainingUsers =
          config.users.where((userId) => userId != currentUserId).toList();
      await _writeBiometricConfig(
        storage,
        BiometricDeviceConfig(
          deviceToken: config.deviceToken,
          type: fingerprintBiometricType,
          users: remainingUsers,
        ),
      );
      final hasRemainingUsers = remainingUsers.isNotEmpty;
      if (!await storage.writeBool(biometricEnabledKey, hasRemainingUsers)) {
        throw StateError('Unable to save fingerprint preference');
      }
      await storage.deleteData(LocalStorageKeys.biometricUserId);
      ref.invalidate(biometricEnabledProvider);
      ref.invalidate(biometricLoginAvailableProvider);
      return true;
    } catch (_) {
      errorToast(
          'Unable to finish removing fingerprint login. Please try again.');
      return false;
    }
  }

  Future<bool> setup({
    required BiometricRequest requestBody,
    required String userId,
  }) async {
    final storage = ref.read(secureStorageProvider);
    final type = requestBody.biometricType ?? fingerprintBiometricType;
    if (type != fingerprintBiometricType) {
      errorToast('Only fingerprint login is supported.');
      return false;
    }
    final deviceId = requestBody.deviceId ??
        await storage.readData(LocalStorageKeys.biometricDeviceId) ??
        '';
    if (deviceId.isEmpty || userId.trim().isEmpty) {
      errorToast(
          'Unable to identify this device or account. Please sign in again.');
      return false;
    }
    final existing = await readBiometricConfig(storage);
    final users = <String>{
      if (existing != null) ...existing.users,
      if (userId.trim().isNotEmpty) userId,
    }.toList();

    final config = BiometricDeviceConfig(
      deviceToken: existing?.deviceToken.isNotEmpty == true
          ? existing!.deviceToken
          : _buildDeviceToken(),
      type: type,
      users: users,
    );

    final result = await ref.read(profileRepoProvider).setupBiometric(
          requestBody: requestBody.copyWith(
              deviceId: deviceId, deviceToken: config.deviceToken),
        );
    return result.fold(
      (error) {
        ApiError.commonErrorHandler(error);
        return false;
      },
      (success) async {
        if (success != true) return false;
        await _writeBiometricConfig(storage, config);
        if (!await storage.writeBool(biometricEnabledKey, true)) {
          ref.invalidate(biometricEnabledProvider);
          ref.invalidate(biometricLoginAvailableProvider);
          errorToast('Unable to save fingerprint login. Please try again.');
          return false;
        }
        ref.invalidate(biometricEnabledProvider);
        ref.invalidate(biometricLoginAvailableProvider);
        return true;
      },
    );
  }
}

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
        localizedReason: 'Verify your identity to continue with Edu Connect.',
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
