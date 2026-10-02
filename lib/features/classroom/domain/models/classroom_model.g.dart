// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'classroom_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ClassroomModel _$ClassroomModelFromJson(Map<String, dynamic> json) =>
    _ClassroomModel(
      id: (json['id'] as num?)?.toInt(),
      classroomId: json['classroom_id'] as String?,
      className: json['class'] as String?,
      section: json['section'] as String?,
      day: json['day'] as String?,
      period: json['period'] as String?,
      time: json['time'] as String?,
      subject: json['subject'] as String?,
      teacher: json['teacher'] as String?,
      attendanceType: json['attendance_type'] as String?,
      attendanceMarked: json['attendance_marked'] as bool?,
    );

Map<String, dynamic> _$ClassroomModelToJson(_ClassroomModel instance) =>
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
      'attendance_type': instance.attendanceType,
      'attendance_marked': instance.attendanceMarked,
    };

_ClassroomStudentModel _$ClassroomStudentModelFromJson(
  Map<String, dynamic> json,
) => _ClassroomStudentModel(
  studentId: (json['student_id'] as num?)?.toInt(),
  name: json['name'] as String?,
  enrollmentId: json['enrollment_id'] as String?,
  profileImage: json['profile_image'] as String?,
  attendanceStatus: json['attendance_status'] as String?,
);

Map<String, dynamic> _$ClassroomStudentModelToJson(
  _ClassroomStudentModel instance,
) => <String, dynamic>{
  'student_id': instance.studentId,
  'name': instance.name,
  'enrollment_id': instance.enrollmentId,
  'profile_image': instance.profileImage,
  'attendance_status': instance.attendanceStatus,
};

_AttendanceRequestModel _$AttendanceRequestModelFromJson(
  Map<String, dynamic> json,
) => _AttendanceRequestModel(
  attendanceType: json['attendance_type'] as String?,
  className: json['class'] as String?,
  section: json['section'] as String?,
  date: json['date'] as String?,
  present: json['present'] as String?,
  absent: json['absent'] as String?,
  classroomId: json['classroom_id'] as String?,
  period: json['period'] as String?,
  timeSlot: json['time_slot'] as String?,
  subject: json['subject'] as String?,
);

Map<String, dynamic> _$AttendanceRequestModelToJson(
  _AttendanceRequestModel instance,
) => <String, dynamic>{
  'attendance_type': instance.attendanceType,
  'class': instance.className,
  'section': instance.section,
  'date': instance.date,
  'present': instance.present,
  'absent': instance.absent,
  'classroom_id': ?instance.classroomId,
  'period': ?instance.period,
  'time_slot': ?instance.timeSlot,
  'subject': ?instance.subject,
};
