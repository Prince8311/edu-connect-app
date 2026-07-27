import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_model.freezed.dart';
part 'auth_model.g.dart';

@freezed
class LoginRequest with _$LoginRequest {
  const factory LoginRequest({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'loginByOtp') bool? loginByOtp,
    @JsonKey(name: 'password') String? password,
    @JsonKey(name: 'otp') String? otp,
  }) = _LoginRequest;

  factory LoginRequest.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestFromJson(json);
}

@freezed
class RoleSelectRequest with _$RoleSelectRequest {
  const factory RoleSelectRequest({
    @JsonKey(name: 'tempToken') String? tempToken,
    @JsonKey(name: 'role') String? role,
  }) = _RoleSelectRequest;

  factory RoleSelectRequest.fromJson(Map<String, dynamic> json) =>
      _$RoleSelectRequestFromJson(json);
}

@freezed
class StudentSelectRequest with _$StudentSelectRequest {
  const factory StudentSelectRequest({
    @JsonKey(name: 'tempToken') String? tempToken,
    @JsonKey(name: 'studentId') String? studentId,
  }) = _StudentSelectRequest;

  factory StudentSelectRequest.fromJson(Map<String, dynamic> json) =>
      _$StudentSelectRequestFromJson(json);
}

@freezed
class AuthResponse with _$AuthResponse {
  const factory AuthResponse({
    @JsonKey(name: 'next_screen') String? nextScreen,
    @JsonKey(name: 'tempToken') String? tempToken,
    @JsonKey(name: 'user') UserInfo? user,
    @JsonKey(name: 'authToken') String? authToken,
  }) = _AuthResponse;

  factory AuthResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseFromJson(json);
}

@freezed
class GuardianStudent with _$GuardianStudent {
  const factory GuardianStudent({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'inst_id') String? instId,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'profile_image') String? profileImage,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'enrollment_id') String? enrollmentId,
    @JsonKey(name: 'class') String? className,
    @JsonKey(name: 'section') String? section,
  }) = _GuardianStudent;

  factory GuardianStudent.fromJson(Map<String, dynamic> json) =>
      _$GuardianStudentFromJson(json);
}

@freezed
class UserInfo with _$UserInfo {
  const factory UserInfo({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'profile_image') String? profileImage,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'student') int? student,
  }) = _UserInfo;

  factory UserInfo.fromJson(Map<String, dynamic> json) =>
      _$UserInfoFromJson(json);
}

@freezed
class OtpRequest with _$OtpRequest {
  const factory OtpRequest({
    @JsonKey(name: 'name') String? name,
  }) = _OtpRequest;

  factory OtpRequest.fromJson(Map<String, dynamic> json) =>
      _$OtpRequestFromJson(json);
}
