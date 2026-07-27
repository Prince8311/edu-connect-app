import 'package:edu_connect/core/shared/miscellaneous/typedefs.dart';
import 'package:edu_connect/features/time-table/domain/models/schedule_classes_model.dart';

abstract class AutScheduleClassesRepository {
  FutureEither<TimeTableResponse?> getScheduleClasses({
    String? intent,
  });
}
