// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDetailsImpl _$$UserDetailsImplFromJson(Map<String, dynamic> json) =>
    _$UserDetailsImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      profileImage: json['profile_image'] as String?,
      email: json['email'] as String?,
      isMailVerified: json['is_mail_verified'] as bool?,
      phone: json['phone'] as String?,
      isPhoneVerified: json['is_phone_verified'] as bool?,
      staffId: json['staff_id'] as String?,
      subject: json['subject'] as String?,
      enrollmentId: json['enrollment_id'] as String?,
      session: json['session'] as String?,
      classStandard: json['class_standard'] as String?,
      section: json['section'] as String?,
      userType: json['user_type'] as String?,
      guardian: json['guardian'] == null
          ? null
          : GuardianInfo.fromJson(json['guardian'] as Map<String, dynamic>),
      student: json['student'] == null
          ? null
          : StudentInfo.fromJson(json['student'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserDetailsImplToJson(_$UserDetailsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'profile_image': instance.profileImage,
      'email': instance.email,
      'is_mail_verified': instance.isMailVerified,
      'phone': instance.phone,
      'is_phone_verified': instance.isPhoneVerified,
      'staff_id': instance.staffId,
      'subject': instance.subject,
      'enrollment_id': instance.enrollmentId,
      'session': instance.session,
      'class_standard': instance.classStandard,
      'section': instance.section,
      'user_type': instance.userType,
      'guardian': instance.guardian,
      'student': instance.student,
    };

_$GuardianInfoImpl _$$GuardianInfoImplFromJson(Map<String, dynamic> json) =>
    _$GuardianInfoImpl(
      name: json['name'] as String?,
      profileImage: json['profile_image'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$$GuardianInfoImplToJson(_$GuardianInfoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'profile_image': instance.profileImage,
      'email': instance.email,
      'phone': instance.phone,
    };

_$StudentInfoImpl _$$StudentInfoImplFromJson(Map<String, dynamic> json) =>
    _$StudentInfoImpl(
      enrollmentId: json['enrollment_id'] as String?,
      classStandard: json['class_standard'] as String?,
      section: json['section'] as String?,
      name: json['name'] as String?,
      profileImage: json['profile_image'] as String?,
    );

Map<String, dynamic> _$$StudentInfoImplToJson(_$StudentInfoImpl instance) =>
    <String, dynamic>{
      'enrollment_id': instance.enrollmentId,
      'class_standard': instance.classStandard,
      'section': instance.section,
      'name': instance.name,
      'profile_image': instance.profileImage,
    };

_$OtpResquestImpl _$$OtpResquestImplFromJson(Map<String, dynamic> json) =>
    _$OtpResquestImpl(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$OtpResquestImplToJson(_$OtpResquestImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

_$OtpVerifyResquestImpl _$$OtpVerifyResquestImplFromJson(
        Map<String, dynamic> json) =>
    _$OtpVerifyResquestImpl(
      name: json['name'] as String?,
      otp: json['otp'] as String?,
    );

Map<String, dynamic> _$$OtpVerifyResquestImplToJson(
        _$OtpVerifyResquestImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'otp': instance.otp,
    };

_$StudentSwitchRequestImpl _$$StudentSwitchRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$StudentSwitchRequestImpl(
      studentId: json['student_id'] as String?,
    );

Map<String, dynamic> _$$StudentSwitchRequestImplToJson(
        _$StudentSwitchRequestImpl instance) =>
    <String, dynamic>{
      'student_id': instance.studentId,
    };

_$ChangePasswordRequestImpl _$$ChangePasswordRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ChangePasswordRequestImpl(
      password: json['password'] as String?,
      newPassword: json['newPassword'] as String?,
      confirmPassword: json['confirmPassword'] as String?,
    );

Map<String, dynamic> _$$ChangePasswordRequestImplToJson(
        _$ChangePasswordRequestImpl instance) =>
    <String, dynamic>{
      'password': instance.password,
      'newPassword': instance.newPassword,
      'confirmPassword': instance.confirmPassword,
    };

_$BiometricRequestImpl _$$BiometricRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$BiometricRequestImpl(
      deviceId: json['device_id'] as String?,
      deviceName: json['device_name'] as String?,
      platform: json['platform'] as String?,
      deviceToken: json['device_token'] as String?,
      biometricType: json['biometric_type'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$$BiometricRequestImplToJson(
        _$BiometricRequestImpl instance) =>
    <String, dynamic>{
      if (instance.deviceId case final value?) 'device_id': value,
      if (instance.deviceName case final value?) 'device_name': value,
      if (instance.platform case final value?) 'platform': value,
      if (instance.deviceToken case final value?) 'device_token': value,
      if (instance.biometricType case final value?) 'biometric_type': value,
      if (instance.password case final value?) 'password': value,
    };
