import 'package:edu_connect/core/shared/miscellaneous/typedefs.dart';
import 'package:edu_connect/features/home/domain/models/time_slot_model.dart';
import 'package:edu_connect/features/time-table/domain/models/schedule_classes_model.dart';

abstract class ScheduleClassesRepository {
  FutureEither<List<TimeSlotModel>?> getTimeSlots();
  FutureEither<TimeTableResponse?> getScheduleClasses({
    String? intent,
  });
  FutureEither<OngoingClassModel?> ongoingClass();
}
