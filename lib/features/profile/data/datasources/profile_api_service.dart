import 'package:dio/dio.dart' hide Headers;
import 'package:edu_connect/core/api/api_client.dart';
import 'package:edu_connect/core/api/end_points.dart';
import 'package:edu_connect/core/shared/models/api_response_model.dart';
import 'package:edu_connect/features/profile/domain/models/profile_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:retrofit/retrofit.dart';

part 'profile_api_service.g.dart';

final profileApiServiceProvider = Provider<ProfileApiService>((ref) {
  return ProfileApiService(ref.read(apiClientProvider));
});

@RestApi(baseUrl: Endpoints.apiURL)
abstract class ProfileApiService {
  factory ProfileApiService(Dio dio, {String baseUrl}) = _ProfileApiService;

  @GET(Endpoints.profileDetails)
  Future<ApiResponse<UserDetails>> getUserDetails();

  @POST(Endpoints.sendVerificationOtp)
  @Headers(<String, dynamic>{'Content-Type': 'application/json'})
  Future<ApiResponse> sendVerificationOtp(@Body() OtpResquest body);

  @POST(Endpoints.verifyOtp)
  @Headers(<String, dynamic>{'Content-Type': 'application/json'})
  Future<ApiResponse> verifyOtp(@Body() OtpVerifyResquest body);
}
