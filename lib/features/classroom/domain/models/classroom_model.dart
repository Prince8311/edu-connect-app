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
    @JsonKey(name: 'section') String? section,
    @JsonKey(name: 'day') String? day,
    @JsonKey(name: 'period') String? period,
    @JsonKey(name: 'time') String? time,
    @JsonKey(name: 'subject') String? subject,
    @JsonKey(name: 'teacher') String? teacher,
  }) = _ClassroomModel;

  factory ClassroomModel.fromJson(Map<String, dynamic> json) =>
      _$ClassroomModelFromJson(json);
}

@freezed
class ClassroomStudentModel with _$ClassroomStudentModel {
  const factory ClassroomStudentModel({
    @JsonKey(name: 'student_id') int? studentId,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'enrollment_id') String? enrollmentId,
    @JsonKey(name: 'profile_image') String? profileImage,
    @JsonKey(name: 'attendance_status') String? attendanceStatus,
  }) = _ClassroomStudentModel;

  factory ClassroomStudentModel.fromJson(Map<String, dynamic> json) =>
      _$ClassroomStudentModelFromJson(json);
}
