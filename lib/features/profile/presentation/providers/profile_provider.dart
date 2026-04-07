import 'package:edu_connect/core/api/error_handler.dart';
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
      return null;
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
