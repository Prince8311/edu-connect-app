import 'package:edu_connect/core/api/error_handler.dart';
import 'package:edu_connect/features/classroom/data/repositories/classroom_impl.dart';
import 'package:edu_connect/features/classroom/domain/models/classroom_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'classroom_provider.g.dart';

@riverpod
Future<ClassroomModel?> getClassroomDetails(Ref ref, {required int id}) async {
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
