import 'package:edu_connect/core/api/api_handler.dart';
import 'package:edu_connect/core/shared/miscellaneous/typedefs.dart';
import 'package:edu_connect/features/home/data/datasources/schedule_classes_api_service.dart';
import 'package:edu_connect/features/home/domain/models/time_slot_model.dart';
import 'package:edu_connect/features/home/domain/repositories/schedule_classes_repository.dart';
import 'package:edu_connect/features/time-table/domain/models/schedule_classes_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final scheduleClassesRepoProvider = Provider<ScheduleClassesRepository>((ref) {
  return ScheduleClassesRepoImpl(
      ref, ref.read(scheduleClassesApiServiceProvider));
});

class ScheduleClassesRepoImpl extends ScheduleClassesRepository {
  final ScheduleClassesApiService _apiService;
  final Ref ref;

  ScheduleClassesRepoImpl(this.ref, ScheduleClassesApiService apiService)
      : _apiService = apiService;

  @override
  FutureEither<List<TimeSlotModel>?> getTimeSlots() {
    return apiHandler<List<TimeSlotModel>?>(
      () async {
        final res = await _apiService.getTimeSlots();
        return res.data;
      },
    );
  }

  @override
  FutureEither<TimeTableResponse?> getScheduleClasses({String? intent}) {
    return apiHandler<TimeTableResponse?>(
      () async {
        final res = await _apiService.getScheduleClasses(intent: intent);
        return res.data;
      },
    );
  }

  @override
  FutureEither<OngoingClassModel?> ongoingClass() {
    return apiHandler<OngoingClassModel?>(
      () async {
        final res = await _apiService.ongoingClass();
        return res.data;
      },
    );
  }
}
