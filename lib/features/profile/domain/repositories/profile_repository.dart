import 'package:edu_connect/core/shared/miscellaneous/typedefs.dart';
import 'package:edu_connect/features/profile/domain/models/profile_model.dart';

abstract class ProfileRepository {
  FutureEither<UserDetails?> getUserDetails();
  FutureEither<bool?> sendVerificationOtp({required OtpResquest requestBody});
  FutureEither<bool?> verifyOtp({required OtpVerifyResquest requestBody});
}
