// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDetailsImpl _$$UserDetailsImplFromJson(Map<String, dynamic> json) =>
    _$UserDetailsImpl(
      userId: json['user_id'] as String?,
      name: json['name'] as String?,
      profileImage: json['profile_image'] as String?,
      email: json['email'] as String?,
      isMailVerified: json['is_mail_verified'] as bool?,
      phone: json['phone'] as String?,
      isPhoneVerified: json['is_phone_verified'] as bool?,
      userType: json['user_type'] as String?,
    );

Map<String, dynamic> _$$UserDetailsImplToJson(_$UserDetailsImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'name': instance.name,
      'profile_image': instance.profileImage,
      'email': instance.email,
      'is_mail_verified': instance.isMailVerified,
      'phone': instance.phone,
      'is_phone_verified': instance.isPhoneVerified,
      'user_type': instance.userType,
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
