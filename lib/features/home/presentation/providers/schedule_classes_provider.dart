import 'package:edu_connect/core/api/error_handler.dart';
import 'package:edu_connect/features/home/data/repositories/schedule_classes_repo_impl.dart';
import 'package:edu_connect/features/time-table/domain/models/schedule_classes_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'schedule_classes_provider.g.dart';

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
