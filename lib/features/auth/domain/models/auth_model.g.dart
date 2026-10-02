// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LoginRequest _$LoginRequestFromJson(Map<String, dynamic> json) =>
    _LoginRequest(
      name: json['name'] as String?,
      loginByOtp: json['loginByOtp'] as bool?,
      password: json['password'] as String?,
      otp: json['otp'] as String?,
    );

Map<String, dynamic> _$LoginRequestToJson(_LoginRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'loginByOtp': instance.loginByOtp,
      'password': instance.password,
      'otp': instance.otp,
    };

_BiometricLoginRequest _$BiometricLoginRequestFromJson(
  Map<String, dynamic> json,
) => _BiometricLoginRequest(
  userId: (json['user_id'] as num?)?.toInt(),
  deviceId: json['device_id'] as String?,
  deviceToken: json['device_token'] as String?,
  biometricType: json['biometric_type'] as String?,
);

Map<String, dynamic> _$BiometricLoginRequestToJson(
  _BiometricLoginRequest instance,
) => <String, dynamic>{
  'user_id': ?instance.userId,
  'device_id': instance.deviceId,
  'device_token': instance.deviceToken,
  'biometric_type': instance.biometricType,
};

_RoleSelectRequest _$RoleSelectRequestFromJson(Map<String, dynamic> json) =>
    _RoleSelectRequest(
      tempToken: json['tempToken'] as String?,
      role: json['role'] as String?,
    );

Map<String, dynamic> _$RoleSelectRequestToJson(_RoleSelectRequest instance) =>
    <String, dynamic>{'tempToken': instance.tempToken, 'role': instance.role};

_StudentSelectRequest _$StudentSelectRequestFromJson(
  Map<String, dynamic> json,
) => _StudentSelectRequest(
  tempToken: json['tempToken'] as String?,
  studentId: json['studentId'] as String?,
);

Map<String, dynamic> _$StudentSelectRequestToJson(
  _StudentSelectRequest instance,
) => <String, dynamic>{
  'tempToken': instance.tempToken,
  'studentId': instance.studentId,
};

_AuthResponse _$AuthResponseFromJson(Map<String, dynamic> json) =>
    _AuthResponse(
      nextScreen: json['next_screen'] as String?,
      userChoose: json['userChoose'] as bool?,
      tempToken: json['tempToken'] as String?,
      user: json['user'] == null
          ? null
          : UserInfo.fromJson(json['user'] as Map<String, dynamic>),
      authToken: json['authToken'] as String?,
    );

Map<String, dynamic> _$AuthResponseToJson(_AuthResponse instance) =>
    <String, dynamic>{
      'next_screen': instance.nextScreen,
      'userChoose': instance.userChoose,
      'tempToken': instance.tempToken,
      'user': instance.user,
      'authToken': instance.authToken,
    };

_GuardianStudent _$GuardianStudentFromJson(Map<String, dynamic> json) =>
    _GuardianStudent(
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

Map<String, dynamic> _$GuardianStudentToJson(_GuardianStudent instance) =>
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

_BiometricUserInfo _$BiometricUserInfoFromJson(Map<String, dynamic> json) =>
    _BiometricUserInfo(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      profileImage: json['profile_image'] as String?,
      userType: (json['user_type'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$BiometricUserInfoToJson(_BiometricUserInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'profile_image': instance.profileImage,
      'user_type': instance.userType,
    };

_UserInfo _$UserInfoFromJson(Map<String, dynamic> json) => _UserInfo(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  email: json['email'] as String?,
  phone: json['phone'] as String?,
  profileImage: json['profile_image'] as String?,
  type: json['type'] as String?,
  student: (json['student'] as num?)?.toInt(),
);

Map<String, dynamic> _$UserInfoToJson(_UserInfo instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'email': instance.email,
  'phone': instance.phone,
  'profile_image': instance.profileImage,
  'type': instance.type,
  'student': instance.student,
};

_OtpRequest _$OtpRequestFromJson(Map<String, dynamic> json) =>
    _OtpRequest(name: json['name'] as String?);

Map<String, dynamic> _$OtpRequestToJson(_OtpRequest instance) =>
    <String, dynamic>{'name': instance.name};
