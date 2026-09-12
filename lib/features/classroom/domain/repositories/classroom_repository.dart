import 'package:edu_connect/core/shared/miscellaneous/typedefs.dart';
import 'package:edu_connect/features/classroom/domain/models/classroom_model.dart';

abstract class ClassroomRepository {
  FutureEither<ClassroomModel?> getClassroomDetails({required int id});
}
