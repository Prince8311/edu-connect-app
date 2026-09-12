// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'classroom_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClassroomModelImpl _$$ClassroomModelImplFromJson(Map<String, dynamic> json) =>
    _$ClassroomModelImpl(
      id: (json['id'] as num?)?.toInt(),
      classroomId: json['classroom_id'] as String?,
      className: json['class'] as String?,
      section: json['section'] as String?,
      day: json['day'] as String?,
      period: json['period'] as String?,
      time: json['time'] as String?,
      subject: json['subject'] as String?,
      teacher: json['teacher'] as String?,
      students: (json['students'] as List<dynamic>?)
          ?.map(
              (e) => ClassroomStudentModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ClassroomModelImplToJson(
        _$ClassroomModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'classroom_id': instance.classroomId,
      'class': instance.className,
      'section': instance.section,
      'day': instance.day,
      'period': instance.period,
      'time': instance.time,
      'subject': instance.subject,
      'teacher': instance.teacher,
      'students': instance.students?.map((e) => e.toJson()).toList(),
    };

_$ClassroomStudentModelImpl _$$ClassroomStudentModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ClassroomStudentModelImpl(
      studentId: (json['student_id'] as num?)?.toInt(),
      name: json['name'] as String?,
      enrollmentId: json['enrollment_id'] as String?,
      profileImage: json['profile_image'] as String?,
    );

Map<String, dynamic> _$$ClassroomStudentModelImplToJson(
        _$ClassroomStudentModelImpl instance) =>
    <String, dynamic>{
      'student_id': instance.studentId,
      'name': instance.name,
      'enrollment_id': instance.enrollmentId,
      'profile_image': instance.profileImage,
    };
