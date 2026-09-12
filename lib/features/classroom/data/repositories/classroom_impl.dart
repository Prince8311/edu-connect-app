import 'package:edu_connect/core/api/api_handler.dart';
import 'package:edu_connect/core/shared/miscellaneous/typedefs.dart';
import 'package:edu_connect/features/classroom/data/datasources/classroom_api_service.dart';
import 'package:edu_connect/features/classroom/domain/models/classroom_model.dart';
import 'package:edu_connect/features/classroom/domain/repositories/classroom_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final classroomRepoProvider = Provider<ClassroomRepository>((ref) {
  return ClassroomRepoImpl(ref, ref.read(classroomApiServiceProvider));
});

class ClassroomRepoImpl extends ClassroomRepository {
  final ClassroomApiService _apiService;
  final Ref ref;

  ClassroomRepoImpl(this.ref, ClassroomApiService apiService)
      : _apiService = apiService;

  @override
  FutureEither<ClassroomModel?> getClassroomDetails({required int id}) {
    return apiHandler<ClassroomModel?>(() async {
      final res = await _apiService.getClassroomDetails(id: id);
      return res.data;
    });
  }
}
