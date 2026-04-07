// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserDetails _$UserDetailsFromJson(Map<String, dynamic> json) {
  return _UserDetails.fromJson(json);
}

/// @nodoc
mixin _$UserDetails {
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_image')
  String? get profileImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_mail_verified')
  bool? get isMailVerified => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone')
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_phone_verified')
  bool? get isPhoneVerified => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_type')
  String? get userType => throw _privateConstructorUsedError;

  /// Serializes this UserDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserDetailsCopyWith<UserDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailsCopyWith<$Res> {
  factory $UserDetailsCopyWith(
          UserDetails value, $Res Function(UserDetails) then) =
      _$UserDetailsCopyWithImpl<$Res, UserDetails>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'profile_image') String? profileImage,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'is_mail_verified') bool? isMailVerified,
      @JsonKey(name: 'phone') String? phone,
      @JsonKey(name: 'is_phone_verified') bool? isPhoneVerified,
      @JsonKey(name: 'user_type') String? userType});
}

/// @nodoc
class _$UserDetailsCopyWithImpl<$Res, $Val extends UserDetails>
    implements $UserDetailsCopyWith<$Res> {
  _$UserDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? name = freezed,
    Object? profileImage = freezed,
    Object? email = freezed,
    Object? isMailVerified = freezed,
    Object? phone = freezed,
    Object? isPhoneVerified = freezed,
    Object? userType = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      isMailVerified: freezed == isMailVerified
          ? _value.isMailVerified
          : isMailVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      isPhoneVerified: freezed == isPhoneVerified
          ? _value.isPhoneVerified
          : isPhoneVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      userType: freezed == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserDetailsImplCopyWith<$Res>
    implements $UserDetailsCopyWith<$Res> {
  factory _$$UserDetailsImplCopyWith(
          _$UserDetailsImpl value, $Res Function(_$UserDetailsImpl) then) =
      __$$UserDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'profile_image') String? profileImage,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'is_mail_verified') bool? isMailVerified,
      @JsonKey(name: 'phone') String? phone,
      @JsonKey(name: 'is_phone_verified') bool? isPhoneVerified,
      @JsonKey(name: 'user_type') String? userType});
}

/// @nodoc
class __$$UserDetailsImplCopyWithImpl<$Res>
    extends _$UserDetailsCopyWithImpl<$Res, _$UserDetailsImpl>
    implements _$$UserDetailsImplCopyWith<$Res> {
  __$$UserDetailsImplCopyWithImpl(
      _$UserDetailsImpl _value, $Res Function(_$UserDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? name = freezed,
    Object? profileImage = freezed,
    Object? email = freezed,
    Object? isMailVerified = freezed,
    Object? phone = freezed,
    Object? isPhoneVerified = freezed,
    Object? userType = freezed,
  }) {
    return _then(_$UserDetailsImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      isMailVerified: freezed == isMailVerified
          ? _value.isMailVerified
          : isMailVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      isPhoneVerified: freezed == isPhoneVerified
          ? _value.isPhoneVerified
          : isPhoneVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      userType: freezed == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDetailsImpl implements _UserDetails {
  const _$UserDetailsImpl(
      {@JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'profile_image') this.profileImage,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'is_mail_verified') this.isMailVerified,
      @JsonKey(name: 'phone') this.phone,
      @JsonKey(name: 'is_phone_verified') this.isPhoneVerified,
      @JsonKey(name: 'user_type') this.userType});

  factory _$UserDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDetailsImplFromJson(json);

  @override
  @JsonKey(name: 'user_id')
  final String? userId;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'profile_image')
  final String? profileImage;
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'is_mail_verified')
  final bool? isMailVerified;
  @override
  @JsonKey(name: 'phone')
  final String? phone;
  @override
  @JsonKey(name: 'is_phone_verified')
  final bool? isPhoneVerified;
  @override
  @JsonKey(name: 'user_type')
  final String? userType;

  @override
  String toString() {
    return 'UserDetails(userId: $userId, name: $name, profileImage: $profileImage, email: $email, isMailVerified: $isMailVerified, phone: $phone, isPhoneVerified: $isPhoneVerified, userType: $userType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDetailsImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.isMailVerified, isMailVerified) ||
                other.isMailVerified == isMailVerified) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.isPhoneVerified, isPhoneVerified) ||
                other.isPhoneVerified == isPhoneVerified) &&
            (identical(other.userType, userType) ||
                other.userType == userType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, name, profileImage,
      email, isMailVerified, phone, isPhoneVerified, userType);

  /// Create a copy of UserDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDetailsImplCopyWith<_$UserDetailsImpl> get copyWith =>
      __$$UserDetailsImplCopyWithImpl<_$UserDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDetailsImplToJson(
      this,
    );
  }
}

abstract class _UserDetails implements UserDetails {
  const factory _UserDetails(
      {@JsonKey(name: 'user_id') final String? userId,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'profile_image') final String? profileImage,
      @JsonKey(name: 'email') final String? email,
      @JsonKey(name: 'is_mail_verified') final bool? isMailVerified,
      @JsonKey(name: 'phone') final String? phone,
      @JsonKey(name: 'is_phone_verified') final bool? isPhoneVerified,
      @JsonKey(name: 'user_type') final String? userType}) = _$UserDetailsImpl;

  factory _UserDetails.fromJson(Map<String, dynamic> json) =
      _$UserDetailsImpl.fromJson;

  @override
  @JsonKey(name: 'user_id')
  String? get userId;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'profile_image')
  String? get profileImage;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'is_mail_verified')
  bool? get isMailVerified;
  @override
  @JsonKey(name: 'phone')
  String? get phone;
  @override
  @JsonKey(name: 'is_phone_verified')
  bool? get isPhoneVerified;
  @override
  @JsonKey(name: 'user_type')
  String? get userType;

  /// Create a copy of UserDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserDetailsImplCopyWith<_$UserDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OtpResquest _$OtpResquestFromJson(Map<String, dynamic> json) {
  return _OtpResquest.fromJson(json);
}

/// @nodoc
mixin _$OtpResquest {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this OtpResquest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OtpResquest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OtpResquestCopyWith<OtpResquest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpResquestCopyWith<$Res> {
  factory $OtpResquestCopyWith(
          OtpResquest value, $Res Function(OtpResquest) then) =
      _$OtpResquestCopyWithImpl<$Res, OtpResquest>;
  @useResult
  $Res call({@JsonKey(name: 'name') String? name});
}

/// @nodoc
class _$OtpResquestCopyWithImpl<$Res, $Val extends OtpResquest>
    implements $OtpResquestCopyWith<$Res> {
  _$OtpResquestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OtpResquest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OtpResquestImplCopyWith<$Res>
    implements $OtpResquestCopyWith<$Res> {
  factory _$$OtpResquestImplCopyWith(
          _$OtpResquestImpl value, $Res Function(_$OtpResquestImpl) then) =
      __$$OtpResquestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'name') String? name});
}

/// @nodoc
class __$$OtpResquestImplCopyWithImpl<$Res>
    extends _$OtpResquestCopyWithImpl<$Res, _$OtpResquestImpl>
    implements _$$OtpResquestImplCopyWith<$Res> {
  __$$OtpResquestImplCopyWithImpl(
      _$OtpResquestImpl _value, $Res Function(_$OtpResquestImpl) _then)
      : super(_value, _then);

  /// Create a copy of OtpResquest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$OtpResquestImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OtpResquestImpl implements _OtpResquest {
  const _$OtpResquestImpl({@JsonKey(name: 'name') this.name});

  factory _$OtpResquestImpl.fromJson(Map<String, dynamic> json) =>
      _$$OtpResquestImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? name;

  @override
  String toString() {
    return 'OtpResquest(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpResquestImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of OtpResquest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpResquestImplCopyWith<_$OtpResquestImpl> get copyWith =>
      __$$OtpResquestImplCopyWithImpl<_$OtpResquestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OtpResquestImplToJson(
      this,
    );
  }
}

abstract class _OtpResquest implements OtpResquest {
  const factory _OtpResquest({@JsonKey(name: 'name') final String? name}) =
      _$OtpResquestImpl;

  factory _OtpResquest.fromJson(Map<String, dynamic> json) =
      _$OtpResquestImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name;

  /// Create a copy of OtpResquest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OtpResquestImplCopyWith<_$OtpResquestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OtpVerifyResquest _$OtpVerifyResquestFromJson(Map<String, dynamic> json) {
  return _OtpVerifyResquest.fromJson(json);
}

/// @nodoc
mixin _$OtpVerifyResquest {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'otp')
  String? get otp => throw _privateConstructorUsedError;

  /// Serializes this OtpVerifyResquest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OtpVerifyResquest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OtpVerifyResquestCopyWith<OtpVerifyResquest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpVerifyResquestCopyWith<$Res> {
  factory $OtpVerifyResquestCopyWith(
          OtpVerifyResquest value, $Res Function(OtpVerifyResquest) then) =
      _$OtpVerifyResquestCopyWithImpl<$Res, OtpVerifyResquest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name, @JsonKey(name: 'otp') String? otp});
}

/// @nodoc
class _$OtpVerifyResquestCopyWithImpl<$Res, $Val extends OtpVerifyResquest>
    implements $OtpVerifyResquestCopyWith<$Res> {
  _$OtpVerifyResquestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OtpVerifyResquest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? otp = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OtpVerifyResquestImplCopyWith<$Res>
    implements $OtpVerifyResquestCopyWith<$Res> {
  factory _$$OtpVerifyResquestImplCopyWith(_$OtpVerifyResquestImpl value,
          $Res Function(_$OtpVerifyResquestImpl) then) =
      __$$OtpVerifyResquestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name, @JsonKey(name: 'otp') String? otp});
}

/// @nodoc
class __$$OtpVerifyResquestImplCopyWithImpl<$Res>
    extends _$OtpVerifyResquestCopyWithImpl<$Res, _$OtpVerifyResquestImpl>
    implements _$$OtpVerifyResquestImplCopyWith<$Res> {
  __$$OtpVerifyResquestImplCopyWithImpl(_$OtpVerifyResquestImpl _value,
      $Res Function(_$OtpVerifyResquestImpl) _then)
      : super(_value, _then);

  /// Create a copy of OtpVerifyResquest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? otp = freezed,
  }) {
    return _then(_$OtpVerifyResquestImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OtpVerifyResquestImpl implements _OtpVerifyResquest {
  const _$OtpVerifyResquestImpl(
      {@JsonKey(name: 'name') this.name, @JsonKey(name: 'otp') this.otp});

  factory _$OtpVerifyResquestImpl.fromJson(Map<String, dynamic> json) =>
      _$$OtpVerifyResquestImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'otp')
  final String? otp;

  @override
  String toString() {
    return 'OtpVerifyResquest(name: $name, otp: $otp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpVerifyResquestImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, otp);

  /// Create a copy of OtpVerifyResquest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpVerifyResquestImplCopyWith<_$OtpVerifyResquestImpl> get copyWith =>
      __$$OtpVerifyResquestImplCopyWithImpl<_$OtpVerifyResquestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OtpVerifyResquestImplToJson(
      this,
    );
  }
}

abstract class _OtpVerifyResquest implements OtpVerifyResquest {
  const factory _OtpVerifyResquest(
      {@JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'otp') final String? otp}) = _$OtpVerifyResquestImpl;

  factory _OtpVerifyResquest.fromJson(Map<String, dynamic> json) =
      _$OtpVerifyResquestImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'otp')
  String? get otp;

  /// Create a copy of OtpVerifyResquest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OtpVerifyResquestImplCopyWith<_$OtpVerifyResquestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
