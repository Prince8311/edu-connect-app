import 'package:edu_connect/core/api/error_handler.dart';
import 'package:edu_connect/features/auth/presentation/providers/auth_token_provider.dart';
import 'package:edu_connect/features/classroom/data/repositories/classroom_impl.dart';
import 'package:edu_connect/features/classroom/domain/models/classroom_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'classroom_provider.g.dart';

@riverpod
Future<ClassroomModel?> getClassroomDetails(Ref ref, {required int id}) async {
  ref.watch(authSessionRevisionProvider);
  final repo = ref.read(classroomRepoProvider);
  final result = await repo.getClassroomDetails(id: id);

  return result.fold(
    (l) {
      ApiError.commonErrorHandler(l);
      return null;
    },
    (r) => r,
  );
}

@riverpod
Future<List<ClassroomStudentModel>> getClassroomStudents(Ref ref,
    {required int id}) async {
  ref.watch(authSessionRevisionProvider);
  final repo = ref.read(classroomRepoProvider);
  final result = await repo.getClassroomStudents(id: id);

  return result.fold(
    (l) {
      ApiError.commonErrorHandler(l);
      return const [];
    },
    (r) => r,
  );
}

@riverpod
Future<bool?> classroomAttendance(Ref ref,
    {required String intent, required AttendanceRequestModel body}) async {
  final repo = ref.read(classroomRepoProvider);
  final result = await repo.classroomAttendance(intent: intent, body: body);

  return result.fold(
    (l) {
      ApiError.commonErrorHandler(l);
      return null;
    },
    (r) => r,
  );
}
