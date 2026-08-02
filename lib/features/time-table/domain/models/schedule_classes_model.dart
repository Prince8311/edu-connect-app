import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule_classes_model.freezed.dart';
part 'schedule_classes_model.g.dart';

@freezed
class TimeTableResponse with _$TimeTableResponse {
  const factory TimeTableResponse({
    @JsonKey(name: 'scheduled_classes') List<ClassItem>? scheduledClasses,
    @JsonKey(name: 'weekly_scheduled_classes')
    List<WeeklyScheduleItem>? weeklyScheduledClasses,
    @JsonKey(name: 'class_room') String? classRoom,
    @JsonKey(name: 'class_teacher') String? classTeacher,
    @JsonKey(name: 'today_day_name') String? todayDayName,
    @JsonKey(name: 'break_time') String? breakTime,
  }) = _TimeTableResponse;

  factory TimeTableResponse.fromJson(Map<String, dynamic> json) =>
      _$TimeTableResponseFromJson(json);
}

@freezed
class WeeklyScheduleItem with _$WeeklyScheduleItem {
  const factory WeeklyScheduleItem({
    @JsonKey(name: 'day') String? day,
    @JsonKey(name: 'classes') List<ClassItem>? classes,
  }) = _WeeklyScheduleItem;

  factory WeeklyScheduleItem.fromJson(Map<String, dynamic> json) =>
      _$WeeklyScheduleItemFromJson(json);
}

@freezed
class ClassItem with _$ClassItem {
  const factory ClassItem({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'period') String? period,
    @JsonKey(name: 'time') String? time,
    @JsonKey(name: 'subject') String? subject,
    @JsonKey(name: 'class') String? className,
    @JsonKey(name: 'section') String? section,
    @JsonKey(name: 'teacher') String? teacher,
    @JsonKey(name: 'student_no') int? studentNo,
  }) = _ClassItem;

  factory ClassItem.fromJson(Map<String, dynamic> json) =>
      _$ClassItemFromJson(json);
}

@freezed
class OngoingClassModel with _$OngoingClassModel {
  const factory OngoingClassModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'classroom_id') String? classroomId,
    @JsonKey(name: 'period') String? period,
    @JsonKey(name: 'start_time') String? startTime,
    @JsonKey(name: 'end_time') String? endTime,
    @JsonKey(name: 'subject') String? subject,
    @JsonKey(name: 'class') String? className,
    @JsonKey(name: 'section') String? section,
    @JsonKey(name: 'teacher') String? teacher,
    @JsonKey(name: 'student_no') String? studentNo,
  }) = _OngoingClassModel;

  factory OngoingClassModel.fromJson(Map<String, dynamic> json) =>
      _$OngoingClassModelFromJson(json);
}
