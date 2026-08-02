// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_classes_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TimeTableResponseImpl _$$TimeTableResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$TimeTableResponseImpl(
      scheduledClasses: (json['scheduled_classes'] as List<dynamic>?)
          ?.map((e) => ClassItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      weeklyScheduledClasses: (json['weekly_scheduled_classes']
              as List<dynamic>?)
          ?.map((e) => WeeklyScheduleItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      classRoom: json['class_room'] as String?,
      classTeacher: json['class_teacher'] as String?,
      todayDayName: json['today_day_name'] as String?,
      breakTime: json['break_time'] as String?,
    );

Map<String, dynamic> _$$TimeTableResponseImplToJson(
        _$TimeTableResponseImpl instance) =>
    <String, dynamic>{
      'scheduled_classes': instance.scheduledClasses,
      'weekly_scheduled_classes': instance.weeklyScheduledClasses,
      'class_room': instance.classRoom,
      'class_teacher': instance.classTeacher,
      'today_day_name': instance.todayDayName,
      'break_time': instance.breakTime,
    };

_$WeeklyScheduleItemImpl _$$WeeklyScheduleItemImplFromJson(
        Map<String, dynamic> json) =>
    _$WeeklyScheduleItemImpl(
      day: json['day'] as String?,
      classes: (json['classes'] as List<dynamic>?)
          ?.map((e) => ClassItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$WeeklyScheduleItemImplToJson(
        _$WeeklyScheduleItemImpl instance) =>
    <String, dynamic>{
      'day': instance.day,
      'classes': instance.classes,
    };

_$ClassItemImpl _$$ClassItemImplFromJson(Map<String, dynamic> json) =>
    _$ClassItemImpl(
      id: (json['id'] as num?)?.toInt(),
      period: json['period'] as String?,
      time: json['time'] as String?,
      subject: json['subject'] as String?,
      className: json['class'] as String?,
      section: json['section'] as String?,
      teacher: json['teacher'] as String?,
      studentNo: (json['student_no'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ClassItemImplToJson(_$ClassItemImpl instance) =>
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

_$OngoingClassModelImpl _$$OngoingClassModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OngoingClassModelImpl(
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

Map<String, dynamic> _$$OngoingClassModelImplToJson(
        _$OngoingClassModelImpl instance) =>
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
