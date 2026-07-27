import 'dart:convert';

import 'package:edu_connect/core/api/error_handler.dart';
import 'package:edu_connect/core/shared/helpers/local_storage.dart';
import 'package:edu_connect/features/auth/data/repositories/auth_repo_impl.dart';
import 'package:edu_connect/features/auth/domain/models/auth_model.dart';
import 'package:edu_connect/features/auth/presentation/providers/auth_token_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_provider.g.dart';

@riverpod
Future<AuthResponse?> login(
  Ref ref, {
  required LoginRequest requestBody,
}) async {
  final repo = ref.read(authRepoProvider);
  final result = await repo.login(requestBody: requestBody);
  return result.fold(
    (l) {
      ApiError.commonErrorHandler(l);
      return null;
    },
    (r) async {
      if (r == null) return null;
      if (r.tempToken != null) {
        await ref.read(secureStorageProvider).writeData(
              'tempToken',
              r.tempToken!,
            );
      }
      if (r.authToken != null) {
        await ref.read(authTokenProvider.notifier).saveToken(r.authToken!);
      }
      if (r.user != null) {
        await ref.read(secureStorageProvider).writeData(
              'user',
              jsonEncode(r.user!.toJson()),
            );
      }
      return r;
    },
  );
}

@riverpod
Future<bool?> sendOtp(
  Ref ref, {
  required OtpRequest requestBody,
}) async {
  final repo = ref.read(authRepoProvider);

  final result = await repo.sendAuthOtp(requestBody: requestBody);

  return result.fold(
    (l) {
      ApiError.commonErrorHandler(l);
      return null;
    },
    (r) => r,
  );
}

@riverpod
Future<AuthResponse?> roleSelect(
  Ref ref, {
  required RoleSelectRequest requestBody,
}) async {
  final repo = ref.read(authRepoProvider);
  final result = await repo.selectRole(requestBody: requestBody);
  return result.fold(
    (l) {
      ApiError.commonErrorHandler(l);
      return null;
    },
    (r) async {
      if (r == null) return null;
      if (r.tempToken != null) {
        await ref.read(secureStorageProvider).writeData(
              'tempToken',
              r.tempToken!,
            );
      }
      if (r.authToken != null) {
        await ref.read(authTokenProvider.notifier).saveToken(r.authToken!);
      }
      if (r.user != null) {
        await ref.read(secureStorageProvider).writeData(
              'user',
              jsonEncode(r.user!.toJson()),
            );
      }
      return r;
    },
  );
}

@riverpod
Future<AuthResponse?> studentSelect(
  Ref ref, {
  required StudentSelectRequest requestBody,
}) async {
  final repo = ref.read(authRepoProvider);
  final result = await repo.selectStudent(requestBody: requestBody);
  return result.fold(
    (l) {
      ApiError.commonErrorHandler(l);
      return null;
    },
    (r) async {
      if (r == null) return null;
      if (r.tempToken != null) {
        await ref.read(secureStorageProvider).writeData(
              'tempToken',
              r.tempToken!,
            );
      }
      if (r.authToken != null) {
        await ref.read(authTokenProvider.notifier).saveToken(r.authToken!);
      }
      if (r.user != null) {
        await ref.read(secureStorageProvider).writeData(
              'user',
              jsonEncode(r.user!.toJson()),
            );
      }
      return r;
    },
  );
}

@riverpod
Future<List<GuardianStudent>?> getGuardianStudents(
  Ref ref, {
  String? tempToken,
}) async {
  final repo = ref.read(authRepoProvider);
  final result = await repo.getGuardianStudents(tempToken: tempToken);

  return result.fold(
    (l) {
      ApiError.commonErrorHandler(l);
      return null;
    },
    (r) => r,
  );
}

@riverpod
Future<UserInfo?> savedUserInfo(Ref ref) async {
  final userData = await ref.read(secureStorageProvider).readData('user');
  if (userData == null || userData.trim().isEmpty) {
    return null;
  }
  try {
    final decoded = jsonDecode(userData);
    if (decoded is! Map<String, dynamic>) {
      return null;
    }
    return UserInfo.fromJson(decoded);
  } catch (_) {
    return null;
  }
}

@riverpod
Future<bool?> logout(Ref ref) async {
  final result = await ref.read(authRepoProvider).logout();

  return result.fold(
    (l) {
      ApiError.commonErrorHandler(l);
      return null;
    },
    (r) async {
      if (r != null) {
        await ref.read(authTokenProvider.notifier).clear();
        await ref.read(secureStorageProvider).deleteData('user');
      }

      return r?.success;
    },
  );
}
