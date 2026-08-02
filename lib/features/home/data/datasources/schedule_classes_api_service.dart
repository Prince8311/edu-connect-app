import 'package:dio/dio.dart' hide Headers;
import 'package:edu_connect/core/api/api_client.dart';
import 'package:edu_connect/core/api/end_points.dart';
import 'package:edu_connect/core/shared/models/api_response_model.dart';
import 'package:edu_connect/features/home/domain/models/time_slot_model.dart';
import 'package:edu_connect/features/time-table/domain/models/schedule_classes_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:retrofit/retrofit.dart';

part 'schedule_classes_api_service.g.dart';

final scheduleClassesApiServiceProvider =
    Provider<ScheduleClassesApiService>((ref) {
  return ScheduleClassesApiService(ref.read(apiClientProvider));
});

@RestApi(baseUrl: Endpoints.apiURL)
abstract class ScheduleClassesApiService {
  factory ScheduleClassesApiService(Dio dio, {String baseUrl}) =
      _ScheduleClassesApiService;

  @GET(Endpoints.timeSlots)
  Future<ApiResponse<List<TimeSlotModel>>> getTimeSlots();

  @GET(Endpoints.scheduledClasses)
  Future<ApiResponse<TimeTableResponse>> getScheduleClasses({
    @Query("intent") String? intent,
  });

  @GET(Endpoints.ongoingClass)
  Future<ApiResponse<OngoingClassModel>> ongoingClass();
}
