import 'package:dio/dio.dart' hide Headers;
import 'package:edu_connect/core/api/api_client.dart';
import 'package:edu_connect/core/api/end_points.dart';
import 'package:edu_connect/core/shared/models/api_response_model.dart';
import 'package:edu_connect/features/classroom/domain/models/classroom_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:retrofit/retrofit.dart';

part 'classroom_api_service.g.dart';

final classroomApiServiceProvider = Provider<ClassroomApiService>((ref) {
  return ClassroomApiService(ref.read(apiClientProvider));
});

@RestApi(baseUrl: Endpoints.apiURL)
abstract class ClassroomApiService {
  factory ClassroomApiService(Dio dio, {String baseUrl}) = _ClassroomApiService;

  @GET(Endpoints.classroomDetails)
  Future<ApiResponse<ClassroomModel>> getClassroomDetails({
    @Query('id') required int id,
  });
}
