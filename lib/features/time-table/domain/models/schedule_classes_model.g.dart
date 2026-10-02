// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_classes_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TimeTableResponse _$TimeTableResponseFromJson(
  Map<String, dynamic> json,
) => _TimeTableResponse(
  scheduledClasses: (json['scheduled_classes'] as List<dynamic>?)
      ?.map((e) => ClassItem.fromJson(e as Map<String, dynamic>))
      .toList(),
  weeklyScheduledClasses: (json['weekly_scheduled_classes'] as List<dynamic>?)
      ?.map((e) => WeeklyScheduleItem.fromJson(e as Map<String, dynamic>))
      .toList(),
  classRoom: json['class_room'] as String?,
  classTeacher: json['class_teacher'] as String?,
  todayDayName: json['today_day_name'] as String?,
  breakTime: json['break_time'] as String?,
);

Map<String, dynamic> _$TimeTableResponseToJson(_TimeTableResponse instance) =>
    <String, dynamic>{
      'scheduled_classes': instance.scheduledClasses,
      'weekly_scheduled_classes': instance.weeklyScheduledClasses,
      'class_room': instance.classRoom,
      'class_teacher': instance.classTeacher,
      'today_day_name': instance.todayDayName,
      'break_time': instance.breakTime,
    };

_WeeklyScheduleItem _$WeeklyScheduleItemFromJson(Map<String, dynamic> json) =>
    _WeeklyScheduleItem(
      day: json['day'] as String?,
      classes: (json['classes'] as List<dynamic>?)
          ?.map((e) => ClassItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WeeklyScheduleItemToJson(_WeeklyScheduleItem instance) =>
    <String, dynamic>{'day': instance.day, 'classes': instance.classes};

_ClassItem _$ClassItemFromJson(Map<String, dynamic> json) => _ClassItem(
  id: (json['id'] as num?)?.toInt(),
  period: json['period'] as String?,
  time: json['time'] as String?,
  subject: json['subject'] as String?,
  className: json['class'] as String?,
  section: json['section'] as String?,
  teacher: json['teacher'] as String?,
  studentNo: (json['student_no'] as num?)?.toInt(),
);

Map<String, dynamic> _$ClassItemToJson(_ClassItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'period': instance.period,
      'time': instance.time,
      'subject': instance.subject,
      'class': instance.className,
      'section': instance.section,
      'teacher': instance.teacher,
      'student_no': instance.studentNo,
    };

_OngoingClassModel _$OngoingClassModelFromJson(Map<String, dynamic> json) =>
    _OngoingClassModel(
      id: (json['id'] as num?)?.toInt(),
      classroomId: json['classroom_id'] as String?,
      period: json['period'] as String?,
      startTime: json['start_time'] as String?,
      endTime: json['end_time'] as String?,
      subject: json['subject'] as String?,
      className: json['class'] as String?,
      section: json['section'] as String?,
      teacher: json['teacher'] as String?,
      studentNo: json['student_no'] as String?,
    );

Map<String, dynamic> _$OngoingClassModelToJson(_OngoingClassModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'classroom_id': instance.classroomId,
      'period': instance.period,
      'start_time': instance.startTime,
      'end_time': instance.endTime,
      'subject': instance.subject,
      'class': instance.className,
      'section': instance.section,
      'teacher': instance.teacher,
      'student_no': instance.studentNo,
    };
