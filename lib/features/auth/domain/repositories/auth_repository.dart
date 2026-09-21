import 'package:edu_connect/core/shared/miscellaneous/typedefs.dart';
import 'package:edu_connect/core/shared/models/api_response_model.dart';
import 'package:edu_connect/features/auth/domain/models/auth_model.dart';

abstract class AuthRepository {
  FutureEither<AuthResponse?> login({required LoginRequest requestBody});
  FutureEither<AuthResponse?> biometricLogin(
      {required BiometricLoginRequest requestBody});
  FutureEither<bool?> sendAuthOtp({required OtpRequest requestBody});
  FutureEither<AuthResponse?> selectRole(
      {required RoleSelectRequest requestBody});
  FutureEither<List<GuardianStudent>?> getGuardianStudents({
    String? tempToken,
  });
  FutureEither<List<BiometricUserInfo>?> getBiometricUsers({
    String? deviceId,
    String? deviceToken,
    String? biometricType,
  });

  FutureEither<AuthResponse?> selectStudent(
      {required StudentSelectRequest requestBody});
  FutureEither<ApiResponse?> logout();
}
