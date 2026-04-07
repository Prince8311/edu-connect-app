import 'package:edu_connect/core/api/api_handler.dart';
import 'package:edu_connect/core/shared/miscellaneous/typedefs.dart';
import 'package:edu_connect/core/shared/widgets/toast.dart';
import 'package:edu_connect/features/profile/domain/models/profile_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:edu_connect/features/profile/data/datasources/profile_api_service.dart';
import 'package:edu_connect/features/profile/domain/repositories/profile_repository.dart';

final profileRepoProvider = Provider<ProfileRepository>((ref) {
  return ProfileRepoImpl(ref, ref.read(profileApiServiceProvider));
});

class ProfileRepoImpl extends ProfileRepository {
  final ProfileApiService _apiService;
  final Ref ref;

  ProfileRepoImpl(this.ref, ProfileApiService apiService)
      : _apiService = apiService;

  @override
  FutureEither<UserDetails?> getUserDetails() {
    return apiHandler<UserDetails?>(() async {
      final res = await _apiService.getUserDetails();
      return res.data;
    });
  }

  @override
  FutureEither<bool?> sendVerificationOtp({required OtpResquest requestBody}) {
    return apiHandler<bool?>(
      () async {
        var res = await _apiService.sendVerificationOtp(requestBody);
        successToast(res.message);
        return res.success;
      },
    );
  }

  @override
  FutureEither<bool?> verifyOtp({required OtpVerifyResquest requestBody}) {
    return apiHandler<bool?>(
      () async {
        var res = await _apiService.verifyOtp(requestBody);
        successToast(res.message);
        return res.success;
      },
    );
  }
}
