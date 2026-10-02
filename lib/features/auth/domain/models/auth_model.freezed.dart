// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginRequest {

@JsonKey(name: 'name') String? get name;@JsonKey(name: 'loginByOtp') bool? get loginByOtp;@JsonKey(name: 'password') String? get password;@JsonKey(name: 'otp') String? get otp;
/// Create a copy of LoginRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginRequestCopyWith<LoginRequest> get copyWith => _$LoginRequestCopyWithImpl<LoginRequest>(this as LoginRequest, _$identity);

  /// Serializes this LoginRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginRequest&&(identical(other.name, name) || other.name == name)&&(identical(other.loginByOtp, loginByOtp) || other.loginByOtp == loginByOtp)&&(identical(other.password, password) || other.password == password)&&(identical(other.otp, otp) || other.otp == otp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,loginByOtp,password,otp);

@override
String toString() {
  return 'LoginRequest(name: $name, loginByOtp: $loginByOtp, password: $password, otp: $otp)';
}


}

/// @nodoc
abstract mixin class $LoginRequestCopyWith<$Res>  {
  factory $LoginRequestCopyWith(LoginRequest value, $Res Function(LoginRequest) _then) = _$LoginRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'name') String? name,@JsonKey(name: 'loginByOtp') bool? loginByOtp,@JsonKey(name: 'password') String? password,@JsonKey(name: 'otp') String? otp
});




}
/// @nodoc
class _$LoginRequestCopyWithImpl<$Res>
    implements $LoginRequestCopyWith<$Res> {
  _$LoginRequestCopyWithImpl(this._self, this._then);

  final LoginRequest _self;
  final $Res Function(LoginRequest) _then;

/// Create a copy of LoginRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? loginByOtp = freezed,Object? password = freezed,Object? otp = freezed,}) {
  return _then(LoginRequest(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,loginByOtp: freezed == loginByOtp ? _self.loginByOtp : loginByOtp // ignore: cast_nullable_to_non_nullable
as bool?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,otp: freezed == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [LoginRequest].
extension LoginRequestPatterns on LoginRequest {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginRequest() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginRequest value)  $default,){
final _that = this;
switch (_that) {
case _LoginRequest():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginRequest value)?  $default,){
final _that = this;
switch (_that) {
case _LoginRequest() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'name')  String? name, @JsonKey(name: 'loginByOtp')  bool? loginByOtp, @JsonKey(name: 'password')  String? password, @JsonKey(name: 'otp')  String? otp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginRequest() when $default != null:
return $default(_that.name,_that.loginByOtp,_that.password,_that.otp);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'name')  String? name, @JsonKey(name: 'loginByOtp')  bool? loginByOtp, @JsonKey(name: 'password')  String? password, @JsonKey(name: 'otp')  String? otp)  $default,) {final _that = this;
switch (_that) {
case _LoginRequest():
return $default(_that.name,_that.loginByOtp,_that.password,_that.otp);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'name')  String? name, @JsonKey(name: 'loginByOtp')  bool? loginByOtp, @JsonKey(name: 'password')  String? password, @JsonKey(name: 'otp')  String? otp)?  $default,) {final _that = this;
switch (_that) {
case _LoginRequest() when $default != null:
return $default(_that.name,_that.loginByOtp,_that.password,_that.otp);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LoginRequest implements LoginRequest {
  const _LoginRequest({@JsonKey(name: 'name') this.name, @JsonKey(name: 'loginByOtp') this.loginByOtp, @JsonKey(name: 'password') this.password, @JsonKey(name: 'otp') this.otp});
  factory _LoginRequest.fromJson(Map<String, dynamic> json) => _$LoginRequestFromJson(json);

@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'loginByOtp') final  bool? loginByOtp;
@override@JsonKey(name: 'password') final  String? password;
@override@JsonKey(name: 'otp') final  String? otp;

/// Create a copy of LoginRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginRequestCopyWith<_LoginRequest> get copyWith => __$LoginRequestCopyWithImpl<_LoginRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LoginRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginRequest&&(identical(other.name, name) || other.name == name)&&(identical(other.loginByOtp, loginByOtp) || other.loginByOtp == loginByOtp)&&(identical(other.password, password) || other.password == password)&&(identical(other.otp, otp) || other.otp == otp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,loginByOtp,password,otp);

@override
String toString() {
  return 'LoginRequest(name: $name, loginByOtp: $loginByOtp, password: $password, otp: $otp)';
}


}

/// @nodoc
abstract mixin class _$LoginRequestCopyWith<$Res> implements $LoginRequestCopyWith<$Res> {
  factory _$LoginRequestCopyWith(_LoginRequest value, $Res Function(_LoginRequest) _then) = __$LoginRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'name') String? name,@JsonKey(name: 'loginByOtp') bool? loginByOtp,@JsonKey(name: 'password') String? password,@JsonKey(name: 'otp') String? otp
});




}
/// @nodoc
class __$LoginRequestCopyWithImpl<$Res>
    implements _$LoginRequestCopyWith<$Res> {
  __$LoginRequestCopyWithImpl(this._self, this._then);

  final _LoginRequest _self;
  final $Res Function(_LoginRequest) _then;

/// Create a copy of LoginRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? loginByOtp = freezed,Object? password = freezed,Object? otp = freezed,}) {
  return _then(_LoginRequest(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,loginByOtp: freezed == loginByOtp ? _self.loginByOtp : loginByOtp // ignore: cast_nullable_to_non_nullable
as bool?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,otp: freezed == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$BiometricLoginRequest {

@JsonKey(name: 'user_id', includeIfNull: false) int? get userId;@JsonKey(name: 'device_id') String? get deviceId;@JsonKey(name: 'device_token') String? get deviceToken;@JsonKey(name: 'biometric_type') String? get biometricType;
/// Create a copy of BiometricLoginRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BiometricLoginRequestCopyWith<BiometricLoginRequest> get copyWith => _$BiometricLoginRequestCopyWithImpl<BiometricLoginRequest>(this as BiometricLoginRequest, _$identity);

  /// Serializes this BiometricLoginRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BiometricLoginRequest&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.deviceToken, deviceToken) || other.deviceToken == deviceToken)&&(identical(other.biometricType, biometricType) || other.biometricType == biometricType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,deviceId,deviceToken,biometricType);

@override
String toString() {
  return 'BiometricLoginRequest(userId: $userId, deviceId: $deviceId, deviceToken: $deviceToken, biometricType: $biometricType)';
}


}

/// @nodoc
abstract mixin class $BiometricLoginRequestCopyWith<$Res>  {
  factory $BiometricLoginRequestCopyWith(BiometricLoginRequest value, $Res Function(BiometricLoginRequest) _then) = _$BiometricLoginRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'user_id', includeIfNull: false) int? userId,@JsonKey(name: 'device_id') String? deviceId,@JsonKey(name: 'device_token') String? deviceToken,@JsonKey(name: 'biometric_type') String? biometricType
});




}
/// @nodoc
class _$BiometricLoginRequestCopyWithImpl<$Res>
    implements $BiometricLoginRequestCopyWith<$Res> {
  _$BiometricLoginRequestCopyWithImpl(this._self, this._then);

  final BiometricLoginRequest _self;
  final $Res Function(BiometricLoginRequest) _then;

/// Create a copy of BiometricLoginRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = freezed,Object? deviceId = freezed,Object? deviceToken = freezed,Object? biometricType = freezed,}) {
  return _then(BiometricLoginRequest(
userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,deviceId: freezed == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String?,deviceToken: freezed == deviceToken ? _self.deviceToken : deviceToken // ignore: cast_nullable_to_non_nullable
as String?,biometricType: freezed == biometricType ? _self.biometricType : biometricType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [BiometricLoginRequest].
extension BiometricLoginRequestPatterns on BiometricLoginRequest {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BiometricLoginRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BiometricLoginRequest() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BiometricLoginRequest value)  $default,){
final _that = this;
switch (_that) {
case _BiometricLoginRequest():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BiometricLoginRequest value)?  $default,){
final _that = this;
switch (_that) {
case _BiometricLoginRequest() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'user_id', includeIfNull: false)  int? userId, @JsonKey(name: 'device_id')  String? deviceId, @JsonKey(name: 'device_token')  String? deviceToken, @JsonKey(name: 'biometric_type')  String? biometricType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BiometricLoginRequest() when $default != null:
return $default(_that.userId,_that.deviceId,_that.deviceToken,_that.biometricType);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'user_id', includeIfNull: false)  int? userId, @JsonKey(name: 'device_id')  String? deviceId, @JsonKey(name: 'device_token')  String? deviceToken, @JsonKey(name: 'biometric_type')  String? biometricType)  $default,) {final _that = this;
switch (_that) {
case _BiometricLoginRequest():
return $default(_that.userId,_that.deviceId,_that.deviceToken,_that.biometricType);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'user_id', includeIfNull: false)  int? userId, @JsonKey(name: 'device_id')  String? deviceId, @JsonKey(name: 'device_token')  String? deviceToken, @JsonKey(name: 'biometric_type')  String? biometricType)?  $default,) {final _that = this;
switch (_that) {
case _BiometricLoginRequest() when $default != null:
return $default(_that.userId,_that.deviceId,_that.deviceToken,_that.biometricType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BiometricLoginRequest implements BiometricLoginRequest {
  const _BiometricLoginRequest({@JsonKey(name: 'user_id', includeIfNull: false) this.userId, @JsonKey(name: 'device_id') this.deviceId, @JsonKey(name: 'device_token') this.deviceToken, @JsonKey(name: 'biometric_type') this.biometricType});
  factory _BiometricLoginRequest.fromJson(Map<String, dynamic> json) => _$BiometricLoginRequestFromJson(json);

@override@JsonKey(name: 'user_id', includeIfNull: false) final  int? userId;
@override@JsonKey(name: 'device_id') final  String? deviceId;
@override@JsonKey(name: 'device_token') final  String? deviceToken;
@override@JsonKey(name: 'biometric_type') final  String? biometricType;

/// Create a copy of BiometricLoginRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BiometricLoginRequestCopyWith<_BiometricLoginRequest> get copyWith => __$BiometricLoginRequestCopyWithImpl<_BiometricLoginRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BiometricLoginRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BiometricLoginRequest&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.deviceToken, deviceToken) || other.deviceToken == deviceToken)&&(identical(other.biometricType, biometricType) || other.biometricType == biometricType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,deviceId,deviceToken,biometricType);

@override
String toString() {
  return 'BiometricLoginRequest(userId: $userId, deviceId: $deviceId, deviceToken: $deviceToken, biometricType: $biometricType)';
}


}

/// @nodoc
abstract mixin class _$BiometricLoginRequestCopyWith<$Res> implements $BiometricLoginRequestCopyWith<$Res> {
  factory _$BiometricLoginRequestCopyWith(_BiometricLoginRequest value, $Res Function(_BiometricLoginRequest) _then) = __$BiometricLoginRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'user_id', includeIfNull: false) int? userId,@JsonKey(name: 'device_id') String? deviceId,@JsonKey(name: 'device_token') String? deviceToken,@JsonKey(name: 'biometric_type') String? biometricType
});




}
/// @nodoc
class __$BiometricLoginRequestCopyWithImpl<$Res>
    implements _$BiometricLoginRequestCopyWith<$Res> {
  __$BiometricLoginRequestCopyWithImpl(this._self, this._then);

  final _BiometricLoginRequest _self;
  final $Res Function(_BiometricLoginRequest) _then;

/// Create a copy of BiometricLoginRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = freezed,Object? deviceId = freezed,Object? deviceToken = freezed,Object? biometricType = freezed,}) {
  return _then(_BiometricLoginRequest(
userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,deviceId: freezed == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String?,deviceToken: freezed == deviceToken ? _self.deviceToken : deviceToken // ignore: cast_nullable_to_non_nullable
as String?,biometricType: freezed == biometricType ? _self.biometricType : biometricType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$RoleSelectRequest {

@JsonKey(name: 'tempToken') String? get tempToken;@JsonKey(name: 'role') String? get role;
/// Create a copy of RoleSelectRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RoleSelectRequestCopyWith<RoleSelectRequest> get copyWith => _$RoleSelectRequestCopyWithImpl<RoleSelectRequest>(this as RoleSelectRequest, _$identity);

  /// Serializes this RoleSelectRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RoleSelectRequest&&(identical(other.tempToken, tempToken) || other.tempToken == tempToken)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tempToken,role);

@override
String toString() {
  return 'RoleSelectRequest(tempToken: $tempToken, role: $role)';
}


}

/// @nodoc
abstract mixin class $RoleSelectRequestCopyWith<$Res>  {
  factory $RoleSelectRequestCopyWith(RoleSelectRequest value, $Res Function(RoleSelectRequest) _then) = _$RoleSelectRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'tempToken') String? tempToken,@JsonKey(name: 'role') String? role
});




}
/// @nodoc
class _$RoleSelectRequestCopyWithImpl<$Res>
    implements $RoleSelectRequestCopyWith<$Res> {
  _$RoleSelectRequestCopyWithImpl(this._self, this._then);

  final RoleSelectRequest _self;
  final $Res Function(RoleSelectRequest) _then;

/// Create a copy of RoleSelectRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tempToken = freezed,Object? role = freezed,}) {
  return _then(RoleSelectRequest(
tempToken: freezed == tempToken ? _self.tempToken : tempToken // ignore: cast_nullable_to_non_nullable
as String?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RoleSelectRequest].
extension RoleSelectRequestPatterns on RoleSelectRequest {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RoleSelectRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RoleSelectRequest() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RoleSelectRequest value)  $default,){
final _that = this;
switch (_that) {
case _RoleSelectRequest():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RoleSelectRequest value)?  $default,){
final _that = this;
switch (_that) {
case _RoleSelectRequest() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'tempToken')  String? tempToken, @JsonKey(name: 'role')  String? role)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RoleSelectRequest() when $default != null:
return $default(_that.tempToken,_that.role);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'tempToken')  String? tempToken, @JsonKey(name: 'role')  String? role)  $default,) {final _that = this;
switch (_that) {
case _RoleSelectRequest():
return $default(_that.tempToken,_that.role);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'tempToken')  String? tempToken, @JsonKey(name: 'role')  String? role)?  $default,) {final _that = this;
switch (_that) {
case _RoleSelectRequest() when $default != null:
return $default(_that.tempToken,_that.role);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RoleSelectRequest implements RoleSelectRequest {
  const _RoleSelectRequest({@JsonKey(name: 'tempToken') this.tempToken, @JsonKey(name: 'role') this.role});
  factory _RoleSelectRequest.fromJson(Map<String, dynamic> json) => _$RoleSelectRequestFromJson(json);

@override@JsonKey(name: 'tempToken') final  String? tempToken;
@override@JsonKey(name: 'role') final  String? role;

/// Create a copy of RoleSelectRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RoleSelectRequestCopyWith<_RoleSelectRequest> get copyWith => __$RoleSelectRequestCopyWithImpl<_RoleSelectRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RoleSelectRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RoleSelectRequest&&(identical(other.tempToken, tempToken) || other.tempToken == tempToken)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tempToken,role);

@override
String toString() {
  return 'RoleSelectRequest(tempToken: $tempToken, role: $role)';
}


}

/// @nodoc
abstract mixin class _$RoleSelectRequestCopyWith<$Res> implements $RoleSelectRequestCopyWith<$Res> {
  factory _$RoleSelectRequestCopyWith(_RoleSelectRequest value, $Res Function(_RoleSelectRequest) _then) = __$RoleSelectRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'tempToken') String? tempToken,@JsonKey(name: 'role') String? role
});




}
/// @nodoc
class __$RoleSelectRequestCopyWithImpl<$Res>
    implements _$RoleSelectRequestCopyWith<$Res> {
  __$RoleSelectRequestCopyWithImpl(this._self, this._then);

  final _RoleSelectRequest _self;
  final $Res Function(_RoleSelectRequest) _then;

/// Create a copy of RoleSelectRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tempToken = freezed,Object? role = freezed,}) {
  return _then(_RoleSelectRequest(
tempToken: freezed == tempToken ? _self.tempToken : tempToken // ignore: cast_nullable_to_non_nullable
as String?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$StudentSelectRequest {

@JsonKey(name: 'tempToken') String? get tempToken;@JsonKey(name: 'studentId') String? get studentId;
/// Create a copy of StudentSelectRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StudentSelectRequestCopyWith<StudentSelectRequest> get copyWith => _$StudentSelectRequestCopyWithImpl<StudentSelectRequest>(this as StudentSelectRequest, _$identity);

  /// Serializes this StudentSelectRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StudentSelectRequest&&(identical(other.tempToken, tempToken) || other.tempToken == tempToken)&&(identical(other.studentId, studentId) || other.studentId == studentId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tempToken,studentId);

@override
String toString() {
  return 'StudentSelectRequest(tempToken: $tempToken, studentId: $studentId)';
}


}

/// @nodoc
abstract mixin class $StudentSelectRequestCopyWith<$Res>  {
  factory $StudentSelectRequestCopyWith(StudentSelectRequest value, $Res Function(StudentSelectRequest) _then) = _$StudentSelectRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'tempToken') String? tempToken,@JsonKey(name: 'studentId') String? studentId
});




}
/// @nodoc
class _$StudentSelectRequestCopyWithImpl<$Res>
    implements $StudentSelectRequestCopyWith<$Res> {
  _$StudentSelectRequestCopyWithImpl(this._self, this._then);

  final StudentSelectRequest _self;
  final $Res Function(StudentSelectRequest) _then;

/// Create a copy of StudentSelectRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tempToken = freezed,Object? studentId = freezed,}) {
  return _then(StudentSelectRequest(
tempToken: freezed == tempToken ? _self.tempToken : tempToken // ignore: cast_nullable_to_non_nullable
as String?,studentId: freezed == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [StudentSelectRequest].
extension StudentSelectRequestPatterns on StudentSelectRequest {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StudentSelectRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StudentSelectRequest() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StudentSelectRequest value)  $default,){
final _that = this;
switch (_that) {
case _StudentSelectRequest():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StudentSelectRequest value)?  $default,){
final _that = this;
switch (_that) {
case _StudentSelectRequest() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'tempToken')  String? tempToken, @JsonKey(name: 'studentId')  String? studentId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StudentSelectRequest() when $default != null:
return $default(_that.tempToken,_that.studentId);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'tempToken')  String? tempToken, @JsonKey(name: 'studentId')  String? studentId)  $default,) {final _that = this;
switch (_that) {
case _StudentSelectRequest():
return $default(_that.tempToken,_that.studentId);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'tempToken')  String? tempToken, @JsonKey(name: 'studentId')  String? studentId)?  $default,) {final _that = this;
switch (_that) {
case _StudentSelectRequest() when $default != null:
return $default(_that.tempToken,_that.studentId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StudentSelectRequest implements StudentSelectRequest {
  const _StudentSelectRequest({@JsonKey(name: 'tempToken') this.tempToken, @JsonKey(name: 'studentId') this.studentId});
  factory _StudentSelectRequest.fromJson(Map<String, dynamic> json) => _$StudentSelectRequestFromJson(json);

@override@JsonKey(name: 'tempToken') final  String? tempToken;
@override@JsonKey(name: 'studentId') final  String? studentId;

/// Create a copy of StudentSelectRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StudentSelectRequestCopyWith<_StudentSelectRequest> get copyWith => __$StudentSelectRequestCopyWithImpl<_StudentSelectRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StudentSelectRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StudentSelectRequest&&(identical(other.tempToken, tempToken) || other.tempToken == tempToken)&&(identical(other.studentId, studentId) || other.studentId == studentId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tempToken,studentId);

@override
String toString() {
  return 'StudentSelectRequest(tempToken: $tempToken, studentId: $studentId)';
}


}

/// @nodoc
abstract mixin class _$StudentSelectRequestCopyWith<$Res> implements $StudentSelectRequestCopyWith<$Res> {
  factory _$StudentSelectRequestCopyWith(_StudentSelectRequest value, $Res Function(_StudentSelectRequest) _then) = __$StudentSelectRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'tempToken') String? tempToken,@JsonKey(name: 'studentId') String? studentId
});




}
/// @nodoc
class __$StudentSelectRequestCopyWithImpl<$Res>
    implements _$StudentSelectRequestCopyWith<$Res> {
  __$StudentSelectRequestCopyWithImpl(this._self, this._then);

  final _StudentSelectRequest _self;
  final $Res Function(_StudentSelectRequest) _then;

/// Create a copy of StudentSelectRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tempToken = freezed,Object? studentId = freezed,}) {
  return _then(_StudentSelectRequest(
tempToken: freezed == tempToken ? _self.tempToken : tempToken // ignore: cast_nullable_to_non_nullable
as String?,studentId: freezed == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$AuthResponse {

@JsonKey(name: 'next_screen') String? get nextScreen;@JsonKey(name: 'userChoose') bool? get userChoose;@JsonKey(name: 'tempToken') String? get tempToken;@JsonKey(name: 'user') UserInfo? get user;@JsonKey(name: 'authToken') String? get authToken;
/// Create a copy of AuthResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthResponseCopyWith<AuthResponse> get copyWith => _$AuthResponseCopyWithImpl<AuthResponse>(this as AuthResponse, _$identity);

  /// Serializes this AuthResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthResponse&&(identical(other.nextScreen, nextScreen) || other.nextScreen == nextScreen)&&(identical(other.userChoose, userChoose) || other.userChoose == userChoose)&&(identical(other.tempToken, tempToken) || other.tempToken == tempToken)&&(identical(other.user, user) || other.user == user)&&(identical(other.authToken, authToken) || other.authToken == authToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nextScreen,userChoose,tempToken,user,authToken);

@override
String toString() {
  return 'AuthResponse(nextScreen: $nextScreen, userChoose: $userChoose, tempToken: $tempToken, user: $user, authToken: $authToken)';
}


}

/// @nodoc
abstract mixin class $AuthResponseCopyWith<$Res>  {
  factory $AuthResponseCopyWith(AuthResponse value, $Res Function(AuthResponse) _then) = _$AuthResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'next_screen') String? nextScreen,@JsonKey(name: 'userChoose') bool? userChoose,@JsonKey(name: 'tempToken') String? tempToken,@JsonKey(name: 'user') UserInfo? user,@JsonKey(name: 'authToken') String? authToken
});


$UserInfoCopyWith<$Res>? get user;

}
/// @nodoc
class _$AuthResponseCopyWithImpl<$Res>
    implements $AuthResponseCopyWith<$Res> {
  _$AuthResponseCopyWithImpl(this._self, this._then);

  final AuthResponse _self;
  final $Res Function(AuthResponse) _then;

/// Create a copy of AuthResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? nextScreen = freezed,Object? userChoose = freezed,Object? tempToken = freezed,Object? user = freezed,Object? authToken = freezed,}) {
  return _then(AuthResponse(
nextScreen: freezed == nextScreen ? _self.nextScreen : nextScreen // ignore: cast_nullable_to_non_nullable
as String?,userChoose: freezed == userChoose ? _self.userChoose : userChoose // ignore: cast_nullable_to_non_nullable
as bool?,tempToken: freezed == tempToken ? _self.tempToken : tempToken // ignore: cast_nullable_to_non_nullable
as String?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserInfo?,authToken: freezed == authToken ? _self.authToken : authToken // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of AuthResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserInfoCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserInfoCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [AuthResponse].
extension AuthResponsePatterns on AuthResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthResponse value)  $default,){
final _that = this;
switch (_that) {
case _AuthResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthResponse value)?  $default,){
final _that = this;
switch (_that) {
case _AuthResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'next_screen')  String? nextScreen, @JsonKey(name: 'userChoose')  bool? userChoose, @JsonKey(name: 'tempToken')  String? tempToken, @JsonKey(name: 'user')  UserInfo? user, @JsonKey(name: 'authToken')  String? authToken)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthResponse() when $default != null:
return $default(_that.nextScreen,_that.userChoose,_that.tempToken,_that.user,_that.authToken);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'next_screen')  String? nextScreen, @JsonKey(name: 'userChoose')  bool? userChoose, @JsonKey(name: 'tempToken')  String? tempToken, @JsonKey(name: 'user')  UserInfo? user, @JsonKey(name: 'authToken')  String? authToken)  $default,) {final _that = this;
switch (_that) {
case _AuthResponse():
return $default(_that.nextScreen,_that.userChoose,_that.tempToken,_that.user,_that.authToken);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'next_screen')  String? nextScreen, @JsonKey(name: 'userChoose')  bool? userChoose, @JsonKey(name: 'tempToken')  String? tempToken, @JsonKey(name: 'user')  UserInfo? user, @JsonKey(name: 'authToken')  String? authToken)?  $default,) {final _that = this;
switch (_that) {
case _AuthResponse() when $default != null:
return $default(_that.nextScreen,_that.userChoose,_that.tempToken,_that.user,_that.authToken);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuthResponse implements AuthResponse {
  const _AuthResponse({@JsonKey(name: 'next_screen') this.nextScreen, @JsonKey(name: 'userChoose') this.userChoose, @JsonKey(name: 'tempToken') this.tempToken, @JsonKey(name: 'user') this.user, @JsonKey(name: 'authToken') this.authToken});
  factory _AuthResponse.fromJson(Map<String, dynamic> json) => _$AuthResponseFromJson(json);

@override@JsonKey(name: 'next_screen') final  String? nextScreen;
@override@JsonKey(name: 'userChoose') final  bool? userChoose;
@override@JsonKey(name: 'tempToken') final  String? tempToken;
@override@JsonKey(name: 'user') final  UserInfo? user;
@override@JsonKey(name: 'authToken') final  String? authToken;

/// Create a copy of AuthResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthResponseCopyWith<_AuthResponse> get copyWith => __$AuthResponseCopyWithImpl<_AuthResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthResponse&&(identical(other.nextScreen, nextScreen) || other.nextScreen == nextScreen)&&(identical(other.userChoose, userChoose) || other.userChoose == userChoose)&&(identical(other.tempToken, tempToken) || other.tempToken == tempToken)&&(identical(other.user, user) || other.user == user)&&(identical(other.authToken, authToken) || other.authToken == authToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nextScreen,userChoose,tempToken,user,authToken);

@override
String toString() {
  return 'AuthResponse(nextScreen: $nextScreen, userChoose: $userChoose, tempToken: $tempToken, user: $user, authToken: $authToken)';
}


}

/// @nodoc
abstract mixin class _$AuthResponseCopyWith<$Res> implements $AuthResponseCopyWith<$Res> {
  factory _$AuthResponseCopyWith(_AuthResponse value, $Res Function(_AuthResponse) _then) = __$AuthResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'next_screen') String? nextScreen,@JsonKey(name: 'userChoose') bool? userChoose,@JsonKey(name: 'tempToken') String? tempToken,@JsonKey(name: 'user') UserInfo? user,@JsonKey(name: 'authToken') String? authToken
});


@override $UserInfoCopyWith<$Res>? get user;

}
/// @nodoc
class __$AuthResponseCopyWithImpl<$Res>
    implements _$AuthResponseCopyWith<$Res> {
  __$AuthResponseCopyWithImpl(this._self, this._then);

  final _AuthResponse _self;
  final $Res Function(_AuthResponse) _then;

/// Create a copy of AuthResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? nextScreen = freezed,Object? userChoose = freezed,Object? tempToken = freezed,Object? user = freezed,Object? authToken = freezed,}) {
  return _then(_AuthResponse(
nextScreen: freezed == nextScreen ? _self.nextScreen : nextScreen // ignore: cast_nullable_to_non_nullable
as String?,userChoose: freezed == userChoose ? _self.userChoose : userChoose // ignore: cast_nullable_to_non_nullable
as bool?,tempToken: freezed == tempToken ? _self.tempToken : tempToken // ignore: cast_nullable_to_non_nullable
as String?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserInfo?,authToken: freezed == authToken ? _self.authToken : authToken // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of AuthResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserInfoCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserInfoCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// @nodoc
mixin _$GuardianStudent {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'inst_id') String? get instId;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'profile_image') String? get profileImage;@JsonKey(name: 'email') String? get email;@JsonKey(name: 'phone') String? get phone;@JsonKey(name: 'enrollment_id') String? get enrollmentId;@JsonKey(name: 'class') String? get className;@JsonKey(name: 'section') String? get section;
/// Create a copy of GuardianStudent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GuardianStudentCopyWith<GuardianStudent> get copyWith => _$GuardianStudentCopyWithImpl<GuardianStudent>(this as GuardianStudent, _$identity);

  /// Serializes this GuardianStudent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GuardianStudent&&(identical(other.id, id) || other.id == id)&&(identical(other.instId, instId) || other.instId == instId)&&(identical(other.name, name) || other.name == name)&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.enrollmentId, enrollmentId) || other.enrollmentId == enrollmentId)&&(identical(other.className, className) || other.className == className)&&(identical(other.section, section) || other.section == section));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,instId,name,profileImage,email,phone,enrollmentId,className,section);

@override
String toString() {
  return 'GuardianStudent(id: $id, instId: $instId, name: $name, profileImage: $profileImage, email: $email, phone: $phone, enrollmentId: $enrollmentId, className: $className, section: $section)';
}


}

/// @nodoc
abstract mixin class $GuardianStudentCopyWith<$Res>  {
  factory $GuardianStudentCopyWith(GuardianStudent value, $Res Function(GuardianStudent) _then) = _$GuardianStudentCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'inst_id') String? instId,@JsonKey(name: 'name') String? name,@JsonKey(name: 'profile_image') String? profileImage,@JsonKey(name: 'email') String? email,@JsonKey(name: 'phone') String? phone,@JsonKey(name: 'enrollment_id') String? enrollmentId,@JsonKey(name: 'class') String? className,@JsonKey(name: 'section') String? section
});




}
/// @nodoc
class _$GuardianStudentCopyWithImpl<$Res>
    implements $GuardianStudentCopyWith<$Res> {
  _$GuardianStudentCopyWithImpl(this._self, this._then);

  final GuardianStudent _self;
  final $Res Function(GuardianStudent) _then;

/// Create a copy of GuardianStudent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? instId = freezed,Object? name = freezed,Object? profileImage = freezed,Object? email = freezed,Object? phone = freezed,Object? enrollmentId = freezed,Object? className = freezed,Object? section = freezed,}) {
  return _then(GuardianStudent(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,instId: freezed == instId ? _self.instId : instId // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,profileImage: freezed == profileImage ? _self.profileImage : profileImage // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,enrollmentId: freezed == enrollmentId ? _self.enrollmentId : enrollmentId // ignore: cast_nullable_to_non_nullable
as String?,className: freezed == className ? _self.className : className // ignore: cast_nullable_to_non_nullable
as String?,section: freezed == section ? _self.section : section // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [GuardianStudent].
extension GuardianStudentPatterns on GuardianStudent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GuardianStudent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GuardianStudent() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GuardianStudent value)  $default,){
final _that = this;
switch (_that) {
case _GuardianStudent():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GuardianStudent value)?  $default,){
final _that = this;
switch (_that) {
case _GuardianStudent() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'inst_id')  String? instId, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'profile_image')  String? profileImage, @JsonKey(name: 'email')  String? email, @JsonKey(name: 'phone')  String? phone, @JsonKey(name: 'enrollment_id')  String? enrollmentId, @JsonKey(name: 'class')  String? className, @JsonKey(name: 'section')  String? section)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GuardianStudent() when $default != null:
return $default(_that.id,_that.instId,_that.name,_that.profileImage,_that.email,_that.phone,_that.enrollmentId,_that.className,_that.section);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'inst_id')  String? instId, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'profile_image')  String? profileImage, @JsonKey(name: 'email')  String? email, @JsonKey(name: 'phone')  String? phone, @JsonKey(name: 'enrollment_id')  String? enrollmentId, @JsonKey(name: 'class')  String? className, @JsonKey(name: 'section')  String? section)  $default,) {final _that = this;
switch (_that) {
case _GuardianStudent():
return $default(_that.id,_that.instId,_that.name,_that.profileImage,_that.email,_that.phone,_that.enrollmentId,_that.className,_that.section);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'inst_id')  String? instId, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'profile_image')  String? profileImage, @JsonKey(name: 'email')  String? email, @JsonKey(name: 'phone')  String? phone, @JsonKey(name: 'enrollment_id')  String? enrollmentId, @JsonKey(name: 'class')  String? className, @JsonKey(name: 'section')  String? section)?  $default,) {final _that = this;
switch (_that) {
case _GuardianStudent() when $default != null:
return $default(_that.id,_that.instId,_that.name,_that.profileImage,_that.email,_that.phone,_that.enrollmentId,_that.className,_that.section);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GuardianStudent implements GuardianStudent {
  const _GuardianStudent({@JsonKey(name: 'id') this.id, @JsonKey(name: 'inst_id') this.instId, @JsonKey(name: 'name') this.name, @JsonKey(name: 'profile_image') this.profileImage, @JsonKey(name: 'email') this.email, @JsonKey(name: 'phone') this.phone, @JsonKey(name: 'enrollment_id') this.enrollmentId, @JsonKey(name: 'class') this.className, @JsonKey(name: 'section') this.section});
  factory _GuardianStudent.fromJson(Map<String, dynamic> json) => _$GuardianStudentFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'inst_id') final  String? instId;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'profile_image') final  String? profileImage;
@override@JsonKey(name: 'email') final  String? email;
@override@JsonKey(name: 'phone') final  String? phone;
@override@JsonKey(name: 'enrollment_id') final  String? enrollmentId;
@override@JsonKey(name: 'class') final  String? className;
@override@JsonKey(name: 'section') final  String? section;

/// Create a copy of GuardianStudent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GuardianStudentCopyWith<_GuardianStudent> get copyWith => __$GuardianStudentCopyWithImpl<_GuardianStudent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GuardianStudentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GuardianStudent&&(identical(other.id, id) || other.id == id)&&(identical(other.instId, instId) || other.instId == instId)&&(identical(other.name, name) || other.name == name)&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.enrollmentId, enrollmentId) || other.enrollmentId == enrollmentId)&&(identical(other.className, className) || other.className == className)&&(identical(other.section, section) || other.section == section));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,instId,name,profileImage,email,phone,enrollmentId,className,section);

@override
String toString() {
  return 'GuardianStudent(id: $id, instId: $instId, name: $name, profileImage: $profileImage, email: $email, phone: $phone, enrollmentId: $enrollmentId, className: $className, section: $section)';
}


}

/// @nodoc
abstract mixin class _$GuardianStudentCopyWith<$Res> implements $GuardianStudentCopyWith<$Res> {
  factory _$GuardianStudentCopyWith(_GuardianStudent value, $Res Function(_GuardianStudent) _then) = __$GuardianStudentCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'inst_id') String? instId,@JsonKey(name: 'name') String? name,@JsonKey(name: 'profile_image') String? profileImage,@JsonKey(name: 'email') String? email,@JsonKey(name: 'phone') String? phone,@JsonKey(name: 'enrollment_id') String? enrollmentId,@JsonKey(name: 'class') String? className,@JsonKey(name: 'section') String? section
});




}
/// @nodoc
class __$GuardianStudentCopyWithImpl<$Res>
    implements _$GuardianStudentCopyWith<$Res> {
  __$GuardianStudentCopyWithImpl(this._self, this._then);

  final _GuardianStudent _self;
  final $Res Function(_GuardianStudent) _then;

/// Create a copy of GuardianStudent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? instId = freezed,Object? name = freezed,Object? profileImage = freezed,Object? email = freezed,Object? phone = freezed,Object? enrollmentId = freezed,Object? className = freezed,Object? section = freezed,}) {
  return _then(_GuardianStudent(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,instId: freezed == instId ? _self.instId : instId // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,profileImage: freezed == profileImage ? _self.profileImage : profileImage // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,enrollmentId: freezed == enrollmentId ? _self.enrollmentId : enrollmentId // ignore: cast_nullable_to_non_nullable
as String?,className: freezed == className ? _self.className : className // ignore: cast_nullable_to_non_nullable
as String?,section: freezed == section ? _self.section : section // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$BiometricUserInfo {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'profile_image') String? get profileImage;@JsonKey(name: 'user_type') List<String>? get userType;
/// Create a copy of BiometricUserInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BiometricUserInfoCopyWith<BiometricUserInfo> get copyWith => _$BiometricUserInfoCopyWithImpl<BiometricUserInfo>(this as BiometricUserInfo, _$identity);

  /// Serializes this BiometricUserInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BiometricUserInfo&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage)&&const DeepCollectionEquality().equals(other.userType, userType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,profileImage,const DeepCollectionEquality().hash(userType));

@override
String toString() {
  return 'BiometricUserInfo(id: $id, name: $name, profileImage: $profileImage, userType: $userType)';
}


}

/// @nodoc
abstract mixin class $BiometricUserInfoCopyWith<$Res>  {
  factory $BiometricUserInfoCopyWith(BiometricUserInfo value, $Res Function(BiometricUserInfo) _then) = _$BiometricUserInfoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'profile_image') String? profileImage,@JsonKey(name: 'user_type') List<String>? userType
});




}
/// @nodoc
class _$BiometricUserInfoCopyWithImpl<$Res>
    implements $BiometricUserInfoCopyWith<$Res> {
  _$BiometricUserInfoCopyWithImpl(this._self, this._then);

  final BiometricUserInfo _self;
  final $Res Function(BiometricUserInfo) _then;

/// Create a copy of BiometricUserInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? profileImage = freezed,Object? userType = freezed,}) {
  return _then(BiometricUserInfo(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,profileImage: freezed == profileImage ? _self.profileImage : profileImage // ignore: cast_nullable_to_non_nullable
as String?,userType: freezed == userType ? _self.userType : userType // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [BiometricUserInfo].
extension BiometricUserInfoPatterns on BiometricUserInfo {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BiometricUserInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BiometricUserInfo() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BiometricUserInfo value)  $default,){
final _that = this;
switch (_that) {
case _BiometricUserInfo():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BiometricUserInfo value)?  $default,){
final _that = this;
switch (_that) {
case _BiometricUserInfo() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'profile_image')  String? profileImage, @JsonKey(name: 'user_type')  List<String>? userType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BiometricUserInfo() when $default != null:
return $default(_that.id,_that.name,_that.profileImage,_that.userType);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'profile_image')  String? profileImage, @JsonKey(name: 'user_type')  List<String>? userType)  $default,) {final _that = this;
switch (_that) {
case _BiometricUserInfo():
return $default(_that.id,_that.name,_that.profileImage,_that.userType);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'profile_image')  String? profileImage, @JsonKey(name: 'user_type')  List<String>? userType)?  $default,) {final _that = this;
switch (_that) {
case _BiometricUserInfo() when $default != null:
return $default(_that.id,_that.name,_that.profileImage,_that.userType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BiometricUserInfo implements BiometricUserInfo {
  const _BiometricUserInfo({@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name, @JsonKey(name: 'profile_image') this.profileImage, @JsonKey(name: 'user_type')  List<String>? userType}): _userType = userType;
  factory _BiometricUserInfo.fromJson(Map<String, dynamic> json) => _$BiometricUserInfoFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'profile_image') final  String? profileImage;
 final  List<String>? _userType;
@override@JsonKey(name: 'user_type') List<String>? get userType {
  final value = _userType;
  if (value == null) return null;
  if (_userType is EqualUnmodifiableListView) return _userType;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of BiometricUserInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BiometricUserInfoCopyWith<_BiometricUserInfo> get copyWith => __$BiometricUserInfoCopyWithImpl<_BiometricUserInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BiometricUserInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BiometricUserInfo&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage)&&const DeepCollectionEquality().equals(other._userType, _userType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,profileImage,const DeepCollectionEquality().hash(_userType));

@override
String toString() {
  return 'BiometricUserInfo(id: $id, name: $name, profileImage: $profileImage, userType: $userType)';
}


}

/// @nodoc
abstract mixin class _$BiometricUserInfoCopyWith<$Res> implements $BiometricUserInfoCopyWith<$Res> {
  factory _$BiometricUserInfoCopyWith(_BiometricUserInfo value, $Res Function(_BiometricUserInfo) _then) = __$BiometricUserInfoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'profile_image') String? profileImage,@JsonKey(name: 'user_type') List<String>? userType
});




}
/// @nodoc
class __$BiometricUserInfoCopyWithImpl<$Res>
    implements _$BiometricUserInfoCopyWith<$Res> {
  __$BiometricUserInfoCopyWithImpl(this._self, this._then);

  final _BiometricUserInfo _self;
  final $Res Function(_BiometricUserInfo) _then;

/// Create a copy of BiometricUserInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? profileImage = freezed,Object? userType = freezed,}) {
  return _then(_BiometricUserInfo(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,profileImage: freezed == profileImage ? _self.profileImage : profileImage // ignore: cast_nullable_to_non_nullable
as String?,userType: freezed == userType ? _self._userType : userType // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}


/// @nodoc
mixin _$UserInfo {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'email') String? get email;@JsonKey(name: 'phone') String? get phone;@JsonKey(name: 'profile_image') String? get profileImage;@JsonKey(name: 'type') String? get type;@JsonKey(name: 'student') int? get student;
/// Create a copy of UserInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserInfoCopyWith<UserInfo> get copyWith => _$UserInfoCopyWithImpl<UserInfo>(this as UserInfo, _$identity);

  /// Serializes this UserInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserInfo&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage)&&(identical(other.type, type) || other.type == type)&&(identical(other.student, student) || other.student == student));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,email,phone,profileImage,type,student);

@override
String toString() {
  return 'UserInfo(id: $id, name: $name, email: $email, phone: $phone, profileImage: $profileImage, type: $type, student: $student)';
}


}

/// @nodoc
abstract mixin class $UserInfoCopyWith<$Res>  {
  factory $UserInfoCopyWith(UserInfo value, $Res Function(UserInfo) _then) = _$UserInfoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'email') String? email,@JsonKey(name: 'phone') String? phone,@JsonKey(name: 'profile_image') String? profileImage,@JsonKey(name: 'type') String? type,@JsonKey(name: 'student') int? student
});




}
/// @nodoc
class _$UserInfoCopyWithImpl<$Res>
    implements $UserInfoCopyWith<$Res> {
  _$UserInfoCopyWithImpl(this._self, this._then);

  final UserInfo _self;
  final $Res Function(UserInfo) _then;

/// Create a copy of UserInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? email = freezed,Object? phone = freezed,Object? profileImage = freezed,Object? type = freezed,Object? student = freezed,}) {
  return _then(UserInfo(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,profileImage: freezed == profileImage ? _self.profileImage : profileImage // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,student: freezed == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserInfo].
extension UserInfoPatterns on UserInfo {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserInfo() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserInfo value)  $default,){
final _that = this;
switch (_that) {
case _UserInfo():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserInfo value)?  $default,){
final _that = this;
switch (_that) {
case _UserInfo() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'email')  String? email, @JsonKey(name: 'phone')  String? phone, @JsonKey(name: 'profile_image')  String? profileImage, @JsonKey(name: 'type')  String? type, @JsonKey(name: 'student')  int? student)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserInfo() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.phone,_that.profileImage,_that.type,_that.student);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'email')  String? email, @JsonKey(name: 'phone')  String? phone, @JsonKey(name: 'profile_image')  String? profileImage, @JsonKey(name: 'type')  String? type, @JsonKey(name: 'student')  int? student)  $default,) {final _that = this;
switch (_that) {
case _UserInfo():
return $default(_that.id,_that.name,_that.email,_that.phone,_that.profileImage,_that.type,_that.student);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'email')  String? email, @JsonKey(name: 'phone')  String? phone, @JsonKey(name: 'profile_image')  String? profileImage, @JsonKey(name: 'type')  String? type, @JsonKey(name: 'student')  int? student)?  $default,) {final _that = this;
switch (_that) {
case _UserInfo() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.phone,_that.profileImage,_that.type,_that.student);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserInfo implements UserInfo {
  const _UserInfo({@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name, @JsonKey(name: 'email') this.email, @JsonKey(name: 'phone') this.phone, @JsonKey(name: 'profile_image') this.profileImage, @JsonKey(name: 'type') this.type, @JsonKey(name: 'student') this.student});
  factory _UserInfo.fromJson(Map<String, dynamic> json) => _$UserInfoFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'email') final  String? email;
@override@JsonKey(name: 'phone') final  String? phone;
@override@JsonKey(name: 'profile_image') final  String? profileImage;
@override@JsonKey(name: 'type') final  String? type;
@override@JsonKey(name: 'student') final  int? student;

/// Create a copy of UserInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserInfoCopyWith<_UserInfo> get copyWith => __$UserInfoCopyWithImpl<_UserInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserInfo&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage)&&(identical(other.type, type) || other.type == type)&&(identical(other.student, student) || other.student == student));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,email,phone,profileImage,type,student);

@override
String toString() {
  return 'UserInfo(id: $id, name: $name, email: $email, phone: $phone, profileImage: $profileImage, type: $type, student: $student)';
}


}

/// @nodoc
abstract mixin class _$UserInfoCopyWith<$Res> implements $UserInfoCopyWith<$Res> {
  factory _$UserInfoCopyWith(_UserInfo value, $Res Function(_UserInfo) _then) = __$UserInfoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'email') String? email,@JsonKey(name: 'phone') String? phone,@JsonKey(name: 'profile_image') String? profileImage,@JsonKey(name: 'type') String? type,@JsonKey(name: 'student') int? student
});




}
/// @nodoc
class __$UserInfoCopyWithImpl<$Res>
    implements _$UserInfoCopyWith<$Res> {
  __$UserInfoCopyWithImpl(this._self, this._then);

  final _UserInfo _self;
  final $Res Function(_UserInfo) _then;

/// Create a copy of UserInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? email = freezed,Object? phone = freezed,Object? profileImage = freezed,Object? type = freezed,Object? student = freezed,}) {
  return _then(_UserInfo(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,profileImage: freezed == profileImage ? _self.profileImage : profileImage // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,student: freezed == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$OtpRequest {

@JsonKey(name: 'name') String? get name;
/// Create a copy of OtpRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OtpRequestCopyWith<OtpRequest> get copyWith => _$OtpRequestCopyWithImpl<OtpRequest>(this as OtpRequest, _$identity);

  /// Serializes this OtpRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OtpRequest&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'OtpRequest(name: $name)';
}


}

/// @nodoc
abstract mixin class $OtpRequestCopyWith<$Res>  {
  factory $OtpRequestCopyWith(OtpRequest value, $Res Function(OtpRequest) _then) = _$OtpRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'name') String? name
});




}
/// @nodoc
class _$OtpRequestCopyWithImpl<$Res>
    implements $OtpRequestCopyWith<$Res> {
  _$OtpRequestCopyWithImpl(this._self, this._then);

  final OtpRequest _self;
  final $Res Function(OtpRequest) _then;

/// Create a copy of OtpRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,}) {
  return _then(OtpRequest(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [OtpRequest].
extension OtpRequestPatterns on OtpRequest {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OtpRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OtpRequest() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OtpRequest value)  $default,){
final _that = this;
switch (_that) {
case _OtpRequest():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OtpRequest value)?  $default,){
final _that = this;
switch (_that) {
case _OtpRequest() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'name')  String? name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OtpRequest() when $default != null:
return $default(_that.name);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'name')  String? name)  $default,) {final _that = this;
switch (_that) {
case _OtpRequest():
return $default(_that.name);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'name')  String? name)?  $default,) {final _that = this;
switch (_that) {
case _OtpRequest() when $default != null:
return $default(_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OtpRequest implements OtpRequest {
  const _OtpRequest({@JsonKey(name: 'name') this.name});
  factory _OtpRequest.fromJson(Map<String, dynamic> json) => _$OtpRequestFromJson(json);

@override@JsonKey(name: 'name') final  String? name;

/// Create a copy of OtpRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OtpRequestCopyWith<_OtpRequest> get copyWith => __$OtpRequestCopyWithImpl<_OtpRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OtpRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OtpRequest&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'OtpRequest(name: $name)';
}


}

/// @nodoc
abstract mixin class _$OtpRequestCopyWith<$Res> implements $OtpRequestCopyWith<$Res> {
  factory _$OtpRequestCopyWith(_OtpRequest value, $Res Function(_OtpRequest) _then) = __$OtpRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'name') String? name
});




}
/// @nodoc
class __$OtpRequestCopyWithImpl<$Res>
    implements _$OtpRequestCopyWith<$Res> {
  __$OtpRequestCopyWithImpl(this._self, this._then);

  final _OtpRequest _self;
  final $Res Function(_OtpRequest) _then;

/// Create a copy of OtpRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,}) {
  return _then(_OtpRequest(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
