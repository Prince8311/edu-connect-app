// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateProfileImageResponse _$UpdateProfileImageResponseFromJson(
  Map<String, dynamic> json,
) => _UpdateProfileImageResponse(
  status: (json['status'] as num).toInt(),
  message: json['message'] as String?,
  profileImage: json['profile_image'] as String?,
);

Map<String, dynamic> _$UpdateProfileImageResponseToJson(
  _UpdateProfileImageResponse instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': instance.message,
  'profile_image': instance.profileImage,
};

_UserDetails _$UserDetailsFromJson(Map<String, dynamic> json) => _UserDetails(
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

Map<String, dynamic> _$UserDetailsToJson(_UserDetails instance) =>
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

_GuardianInfo _$GuardianInfoFromJson(Map<String, dynamic> json) =>
    _GuardianInfo(
      name: json['name'] as String?,
      profileImage: json['profile_image'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$GuardianInfoToJson(_GuardianInfo instance) =>
    <String, dynamic>{
      'name': instance.name,
      'profile_image': instance.profileImage,
      'email': instance.email,
      'phone': instance.phone,
    };

_StudentInfo _$StudentInfoFromJson(Map<String, dynamic> json) => _StudentInfo(
  enrollmentId: json['enrollment_id'] as String?,
  classStandard: json['class_standard'] as String?,
  section: json['section'] as String?,
  name: json['name'] as String?,
  profileImage: json['profile_image'] as String?,
);

Map<String, dynamic> _$StudentInfoToJson(_StudentInfo instance) =>
    <String, dynamic>{
      'enrollment_id': instance.enrollmentId,
      'class_standard': instance.classStandard,
      'section': instance.section,
      'name': instance.name,
      'profile_image': instance.profileImage,
    };

_OtpResquest _$OtpResquestFromJson(Map<String, dynamic> json) =>
    _OtpResquest(name: json['name'] as String?);

Map<String, dynamic> _$OtpResquestToJson(_OtpResquest instance) =>
    <String, dynamic>{'name': instance.name};

_OtpVerifyResquest _$OtpVerifyResquestFromJson(Map<String, dynamic> json) =>
    _OtpVerifyResquest(
      name: json['name'] as String?,
      otp: json['otp'] as String?,
    );

Map<String, dynamic> _$OtpVerifyResquestToJson(_OtpVerifyResquest instance) =>
    <String, dynamic>{'name': instance.name, 'otp': instance.otp};

_StudentSwitchRequest _$StudentSwitchRequestFromJson(
  Map<String, dynamic> json,
) => _StudentSwitchRequest(studentId: json['student_id'] as String?);

Map<String, dynamic> _$StudentSwitchRequestToJson(
  _StudentSwitchRequest instance,
) => <String, dynamic>{'student_id': instance.studentId};

_ChangePasswordRequest _$ChangePasswordRequestFromJson(
  Map<String, dynamic> json,
) => _ChangePasswordRequest(
  password: json['password'] as String?,
  newPassword: json['newPassword'] as String?,
  confirmPassword: json['confirmPassword'] as String?,
);

Map<String, dynamic> _$ChangePasswordRequestToJson(
  _ChangePasswordRequest instance,
) => <String, dynamic>{
  'password': instance.password,
  'newPassword': instance.newPassword,
  'confirmPassword': instance.confirmPassword,
};

_BiometricRequest _$BiometricRequestFromJson(Map<String, dynamic> json) =>
    _BiometricRequest(
      deviceId: json['device_id'] as String?,
      deviceName: json['device_name'] as String?,
      platform: json['platform'] as String?,
      deviceToken: json['device_token'] as String?,
      biometricType: json['biometric_type'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$BiometricRequestToJson(_BiometricRequest instance) =>
    <String, dynamic>{
      'device_id': ?instance.deviceId,
      'device_name': ?instance.deviceName,
      'platform': ?instance.platform,
      'device_token': ?instance.deviceToken,
      'biometric_type': ?instance.biometricType,
      'password': ?instance.password,
    };
