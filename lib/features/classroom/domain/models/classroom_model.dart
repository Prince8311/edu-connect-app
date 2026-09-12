import 'package:freezed_annotation/freezed_annotation.dart';

part 'classroom_model.freezed.dart';
part 'classroom_model.g.dart';

@freezed
class ClassroomModel with _$ClassroomModel {
  @JsonSerializable(explicitToJson: true)
  const factory ClassroomModel({
    int? id,
    @JsonKey(name: 'classroom_id') String? classroomId,
    @JsonKey(name: 'class') String? className,
    String? section,
    String? day,
    String? period,
    String? time,
    String? subject,
    String? teacher,
    List<ClassroomStudentModel>? students,
  }) = _ClassroomModel;

  factory ClassroomModel.fromJson(Map<String, dynamic> json) =>
      _$ClassroomModelFromJson(json);
}

@freezed
class ClassroomStudentModel with _$ClassroomStudentModel {
  const factory ClassroomStudentModel({
    @JsonKey(name: 'student_id') int? studentId,
    String? name,
    @JsonKey(name: 'enrollment_id') String? enrollmentId,
    @JsonKey(name: 'profile_image') String? profileImage,
  }) = _ClassroomStudentModel;

  factory ClassroomStudentModel.fromJson(Map<String, dynamic> json) =>
      _$ClassroomStudentModelFromJson(json);
}
