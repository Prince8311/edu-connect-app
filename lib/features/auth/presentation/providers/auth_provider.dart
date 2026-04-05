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
Future<LoginResponse?> login(
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
