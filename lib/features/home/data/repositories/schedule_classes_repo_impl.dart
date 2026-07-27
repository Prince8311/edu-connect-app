import 'package:edu_connect/core/api/api_handler.dart';
import 'package:edu_connect/core/shared/miscellaneous/typedefs.dart';
import 'package:edu_connect/features/home/data/datasources/schedule_classes_api_service.dart';
import 'package:edu_connect/features/home/domain/repositories/schedule_classes_repository.dart';
import 'package:edu_connect/features/time-table/domain/models/schedule_classes_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final scheduleClassesRepoProvider =
    Provider<AutScheduleClassesRepository>((ref) {
  return ScheduleClassesRepoImpl(
      ref, ref.read(scheduleClassesApiServiceProvider));
});

class ScheduleClassesRepoImpl extends AutScheduleClassesRepository {
  final ScheduleClassesApiService _apiService;
  final Ref ref;

  ScheduleClassesRepoImpl(this.ref, ScheduleClassesApiService apiService)
      : _apiService = apiService;

  @override
  FutureEither<TimeTableResponse?> getScheduleClasses({String? intent}) {
    return apiHandler<TimeTableResponse?>(
      () async {
        final res = await _apiService.getScheduleClasses(intent: intent);
        return res.data;
      },
    );
  }
}
