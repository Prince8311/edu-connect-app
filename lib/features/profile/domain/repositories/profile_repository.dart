import 'package:edu_connect/core/shared/miscellaneous/typedefs.dart';
import 'package:edu_connect/features/auth/domain/models/auth_model.dart';
import 'package:edu_connect/features/profile/domain/models/profile_model.dart';

abstract class ProfileRepository {
  FutureEither<UserDetails?> getUserDetails();
  FutureEither<bool?> sendVerificationOtp({required OtpResquest requestBody});
  FutureEither<bool?> verifyOtp({required OtpVerifyResquest requestBody});
  FutureEither<List<GuardianStudent>?> getGuardianStudentList();
  FutureEither<AuthResponse?> switchStudent(
      {required StudentSwitchRequest requestBody});
  FutureEither<bool?> changePassword(
      {required ChangePasswordRequest requestBody});
  FutureEither<bool?> setupBiometric({required BiometricRequest requestBody});
  FutureEither<bool?> resetBiometric({required BiometricRequest requestBody});
}
