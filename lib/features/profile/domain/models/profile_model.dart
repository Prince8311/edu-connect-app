import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_model.freezed.dart';
part 'profile_model.g.dart';

@freezed
class UserDetails with _$UserDetails {
  const factory UserDetails({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'profile_image') String? profileImage,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'is_mail_verified') bool? isMailVerified,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'is_phone_verified') bool? isPhoneVerified,
    @JsonKey(name: 'staff_id') String? staffId,
    @JsonKey(name: 'subject') String? subject,
    @JsonKey(name: 'enrollment_id') String? enrollmentId,
    @JsonKey(name: 'session') String? session,
    @JsonKey(name: 'class_standard') String? classStandard,
    @JsonKey(name: 'section') String? section,
    @JsonKey(name: 'user_type') String? userType,
    @JsonKey(name: 'guardian') GuardianInfo? guardian,
    @JsonKey(name: 'student') StudentInfo? student,
  }) = _UserDetails;

  factory UserDetails.fromJson(Map<String, dynamic> json) =>
      _$UserDetailsFromJson(json);
}

@freezed
class GuardianInfo with _$GuardianInfo {
  const factory GuardianInfo({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'profile_image') String? profileImage,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'phone') String? phone,
  }) = _GuardianInfo;

  factory GuardianInfo.fromJson(Map<String, dynamic> json) =>
      _$GuardianInfoFromJson(json);
}

@freezed
class StudentInfo with _$StudentInfo {
  const factory StudentInfo({
    @JsonKey(name: 'enrollment_id') String? enrollmentId,
    @JsonKey(name: 'class_standard') String? classStandard,
    @JsonKey(name: 'section') String? section,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'profile_image') String? profileImage,
  }) = _StudentInfo;

  factory StudentInfo.fromJson(Map<String, dynamic> json) =>
      _$StudentInfoFromJson(json);
}

@freezed
class OtpResquest with _$OtpResquest {
  const factory OtpResquest({
    @JsonKey(name: 'name') String? name,
  }) = _OtpResquest;

  factory OtpResquest.fromJson(Map<String, dynamic> json) =>
      _$OtpResquestFromJson(json);
}

@freezed
class OtpVerifyResquest with _$OtpVerifyResquest {
  const factory OtpVerifyResquest({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'otp') String? otp,
  }) = _OtpVerifyResquest;

  factory OtpVerifyResquest.fromJson(Map<String, dynamic> json) =>
      _$OtpVerifyResquestFromJson(json);
}

@freezed
class StudentSwitchRequest with _$StudentSwitchRequest {
  const factory StudentSwitchRequest({
    @JsonKey(name: 'student_id') String? studentId,
  }) = _StudentSwitchRequest;

  factory StudentSwitchRequest.fromJson(Map<String, dynamic> json) =>
      _$StudentSwitchRequestFromJson(json);
}

@freezed
class ChangePasswordRequest with _$ChangePasswordRequest {
  const factory ChangePasswordRequest({
    @JsonKey(name: 'password') String? password,
    @JsonKey(name: 'newPassword') String? newPassword,
    @JsonKey(name: 'confirmPassword') String? confirmPassword,
  }) = _ChangePasswordRequest;

  factory ChangePasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$ChangePasswordRequestFromJson(json);
}
