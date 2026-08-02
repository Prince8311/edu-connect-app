import 'package:edu_connect/core/api/error_handler.dart';
import 'package:edu_connect/features/home/data/repositories/schedule_classes_repo_impl.dart';
import 'package:edu_connect/features/home/domain/models/time_slot_model.dart';
import 'package:edu_connect/features/time-table/domain/models/schedule_classes_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'schedule_classes_provider.g.dart';

@riverpod
Future<List<TimeSlotModel>?> getTimeSlots(Ref ref) async {
  final repo = ref.read(scheduleClassesRepoProvider);
  final result = await repo.getTimeSlots();

  return result.fold(
    (l) {
      ApiError.commonErrorHandler(l);
      return null;
    },
    (r) => r,
  );
}

@riverpod
Future<TimeTableResponse?> getScheduleClasses(
  Ref ref, {
  String? intent,
}) async {
  final repo = ref.read(scheduleClassesRepoProvider);
  final result = await repo.getScheduleClasses(intent: intent);

  return result.fold(
    (l) {
      ApiError.commonErrorHandler(l);
      return null;
    },
    (r) => r,
  );
}

@riverpod
Future<OngoingClassModel?> ongoingClass(Ref ref) async {
  final repo = ref.read(scheduleClassesRepoProvider);
  final result = await repo.ongoingClass();

  return result.fold(
    (l) {
      ApiError.commonErrorHandler(l);
      return null;
    },
    (r) => r,
  );
}
