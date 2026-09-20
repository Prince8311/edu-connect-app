import 'dart:convert';

import 'package:edu_connect/core/api/error_handler.dart';
import 'package:edu_connect/core/shared/helpers/local_storage.dart';
import 'package:edu_connect/features/auth/domain/models/auth_model.dart';
import 'package:edu_connect/features/auth/presentation/providers/auth_token_provider.dart';
import 'package:edu_connect/features/profile/data/repositories/profile_repo_impl.dart';
import 'package:edu_connect/features/profile/domain/models/profile_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'profile_provider.g.dart';

@riverpod
class UserDetailsNotifier extends _$UserDetailsNotifier {
  @override
  Future<UserDetails?> build() async {
    final result = await ref.read(profileRepoProvider).getUserDetails();

    return result.fold(
      (error) {
        ApiError.commonErrorHandler(error);
        return null;
      },
      (data) => data,
    );
  }

  void updateEmailVerified(bool value) {
    final current = state.value;
    if (current == null) return;

    state = AsyncData(
      current.copyWith(isMailVerified: value),
    );
  }

  void updatePhoneVerified(bool value) {
    final current = state.value;
    if (current == null) return;

    state = AsyncData(
      current.copyWith(isPhoneVerified: value),
    );
  }
}

@riverpod
Future<bool?> sendVerificationOtp(
  Ref ref, {
  required OtpResquest requestBody,
}) async {
  final result = await ref
      .read(profileRepoProvider)
      .sendVerificationOtp(requestBody: requestBody);

  return result.fold(
    (l) {
      ApiError.commonErrorHandler(l);
      return false;
    },
    (r) => r,
  );
}

@riverpod
Future<bool?> verifyOtp(
  Ref ref, {
  required OtpVerifyResquest requestBody,
}) async {
  final result =
      await ref.read(profileRepoProvider).verifyOtp(requestBody: requestBody);

  return result.fold(
    (l) {
      ApiError.commonErrorHandler(l);
      return null;
    },
    (r) => r,
  );
}

@riverpod
Future<List<GuardianStudent>?> getGuardianStudentList(
  Ref ref, {
  String? tempToken,
}) async {
  final repo = ref.read(profileRepoProvider);
  final result = await repo.getGuardianStudentList();

  return result.fold(
    (l) {
      ApiError.commonErrorHandler(l);
      return null;
    },
    (r) => r,
  );
}

@riverpod
Future<AuthResponse?> studentSwitch(
  Ref ref, {
  required StudentSwitchRequest requestBody,
}) async {
  final repo = ref.read(profileRepoProvider);
  final result = await repo.switchStudent(requestBody: requestBody);
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
Future<bool?> changePassword(
  Ref ref, {
  required ChangePasswordRequest requestBody,
}) async {
  final result = await ref
      .read(profileRepoProvider)
      .changePassword(requestBody: requestBody);

  return result.fold(
    (l) {
      ApiError.commonErrorHandler(l);
      return false;
    },
    (r) => r,
  );
}
