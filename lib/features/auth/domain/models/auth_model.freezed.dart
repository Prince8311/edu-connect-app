// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginRequest _$LoginRequestFromJson(Map<String, dynamic> json) {
  return _LoginRequest.fromJson(json);
}

/// @nodoc
mixin _$LoginRequest {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'loginByOtp')
  bool? get loginByOtp => throw _privateConstructorUsedError;
  @JsonKey(name: 'password')
  String? get password => throw _privateConstructorUsedError;
  @JsonKey(name: 'otp')
  String? get otp => throw _privateConstructorUsedError;

  /// Serializes this LoginRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginRequestCopyWith<LoginRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginRequestCopyWith<$Res> {
  factory $LoginRequestCopyWith(
          LoginRequest value, $Res Function(LoginRequest) then) =
      _$LoginRequestCopyWithImpl<$Res, LoginRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'loginByOtp') bool? loginByOtp,
      @JsonKey(name: 'password') String? password,
      @JsonKey(name: 'otp') String? otp});
}

/// @nodoc
class _$LoginRequestCopyWithImpl<$Res, $Val extends LoginRequest>
    implements $LoginRequestCopyWith<$Res> {
  _$LoginRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? loginByOtp = freezed,
    Object? password = freezed,
    Object? otp = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      loginByOtp: freezed == loginByOtp
          ? _value.loginByOtp
          : loginByOtp // ignore: cast_nullable_to_non_nullable
              as bool?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginRequestImplCopyWith<$Res>
    implements $LoginRequestCopyWith<$Res> {
  factory _$$LoginRequestImplCopyWith(
          _$LoginRequestImpl value, $Res Function(_$LoginRequestImpl) then) =
      __$$LoginRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'loginByOtp') bool? loginByOtp,
      @JsonKey(name: 'password') String? password,
      @JsonKey(name: 'otp') String? otp});
}

/// @nodoc
class __$$LoginRequestImplCopyWithImpl<$Res>
    extends _$LoginRequestCopyWithImpl<$Res, _$LoginRequestImpl>
    implements _$$LoginRequestImplCopyWith<$Res> {
  __$$LoginRequestImplCopyWithImpl(
      _$LoginRequestImpl _value, $Res Function(_$LoginRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? loginByOtp = freezed,
    Object? password = freezed,
    Object? otp = freezed,
  }) {
    return _then(_$LoginRequestImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      loginByOtp: freezed == loginByOtp
          ? _value.loginByOtp
          : loginByOtp // ignore: cast_nullable_to_non_nullable
              as bool?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
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
class _$LoginRequestImpl implements _LoginRequest {
  const _$LoginRequestImpl(
      {@JsonKey(name: 'name') this.name,
      @JsonKey(name: 'loginByOtp') this.loginByOtp,
      @JsonKey(name: 'password') this.password,
      @JsonKey(name: 'otp') this.otp});

  factory _$LoginRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginRequestImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'loginByOtp')
  final bool? loginByOtp;
  @override
  @JsonKey(name: 'password')
  final String? password;
  @override
  @JsonKey(name: 'otp')
  final String? otp;

  @override
  String toString() {
    return 'LoginRequest(name: $name, loginByOtp: $loginByOtp, password: $password, otp: $otp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginRequestImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.loginByOtp, loginByOtp) ||
                other.loginByOtp == loginByOtp) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, loginByOtp, password, otp);

  /// Create a copy of LoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginRequestImplCopyWith<_$LoginRequestImpl> get copyWith =>
      __$$LoginRequestImplCopyWithImpl<_$LoginRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginRequestImplToJson(
      this,
    );
  }
}

abstract class _LoginRequest implements LoginRequest {
  const factory _LoginRequest(
      {@JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'loginByOtp') final bool? loginByOtp,
      @JsonKey(name: 'password') final String? password,
      @JsonKey(name: 'otp') final String? otp}) = _$LoginRequestImpl;

  factory _LoginRequest.fromJson(Map<String, dynamic> json) =
      _$LoginRequestImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'loginByOtp')
  bool? get loginByOtp;
  @override
  @JsonKey(name: 'password')
  String? get password;
  @override
  @JsonKey(name: 'otp')
  String? get otp;

  /// Create a copy of LoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginRequestImplCopyWith<_$LoginRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RoleSelectRequest _$RoleSelectRequestFromJson(Map<String, dynamic> json) {
  return _RoleSelectRequest.fromJson(json);
}

/// @nodoc
mixin _$RoleSelectRequest {
  @JsonKey(name: 'tempToken')
  String? get tempToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'role')
  String? get role => throw _privateConstructorUsedError;

  /// Serializes this RoleSelectRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RoleSelectRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RoleSelectRequestCopyWith<RoleSelectRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoleSelectRequestCopyWith<$Res> {
  factory $RoleSelectRequestCopyWith(
          RoleSelectRequest value, $Res Function(RoleSelectRequest) then) =
      _$RoleSelectRequestCopyWithImpl<$Res, RoleSelectRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'tempToken') String? tempToken,
      @JsonKey(name: 'role') String? role});
}

/// @nodoc
class _$RoleSelectRequestCopyWithImpl<$Res, $Val extends RoleSelectRequest>
    implements $RoleSelectRequestCopyWith<$Res> {
  _$RoleSelectRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RoleSelectRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tempToken = freezed,
    Object? role = freezed,
  }) {
    return _then(_value.copyWith(
      tempToken: freezed == tempToken
          ? _value.tempToken
          : tempToken // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoleSelectRequestImplCopyWith<$Res>
    implements $RoleSelectRequestCopyWith<$Res> {
  factory _$$RoleSelectRequestImplCopyWith(_$RoleSelectRequestImpl value,
          $Res Function(_$RoleSelectRequestImpl) then) =
      __$$RoleSelectRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'tempToken') String? tempToken,
      @JsonKey(name: 'role') String? role});
}

/// @nodoc
class __$$RoleSelectRequestImplCopyWithImpl<$Res>
    extends _$RoleSelectRequestCopyWithImpl<$Res, _$RoleSelectRequestImpl>
    implements _$$RoleSelectRequestImplCopyWith<$Res> {
  __$$RoleSelectRequestImplCopyWithImpl(_$RoleSelectRequestImpl _value,
      $Res Function(_$RoleSelectRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoleSelectRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tempToken = freezed,
    Object? role = freezed,
  }) {
    return _then(_$RoleSelectRequestImpl(
      tempToken: freezed == tempToken
          ? _value.tempToken
          : tempToken // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoleSelectRequestImpl implements _RoleSelectRequest {
  const _$RoleSelectRequestImpl(
      {@JsonKey(name: 'tempToken') this.tempToken,
      @JsonKey(name: 'role') this.role});

  factory _$RoleSelectRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoleSelectRequestImplFromJson(json);

  @override
  @JsonKey(name: 'tempToken')
  final String? tempToken;
  @override
  @JsonKey(name: 'role')
  final String? role;

  @override
  String toString() {
    return 'RoleSelectRequest(tempToken: $tempToken, role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoleSelectRequestImpl &&
            (identical(other.tempToken, tempToken) ||
                other.tempToken == tempToken) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, tempToken, role);

  /// Create a copy of RoleSelectRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoleSelectRequestImplCopyWith<_$RoleSelectRequestImpl> get copyWith =>
      __$$RoleSelectRequestImplCopyWithImpl<_$RoleSelectRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoleSelectRequestImplToJson(
      this,
    );
  }
}

abstract class _RoleSelectRequest implements RoleSelectRequest {
  const factory _RoleSelectRequest(
      {@JsonKey(name: 'tempToken') final String? tempToken,
      @JsonKey(name: 'role') final String? role}) = _$RoleSelectRequestImpl;

  factory _RoleSelectRequest.fromJson(Map<String, dynamic> json) =
      _$RoleSelectRequestImpl.fromJson;

  @override
  @JsonKey(name: 'tempToken')
  String? get tempToken;
  @override
  @JsonKey(name: 'role')
  String? get role;

  /// Create a copy of RoleSelectRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoleSelectRequestImplCopyWith<_$RoleSelectRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StudentSelectRequest _$StudentSelectRequestFromJson(Map<String, dynamic> json) {
  return _StudentSelectRequest.fromJson(json);
}

/// @nodoc
mixin _$StudentSelectRequest {
  @JsonKey(name: 'tempToken')
  String? get tempToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'studentId')
  String? get studentId => throw _privateConstructorUsedError;

  /// Serializes this StudentSelectRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudentSelectRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentSelectRequestCopyWith<StudentSelectRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentSelectRequestCopyWith<$Res> {
  factory $StudentSelectRequestCopyWith(StudentSelectRequest value,
          $Res Function(StudentSelectRequest) then) =
      _$StudentSelectRequestCopyWithImpl<$Res, StudentSelectRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'tempToken') String? tempToken,
      @JsonKey(name: 'studentId') String? studentId});
}

/// @nodoc
class _$StudentSelectRequestCopyWithImpl<$Res,
        $Val extends StudentSelectRequest>
    implements $StudentSelectRequestCopyWith<$Res> {
  _$StudentSelectRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentSelectRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tempToken = freezed,
    Object? studentId = freezed,
  }) {
    return _then(_value.copyWith(
      tempToken: freezed == tempToken
          ? _value.tempToken
          : tempToken // ignore: cast_nullable_to_non_nullable
              as String?,
      studentId: freezed == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StudentSelectRequestImplCopyWith<$Res>
    implements $StudentSelectRequestCopyWith<$Res> {
  factory _$$StudentSelectRequestImplCopyWith(_$StudentSelectRequestImpl value,
          $Res Function(_$StudentSelectRequestImpl) then) =
      __$$StudentSelectRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'tempToken') String? tempToken,
      @JsonKey(name: 'studentId') String? studentId});
}

/// @nodoc
class __$$StudentSelectRequestImplCopyWithImpl<$Res>
    extends _$StudentSelectRequestCopyWithImpl<$Res, _$StudentSelectRequestImpl>
    implements _$$StudentSelectRequestImplCopyWith<$Res> {
  __$$StudentSelectRequestImplCopyWithImpl(_$StudentSelectRequestImpl _value,
      $Res Function(_$StudentSelectRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudentSelectRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tempToken = freezed,
    Object? studentId = freezed,
  }) {
    return _then(_$StudentSelectRequestImpl(
      tempToken: freezed == tempToken
          ? _value.tempToken
          : tempToken // ignore: cast_nullable_to_non_nullable
              as String?,
      studentId: freezed == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StudentSelectRequestImpl implements _StudentSelectRequest {
  const _$StudentSelectRequestImpl(
      {@JsonKey(name: 'tempToken') this.tempToken,
      @JsonKey(name: 'studentId') this.studentId});

  factory _$StudentSelectRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentSelectRequestImplFromJson(json);

  @override
  @JsonKey(name: 'tempToken')
  final String? tempToken;
  @override
  @JsonKey(name: 'studentId')
  final String? studentId;

  @override
  String toString() {
    return 'StudentSelectRequest(tempToken: $tempToken, studentId: $studentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentSelectRequestImpl &&
            (identical(other.tempToken, tempToken) ||
                other.tempToken == tempToken) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, tempToken, studentId);

  /// Create a copy of StudentSelectRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentSelectRequestImplCopyWith<_$StudentSelectRequestImpl>
      get copyWith =>
          __$$StudentSelectRequestImplCopyWithImpl<_$StudentSelectRequestImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentSelectRequestImplToJson(
      this,
    );
  }
}

abstract class _StudentSelectRequest implements StudentSelectRequest {
  const factory _StudentSelectRequest(
          {@JsonKey(name: 'tempToken') final String? tempToken,
          @JsonKey(name: 'studentId') final String? studentId}) =
      _$StudentSelectRequestImpl;

  factory _StudentSelectRequest.fromJson(Map<String, dynamic> json) =
      _$StudentSelectRequestImpl.fromJson;

  @override
  @JsonKey(name: 'tempToken')
  String? get tempToken;
  @override
  @JsonKey(name: 'studentId')
  String? get studentId;

  /// Create a copy of StudentSelectRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentSelectRequestImplCopyWith<_$StudentSelectRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AuthResponse _$AuthResponseFromJson(Map<String, dynamic> json) {
  return _AuthResponse.fromJson(json);
}

/// @nodoc
mixin _$AuthResponse {
  @JsonKey(name: 'next_screen')
  String? get nextScreen => throw _privateConstructorUsedError;
  @JsonKey(name: 'tempToken')
  String? get tempToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  UserInfo? get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'authToken')
  String? get authToken => throw _privateConstructorUsedError;

  /// Serializes this AuthResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthResponseCopyWith<AuthResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthResponseCopyWith<$Res> {
  factory $AuthResponseCopyWith(
          AuthResponse value, $Res Function(AuthResponse) then) =
      _$AuthResponseCopyWithImpl<$Res, AuthResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'next_screen') String? nextScreen,
      @JsonKey(name: 'tempToken') String? tempToken,
      @JsonKey(name: 'user') UserInfo? user,
      @JsonKey(name: 'authToken') String? authToken});

  $UserInfoCopyWith<$Res>? get user;
}

/// @nodoc
class _$AuthResponseCopyWithImpl<$Res, $Val extends AuthResponse>
    implements $AuthResponseCopyWith<$Res> {
  _$AuthResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nextScreen = freezed,
    Object? tempToken = freezed,
    Object? user = freezed,
    Object? authToken = freezed,
  }) {
    return _then(_value.copyWith(
      nextScreen: freezed == nextScreen
          ? _value.nextScreen
          : nextScreen // ignore: cast_nullable_to_non_nullable
              as String?,
      tempToken: freezed == tempToken
          ? _value.tempToken
          : tempToken // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserInfo?,
      authToken: freezed == authToken
          ? _value.authToken
          : authToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of AuthResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserInfoCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserInfoCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthResponseImplCopyWith<$Res>
    implements $AuthResponseCopyWith<$Res> {
  factory _$$AuthResponseImplCopyWith(
          _$AuthResponseImpl value, $Res Function(_$AuthResponseImpl) then) =
      __$$AuthResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'next_screen') String? nextScreen,
      @JsonKey(name: 'tempToken') String? tempToken,
      @JsonKey(name: 'user') UserInfo? user,
      @JsonKey(name: 'authToken') String? authToken});

  @override
  $UserInfoCopyWith<$Res>? get user;
}

/// @nodoc
class __$$AuthResponseImplCopyWithImpl<$Res>
    extends _$AuthResponseCopyWithImpl<$Res, _$AuthResponseImpl>
    implements _$$AuthResponseImplCopyWith<$Res> {
  __$$AuthResponseImplCopyWithImpl(
      _$AuthResponseImpl _value, $Res Function(_$AuthResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nextScreen = freezed,
    Object? tempToken = freezed,
    Object? user = freezed,
    Object? authToken = freezed,
  }) {
    return _then(_$AuthResponseImpl(
      nextScreen: freezed == nextScreen
          ? _value.nextScreen
          : nextScreen // ignore: cast_nullable_to_non_nullable
              as String?,
      tempToken: freezed == tempToken
          ? _value.tempToken
          : tempToken // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserInfo?,
      authToken: freezed == authToken
          ? _value.authToken
          : authToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthResponseImpl implements _AuthResponse {
  const _$AuthResponseImpl(
      {@JsonKey(name: 'next_screen') this.nextScreen,
      @JsonKey(name: 'tempToken') this.tempToken,
      @JsonKey(name: 'user') this.user,
      @JsonKey(name: 'authToken') this.authToken});

  factory _$AuthResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthResponseImplFromJson(json);

  @override
  @JsonKey(name: 'next_screen')
  final String? nextScreen;
  @override
  @JsonKey(name: 'tempToken')
  final String? tempToken;
  @override
  @JsonKey(name: 'user')
  final UserInfo? user;
  @override
  @JsonKey(name: 'authToken')
  final String? authToken;

  @override
  String toString() {
    return 'AuthResponse(nextScreen: $nextScreen, tempToken: $tempToken, user: $user, authToken: $authToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthResponseImpl &&
            (identical(other.nextScreen, nextScreen) ||
                other.nextScreen == nextScreen) &&
            (identical(other.tempToken, tempToken) ||
                other.tempToken == tempToken) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.authToken, authToken) ||
                other.authToken == authToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, nextScreen, tempToken, user, authToken);

  /// Create a copy of AuthResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthResponseImplCopyWith<_$AuthResponseImpl> get copyWith =>
      __$$AuthResponseImplCopyWithImpl<_$AuthResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthResponseImplToJson(
      this,
    );
  }
}

abstract class _AuthResponse implements AuthResponse {
  const factory _AuthResponse(
          {@JsonKey(name: 'next_screen') final String? nextScreen,
          @JsonKey(name: 'tempToken') final String? tempToken,
          @JsonKey(name: 'user') final UserInfo? user,
          @JsonKey(name: 'authToken') final String? authToken}) =
      _$AuthResponseImpl;

  factory _AuthResponse.fromJson(Map<String, dynamic> json) =
      _$AuthResponseImpl.fromJson;

  @override
  @JsonKey(name: 'next_screen')
  String? get nextScreen;
  @override
  @JsonKey(name: 'tempToken')
  String? get tempToken;
  @override
  @JsonKey(name: 'user')
  UserInfo? get user;
  @override
  @JsonKey(name: 'authToken')
  String? get authToken;

  /// Create a copy of AuthResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthResponseImplCopyWith<_$AuthResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GuardianStudent _$GuardianStudentFromJson(Map<String, dynamic> json) {
  return _GuardianStudent.fromJson(json);
}

/// @nodoc
mixin _$GuardianStudent {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'inst_id')
  String? get instId => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_image')
  String? get profileImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone')
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'enrollment_id')
  String? get enrollmentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'class')
  String? get className => throw _privateConstructorUsedError;
  @JsonKey(name: 'section')
  String? get section => throw _privateConstructorUsedError;

  /// Serializes this GuardianStudent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GuardianStudent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GuardianStudentCopyWith<GuardianStudent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuardianStudentCopyWith<$Res> {
  factory $GuardianStudentCopyWith(
          GuardianStudent value, $Res Function(GuardianStudent) then) =
      _$GuardianStudentCopyWithImpl<$Res, GuardianStudent>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'inst_id') String? instId,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'profile_image') String? profileImage,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'phone') String? phone,
      @JsonKey(name: 'enrollment_id') String? enrollmentId,
      @JsonKey(name: 'class') String? className,
      @JsonKey(name: 'section') String? section});
}

/// @nodoc
class _$GuardianStudentCopyWithImpl<$Res, $Val extends GuardianStudent>
    implements $GuardianStudentCopyWith<$Res> {
  _$GuardianStudentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GuardianStudent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? instId = freezed,
    Object? name = freezed,
    Object? profileImage = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? enrollmentId = freezed,
    Object? className = freezed,
    Object? section = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      instId: freezed == instId
          ? _value.instId
          : instId // ignore: cast_nullable_to_non_nullable
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
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      enrollmentId: freezed == enrollmentId
          ? _value.enrollmentId
          : enrollmentId // ignore: cast_nullable_to_non_nullable
              as String?,
      className: freezed == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String?,
      section: freezed == section
          ? _value.section
          : section // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GuardianStudentImplCopyWith<$Res>
    implements $GuardianStudentCopyWith<$Res> {
  factory _$$GuardianStudentImplCopyWith(_$GuardianStudentImpl value,
          $Res Function(_$GuardianStudentImpl) then) =
      __$$GuardianStudentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'inst_id') String? instId,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'profile_image') String? profileImage,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'phone') String? phone,
      @JsonKey(name: 'enrollment_id') String? enrollmentId,
      @JsonKey(name: 'class') String? className,
      @JsonKey(name: 'section') String? section});
}

/// @nodoc
class __$$GuardianStudentImplCopyWithImpl<$Res>
    extends _$GuardianStudentCopyWithImpl<$Res, _$GuardianStudentImpl>
    implements _$$GuardianStudentImplCopyWith<$Res> {
  __$$GuardianStudentImplCopyWithImpl(
      _$GuardianStudentImpl _value, $Res Function(_$GuardianStudentImpl) _then)
      : super(_value, _then);

  /// Create a copy of GuardianStudent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? instId = freezed,
    Object? name = freezed,
    Object? profileImage = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? enrollmentId = freezed,
    Object? className = freezed,
    Object? section = freezed,
  }) {
    return _then(_$GuardianStudentImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      instId: freezed == instId
          ? _value.instId
          : instId // ignore: cast_nullable_to_non_nullable
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
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      enrollmentId: freezed == enrollmentId
          ? _value.enrollmentId
          : enrollmentId // ignore: cast_nullable_to_non_nullable
              as String?,
      className: freezed == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String?,
      section: freezed == section
          ? _value.section
          : section // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GuardianStudentImpl implements _GuardianStudent {
  const _$GuardianStudentImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'inst_id') this.instId,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'profile_image') this.profileImage,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'phone') this.phone,
      @JsonKey(name: 'enrollment_id') this.enrollmentId,
      @JsonKey(name: 'class') this.className,
      @JsonKey(name: 'section') this.section});

  factory _$GuardianStudentImpl.fromJson(Map<String, dynamic> json) =>
      _$$GuardianStudentImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'inst_id')
  final String? instId;
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
  @JsonKey(name: 'phone')
  final String? phone;
  @override
  @JsonKey(name: 'enrollment_id')
  final String? enrollmentId;
  @override
  @JsonKey(name: 'class')
  final String? className;
  @override
  @JsonKey(name: 'section')
  final String? section;

  @override
  String toString() {
    return 'GuardianStudent(id: $id, instId: $instId, name: $name, profileImage: $profileImage, email: $email, phone: $phone, enrollmentId: $enrollmentId, className: $className, section: $section)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GuardianStudentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.instId, instId) || other.instId == instId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.enrollmentId, enrollmentId) ||
                other.enrollmentId == enrollmentId) &&
            (identical(other.className, className) ||
                other.className == className) &&
            (identical(other.section, section) || other.section == section));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, instId, name, profileImage,
      email, phone, enrollmentId, className, section);

  /// Create a copy of GuardianStudent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GuardianStudentImplCopyWith<_$GuardianStudentImpl> get copyWith =>
      __$$GuardianStudentImplCopyWithImpl<_$GuardianStudentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GuardianStudentImplToJson(
      this,
    );
  }
}

abstract class _GuardianStudent implements GuardianStudent {
  const factory _GuardianStudent(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'inst_id') final String? instId,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'profile_image') final String? profileImage,
      @JsonKey(name: 'email') final String? email,
      @JsonKey(name: 'phone') final String? phone,
      @JsonKey(name: 'enrollment_id') final String? enrollmentId,
      @JsonKey(name: 'class') final String? className,
      @JsonKey(name: 'section') final String? section}) = _$GuardianStudentImpl;

  factory _GuardianStudent.fromJson(Map<String, dynamic> json) =
      _$GuardianStudentImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'inst_id')
  String? get instId;
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
  @JsonKey(name: 'phone')
  String? get phone;
  @override
  @JsonKey(name: 'enrollment_id')
  String? get enrollmentId;
  @override
  @JsonKey(name: 'class')
  String? get className;
  @override
  @JsonKey(name: 'section')
  String? get section;

  /// Create a copy of GuardianStudent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GuardianStudentImplCopyWith<_$GuardianStudentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserInfo _$UserInfoFromJson(Map<String, dynamic> json) {
  return _UserInfo.fromJson(json);
}

/// @nodoc
mixin _$UserInfo {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone')
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_image')
  String? get profileImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'student')
  int? get student => throw _privateConstructorUsedError;

  /// Serializes this UserInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserInfoCopyWith<UserInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInfoCopyWith<$Res> {
  factory $UserInfoCopyWith(UserInfo value, $Res Function(UserInfo) then) =
      _$UserInfoCopyWithImpl<$Res, UserInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'phone') String? phone,
      @JsonKey(name: 'profile_image') String? profileImage,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'student') int? student});
}

/// @nodoc
class _$UserInfoCopyWithImpl<$Res, $Val extends UserInfo>
    implements $UserInfoCopyWith<$Res> {
  _$UserInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? profileImage = freezed,
    Object? type = freezed,
    Object? student = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      student: freezed == student
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserInfoImplCopyWith<$Res>
    implements $UserInfoCopyWith<$Res> {
  factory _$$UserInfoImplCopyWith(
          _$UserInfoImpl value, $Res Function(_$UserInfoImpl) then) =
      __$$UserInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'phone') String? phone,
      @JsonKey(name: 'profile_image') String? profileImage,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'student') int? student});
}

/// @nodoc
class __$$UserInfoImplCopyWithImpl<$Res>
    extends _$UserInfoCopyWithImpl<$Res, _$UserInfoImpl>
    implements _$$UserInfoImplCopyWith<$Res> {
  __$$UserInfoImplCopyWithImpl(
      _$UserInfoImpl _value, $Res Function(_$UserInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? profileImage = freezed,
    Object? type = freezed,
    Object? student = freezed,
  }) {
    return _then(_$UserInfoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      student: freezed == student
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserInfoImpl implements _UserInfo {
  const _$UserInfoImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'phone') this.phone,
      @JsonKey(name: 'profile_image') this.profileImage,
      @JsonKey(name: 'type') this.type,
      @JsonKey(name: 'student') this.student});

  factory _$UserInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserInfoImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'phone')
  final String? phone;
  @override
  @JsonKey(name: 'profile_image')
  final String? profileImage;
  @override
  @JsonKey(name: 'type')
  final String? type;
  @override
  @JsonKey(name: 'student')
  final int? student;

  @override
  String toString() {
    return 'UserInfo(id: $id, name: $name, email: $email, phone: $phone, profileImage: $profileImage, type: $type, student: $student)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.student, student) || other.student == student));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, email, phone, profileImage, type, student);

  /// Create a copy of UserInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserInfoImplCopyWith<_$UserInfoImpl> get copyWith =>
      __$$UserInfoImplCopyWithImpl<_$UserInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserInfoImplToJson(
      this,
    );
  }
}

abstract class _UserInfo implements UserInfo {
  const factory _UserInfo(
      {@JsonKey(name: 'id') final String? id,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'email') final String? email,
      @JsonKey(name: 'phone') final String? phone,
      @JsonKey(name: 'profile_image') final String? profileImage,
      @JsonKey(name: 'type') final String? type,
      @JsonKey(name: 'student') final int? student}) = _$UserInfoImpl;

  factory _UserInfo.fromJson(Map<String, dynamic> json) =
      _$UserInfoImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'phone')
  String? get phone;
  @override
  @JsonKey(name: 'profile_image')
  String? get profileImage;
  @override
  @JsonKey(name: 'type')
  String? get type;
  @override
  @JsonKey(name: 'student')
  int? get student;

  /// Create a copy of UserInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserInfoImplCopyWith<_$UserInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OtpRequest _$OtpRequestFromJson(Map<String, dynamic> json) {
  return _OtpRequest.fromJson(json);
}

/// @nodoc
mixin _$OtpRequest {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this OtpRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OtpRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OtpRequestCopyWith<OtpRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpRequestCopyWith<$Res> {
  factory $OtpRequestCopyWith(
          OtpRequest value, $Res Function(OtpRequest) then) =
      _$OtpRequestCopyWithImpl<$Res, OtpRequest>;
  @useResult
  $Res call({@JsonKey(name: 'name') String? name});
}

/// @nodoc
class _$OtpRequestCopyWithImpl<$Res, $Val extends OtpRequest>
    implements $OtpRequestCopyWith<$Res> {
  _$OtpRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OtpRequest
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
abstract class _$$OtpRequestImplCopyWith<$Res>
    implements $OtpRequestCopyWith<$Res> {
  factory _$$OtpRequestImplCopyWith(
          _$OtpRequestImpl value, $Res Function(_$OtpRequestImpl) then) =
      __$$OtpRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'name') String? name});
}

/// @nodoc
class __$$OtpRequestImplCopyWithImpl<$Res>
    extends _$OtpRequestCopyWithImpl<$Res, _$OtpRequestImpl>
    implements _$$OtpRequestImplCopyWith<$Res> {
  __$$OtpRequestImplCopyWithImpl(
      _$OtpRequestImpl _value, $Res Function(_$OtpRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of OtpRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$OtpRequestImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OtpRequestImpl implements _OtpRequest {
  const _$OtpRequestImpl({@JsonKey(name: 'name') this.name});

  factory _$OtpRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$OtpRequestImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? name;

  @override
  String toString() {
    return 'OtpRequest(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpRequestImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of OtpRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpRequestImplCopyWith<_$OtpRequestImpl> get copyWith =>
      __$$OtpRequestImplCopyWithImpl<_$OtpRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OtpRequestImplToJson(
      this,
    );
  }
}

abstract class _OtpRequest implements OtpRequest {
  const factory _OtpRequest({@JsonKey(name: 'name') final String? name}) =
      _$OtpRequestImpl;

  factory _OtpRequest.fromJson(Map<String, dynamic> json) =
      _$OtpRequestImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name;

  /// Create a copy of OtpRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OtpRequestImplCopyWith<_$OtpRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
