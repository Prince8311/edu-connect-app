// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginRequestImpl _$$LoginRequestImplFromJson(Map<String, dynamic> json) =>
    _$LoginRequestImpl(
      name: json['name'] as String?,
      loginByOtp: json['loginByOtp'] as bool?,
      password: json['password'] as String?,
      otp: json['otp'] as String?,
    );

Map<String, dynamic> _$$LoginRequestImplToJson(_$LoginRequestImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'loginByOtp': instance.loginByOtp,
      'password': instance.password,
      'otp': instance.otp,
    };

_$RoleSelectRequestImpl _$$RoleSelectRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$RoleSelectRequestImpl(
      tempToken: json['tempToken'] as String?,
      role: json['role'] as String?,
    );

Map<String, dynamic> _$$RoleSelectRequestImplToJson(
        _$RoleSelectRequestImpl instance) =>
    <String, dynamic>{
      'tempToken': instance.tempToken,
      'role': instance.role,
    };

_$StudentSelectRequestImpl _$$StudentSelectRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$StudentSelectRequestImpl(
      tempToken: json['tempToken'] as String?,
      studentId: json['studentId'] as String?,
    );

Map<String, dynamic> _$$StudentSelectRequestImplToJson(
        _$StudentSelectRequestImpl instance) =>
    <String, dynamic>{
      'tempToken': instance.tempToken,
      'studentId': instance.studentId,
    };

_$AuthResponseImpl _$$AuthResponseImplFromJson(Map<String, dynamic> json) =>
    _$AuthResponseImpl(
      nextScreen: json['next_screen'] as String?,
      tempToken: json['tempToken'] as String?,
      user: json['user'] == null
          ? null
          : UserInfo.fromJson(json['user'] as Map<String, dynamic>),
      authToken: json['authToken'] as String?,
    );

Map<String, dynamic> _$$AuthResponseImplToJson(_$AuthResponseImpl instance) =>
    <String, dynamic>{
      'next_screen': instance.nextScreen,
      'tempToken': instance.tempToken,
      'user': instance.user,
      'authToken': instance.authToken,
    };

_$GuardianStudentImpl _$$GuardianStudentImplFromJson(
        Map<String, dynamic> json) =>
    _$GuardianStudentImpl(
      id: (json['id'] as num?)?.toInt(),
      instId: json['inst_id'] as String?,
      name: json['name'] as String?,
      profileImage: json['profile_image'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      enrollmentId: json['enrollment_id'] as String?,
      className: json['class'] as String?,
      section: json['section'] as String?,
    );

Map<String, dynamic> _$$GuardianStudentImplToJson(
        _$GuardianStudentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'inst_id': instance.instId,
      'name': instance.name,
      'profile_image': instance.profileImage,
      'email': instance.email,
      'phone': instance.phone,
      'enrollment_id': instance.enrollmentId,
      'class': instance.className,
      'section': instance.section,
    };

_$UserInfoImpl _$$UserInfoImplFromJson(Map<String, dynamic> json) =>
    _$UserInfoImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      profileImage: json['profile_image'] as String?,
      type: json['type'] as String?,
      student: (json['student'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$UserInfoImplToJson(_$UserInfoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'profile_image': instance.profileImage,
      'type': instance.type,
      'student': instance.student,
    };

_$OtpRequestImpl _$$OtpRequestImplFromJson(Map<String, dynamic> json) =>
    _$OtpRequestImpl(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$OtpRequestImplToJson(_$OtpRequestImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
