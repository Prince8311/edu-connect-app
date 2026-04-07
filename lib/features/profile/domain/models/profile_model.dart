import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_model.freezed.dart';
part 'profile_model.g.dart';

@freezed
class UserDetails with _$UserDetails {
  const factory UserDetails({
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'profile_image') String? profileImage,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'is_mail_verified') bool? isMailVerified,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'is_phone_verified') bool? isPhoneVerified,
    @JsonKey(name: 'user_type') String? userType,
  }) = _UserDetails;

  factory UserDetails.fromJson(Map<String, dynamic> json) =>
      _$UserDetailsFromJson(json);
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
