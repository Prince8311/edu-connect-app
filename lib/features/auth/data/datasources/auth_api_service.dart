import 'package:dio/dio.dart' hide Headers;
import 'package:edu_connect/core/api/api_client.dart';
import 'package:edu_connect/core/api/end_points.dart';
import 'package:edu_connect/core/shared/models/api_response_model.dart';
import 'package:edu_connect/features/auth/domain/models/auth_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_api_service.g.dart';

final authApiServiceProvider = Provider<AuthApiService>((ref) {
  return AuthApiService(ref.read(apiClientProvider));
});

@RestApi(baseUrl: Endpoints.apiURL)
abstract class AuthApiService {
  factory AuthApiService(Dio dio, {String baseUrl}) = _AuthApiService;

  @POST(Endpoints.login)
  @Headers(<String, dynamic>{'Content-Type': 'application/json'})
  Future<ApiResponse<LoginResponse>> login(@Body() LoginRequest body);

  @POST(Endpoints.sendOTP)
  @Headers(<String, dynamic>{'Content-Type': 'application/json'})
  Future<ApiResponse> sendAuthOtp(@Body() OtpRequest body);

  @POST(Endpoints.logout)
  @Headers(<String, dynamic>{'Content-Type': 'application/json'})
  Future<ApiResponse> logout();
}
