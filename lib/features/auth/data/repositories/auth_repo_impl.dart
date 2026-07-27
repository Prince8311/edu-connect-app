import 'package:edu_connect/core/api/api_handler.dart';
import 'package:edu_connect/core/shared/miscellaneous/typedefs.dart';
import 'package:edu_connect/core/shared/models/api_response_model.dart';
import 'package:edu_connect/core/shared/widgets/toast.dart';
import 'package:edu_connect/features/auth/data/datasources/auth_api_service.dart';
import 'package:edu_connect/features/auth/domain/models/auth_model.dart';
import 'package:edu_connect/features/auth/domain/repositories/auth_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final authRepoProvider = Provider<AuthRepository>((ref) {
  return AuthRepoImpl(ref, ref.read(authApiServiceProvider));
});

class AuthRepoImpl extends AuthRepository {
  final AuthApiService _apiService;
  final Ref ref;

  AuthRepoImpl(this.ref, AuthApiService apiService) : _apiService = apiService;

  @override
  FutureEither<AuthResponse?> login({required LoginRequest requestBody}) {
    return apiHandler<AuthResponse?>(
      () async {
        var res = await _apiService.login(requestBody);
        successToast(res.message);
        return res.data;
      },
    );
  }

  @override
  FutureEither<bool?> sendAuthOtp({required OtpRequest requestBody}) {
    return apiHandler<bool?>(
      () async {
        var res = await _apiService.sendAuthOtp(requestBody);
        successToast(res.message);
        return res.success;
      },
    );
  }

  @override
  FutureEither<AuthResponse?> selectRole(
      {required RoleSelectRequest requestBody}) {
    return apiHandler<AuthResponse?>(
      () async {
        var res = await _apiService.selectRole(requestBody);
        successToast(res.message);
        return res.data;
      },
    );
  }

  @override
  FutureEither<List<GuardianStudent>?> getGuardianStudents({
    String? tempToken,
  }) {
    return apiHandler<List<GuardianStudent>?>(
      () async {
        final res = await _apiService.getGuardianStudents(tempToken: tempToken);
        successToast(res.message);
        return res.data;
      },
    );
  }

  @override
  FutureEither<AuthResponse?> selectStudent(
      {required StudentSelectRequest requestBody}) {
    return apiHandler<AuthResponse?>(
      () async {
        var res = await _apiService.selectStudent(requestBody);
        successToast(res.message);
        return res.data;
      },
    );
  }

  @override
  FutureEither<ApiResponse?> logout() {
    return apiHandler<ApiResponse?>(
      () async {
        var res = await _apiService.logout();
        successToast(res.message);
        return res;
      },
    );
  }
}
