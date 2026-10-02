// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateProfileImageResponse {

 int get status; String? get message;@JsonKey(name: 'profile_image') String? get profileImage;
/// Create a copy of UpdateProfileImageResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateProfileImageResponseCopyWith<UpdateProfileImageResponse> get copyWith => _$UpdateProfileImageResponseCopyWithImpl<UpdateProfileImageResponse>(this as UpdateProfileImageResponse, _$identity);

  /// Serializes this UpdateProfileImageResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateProfileImageResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,profileImage);

@override
String toString() {
  return 'UpdateProfileImageResponse(status: $status, message: $message, profileImage: $profileImage)';
}


}

/// @nodoc
abstract mixin class $UpdateProfileImageResponseCopyWith<$Res>  {
  factory $UpdateProfileImageResponseCopyWith(UpdateProfileImageResponse value, $Res Function(UpdateProfileImageResponse) _then) = _$UpdateProfileImageResponseCopyWithImpl;
@useResult
$Res call({
 int status, String? message,@JsonKey(name: 'profile_image') String? profileImage
});




}
/// @nodoc
class _$UpdateProfileImageResponseCopyWithImpl<$Res>
    implements $UpdateProfileImageResponseCopyWith<$Res> {
  _$UpdateProfileImageResponseCopyWithImpl(this._self, this._then);

  final UpdateProfileImageResponse _self;
  final $Res Function(UpdateProfileImageResponse) _then;

/// Create a copy of UpdateProfileImageResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? message = freezed,Object? profileImage = freezed,}) {
  return _then(UpdateProfileImageResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,profileImage: freezed == profileImage ? _self.profileImage : profileImage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateProfileImageResponse].
extension UpdateProfileImageResponsePatterns on UpdateProfileImageResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateProfileImageResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateProfileImageResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateProfileImageResponse value)  $default,){
final _that = this;
switch (_that) {
case _UpdateProfileImageResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateProfileImageResponse value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateProfileImageResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int status,  String? message, @JsonKey(name: 'profile_image')  String? profileImage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateProfileImageResponse() when $default != null:
return $default(_that.status,_that.message,_that.profileImage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int status,  String? message, @JsonKey(name: 'profile_image')  String? profileImage)  $default,) {final _that = this;
switch (_that) {
case _UpdateProfileImageResponse():
return $default(_that.status,_that.message,_that.profileImage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int status,  String? message, @JsonKey(name: 'profile_image')  String? profileImage)?  $default,) {final _that = this;
switch (_that) {
case _UpdateProfileImageResponse() when $default != null:
return $default(_that.status,_that.message,_that.profileImage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateProfileImageResponse implements UpdateProfileImageResponse {
  const _UpdateProfileImageResponse({required this.status, this.message, @JsonKey(name: 'profile_image') this.profileImage});
  factory _UpdateProfileImageResponse.fromJson(Map<String, dynamic> json) => _$UpdateProfileImageResponseFromJson(json);

@override final  int status;
@override final  String? message;
@override@JsonKey(name: 'profile_image') final  String? profileImage;

/// Create a copy of UpdateProfileImageResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateProfileImageResponseCopyWith<_UpdateProfileImageResponse> get copyWith => __$UpdateProfileImageResponseCopyWithImpl<_UpdateProfileImageResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateProfileImageResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateProfileImageResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,profileImage);

@override
String toString() {
  return 'UpdateProfileImageResponse(status: $status, message: $message, profileImage: $profileImage)';
}


}

/// @nodoc
abstract mixin class _$UpdateProfileImageResponseCopyWith<$Res> implements $UpdateProfileImageResponseCopyWith<$Res> {
  factory _$UpdateProfileImageResponseCopyWith(_UpdateProfileImageResponse value, $Res Function(_UpdateProfileImageResponse) _then) = __$UpdateProfileImageResponseCopyWithImpl;
@override @useResult
$Res call({
 int status, String? message,@JsonKey(name: 'profile_image') String? profileImage
});




}
/// @nodoc
class __$UpdateProfileImageResponseCopyWithImpl<$Res>
    implements _$UpdateProfileImageResponseCopyWith<$Res> {
  __$UpdateProfileImageResponseCopyWithImpl(this._self, this._then);

  final _UpdateProfileImageResponse _self;
  final $Res Function(_UpdateProfileImageResponse) _then;

/// Create a copy of UpdateProfileImageResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? message = freezed,Object? profileImage = freezed,}) {
  return _then(_UpdateProfileImageResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,profileImage: freezed == profileImage ? _self.profileImage : profileImage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$UserDetails {

@JsonKey(name: 'id') String? get id;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'profile_image') String? get profileImage;@JsonKey(name: 'email') String? get email;@JsonKey(name: 'is_mail_verified') bool? get isMailVerified;@JsonKey(name: 'phone') String? get phone;@JsonKey(name: 'is_phone_verified') bool? get isPhoneVerified;@JsonKey(name: 'staff_id') String? get staffId;@JsonKey(name: 'subject') String? get subject;@JsonKey(name: 'enrollment_id') String? get enrollmentId;@JsonKey(name: 'session') String? get session;@JsonKey(name: 'class_standard') String? get classStandard;@JsonKey(name: 'section') String? get section;@JsonKey(name: 'user_type') String? get userType;@JsonKey(name: 'guardian') GuardianInfo? get guardian;@JsonKey(name: 'student') StudentInfo? get student;
/// Create a copy of UserDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserDetailsCopyWith<UserDetails> get copyWith => _$UserDetailsCopyWithImpl<UserDetails>(this as UserDetails, _$identity);

  /// Serializes this UserDetails to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserDetails&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage)&&(identical(other.email, email) || other.email == email)&&(identical(other.isMailVerified, isMailVerified) || other.isMailVerified == isMailVerified)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.isPhoneVerified, isPhoneVerified) || other.isPhoneVerified == isPhoneVerified)&&(identical(other.staffId, staffId) || other.staffId == staffId)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.enrollmentId, enrollmentId) || other.enrollmentId == enrollmentId)&&(identical(other.session, session) || other.session == session)&&(identical(other.classStandard, classStandard) || other.classStandard == classStandard)&&(identical(other.section, section) || other.section == section)&&(identical(other.userType, userType) || other.userType == userType)&&(identical(other.guardian, guardian) || other.guardian == guardian)&&(identical(other.student, student) || other.student == student));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,profileImage,email,isMailVerified,phone,isPhoneVerified,staffId,subject,enrollmentId,session,classStandard,section,userType,guardian,student);

@override
String toString() {
  return 'UserDetails(id: $id, name: $name, profileImage: $profileImage, email: $email, isMailVerified: $isMailVerified, phone: $phone, isPhoneVerified: $isPhoneVerified, staffId: $staffId, subject: $subject, enrollmentId: $enrollmentId, session: $session, classStandard: $classStandard, section: $section, userType: $userType, guardian: $guardian, student: $student)';
}


}

/// @nodoc
abstract mixin class $UserDetailsCopyWith<$Res>  {
  factory $UserDetailsCopyWith(UserDetails value, $Res Function(UserDetails) _then) = _$UserDetailsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'profile_image') String? profileImage,@JsonKey(name: 'email') String? email,@JsonKey(name: 'is_mail_verified') bool? isMailVerified,@JsonKey(name: 'phone') String? phone,@JsonKey(name: 'is_phone_verified') bool? isPhoneVerified,@JsonKey(name: 'staff_id') String? staffId,@JsonKey(name: 'subject') String? subject,@JsonKey(name: 'enrollment_id') String? enrollmentId,@JsonKey(name: 'session') String? session,@JsonKey(name: 'class_standard') String? classStandard,@JsonKey(name: 'section') String? section,@JsonKey(name: 'user_type') String? userType,@JsonKey(name: 'guardian') GuardianInfo? guardian,@JsonKey(name: 'student') StudentInfo? student
});


$GuardianInfoCopyWith<$Res>? get guardian;$StudentInfoCopyWith<$Res>? get student;

}
/// @nodoc
class _$UserDetailsCopyWithImpl<$Res>
    implements $UserDetailsCopyWith<$Res> {
  _$UserDetailsCopyWithImpl(this._self, this._then);

  final UserDetails _self;
  final $Res Function(UserDetails) _then;

/// Create a copy of UserDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? profileImage = freezed,Object? email = freezed,Object? isMailVerified = freezed,Object? phone = freezed,Object? isPhoneVerified = freezed,Object? staffId = freezed,Object? subject = freezed,Object? enrollmentId = freezed,Object? session = freezed,Object? classStandard = freezed,Object? section = freezed,Object? userType = freezed,Object? guardian = freezed,Object? student = freezed,}) {
  return _then(UserDetails(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,profileImage: freezed == profileImage ? _self.profileImage : profileImage // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,isMailVerified: freezed == isMailVerified ? _self.isMailVerified : isMailVerified // ignore: cast_nullable_to_non_nullable
as bool?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,isPhoneVerified: freezed == isPhoneVerified ? _self.isPhoneVerified : isPhoneVerified // ignore: cast_nullable_to_non_nullable
as bool?,staffId: freezed == staffId ? _self.staffId : staffId // ignore: cast_nullable_to_non_nullable
as String?,subject: freezed == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String?,enrollmentId: freezed == enrollmentId ? _self.enrollmentId : enrollmentId // ignore: cast_nullable_to_non_nullable
as String?,session: freezed == session ? _self.session : session // ignore: cast_nullable_to_non_nullable
as String?,classStandard: freezed == classStandard ? _self.classStandard : classStandard // ignore: cast_nullable_to_non_nullable
as String?,section: freezed == section ? _self.section : section // ignore: cast_nullable_to_non_nullable
as String?,userType: freezed == userType ? _self.userType : userType // ignore: cast_nullable_to_non_nullable
as String?,guardian: freezed == guardian ? _self.guardian : guardian // ignore: cast_nullable_to_non_nullable
as GuardianInfo?,student: freezed == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as StudentInfo?,
  ));
}
/// Create a copy of UserDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GuardianInfoCopyWith<$Res>? get guardian {
    if (_self.guardian == null) {
    return null;
  }

  return $GuardianInfoCopyWith<$Res>(_self.guardian!, (value) {
    return _then(_self.copyWith(guardian: value));
  });
}/// Create a copy of UserDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StudentInfoCopyWith<$Res>? get student {
    if (_self.student == null) {
    return null;
  }

  return $StudentInfoCopyWith<$Res>(_self.student!, (value) {
    return _then(_self.copyWith(student: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserDetails].
extension UserDetailsPatterns on UserDetails {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserDetails value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserDetails() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserDetails value)  $default,){
final _that = this;
switch (_that) {
case _UserDetails():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserDetails value)?  $default,){
final _that = this;
switch (_that) {
case _UserDetails() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'profile_image')  String? profileImage, @JsonKey(name: 'email')  String? email, @JsonKey(name: 'is_mail_verified')  bool? isMailVerified, @JsonKey(name: 'phone')  String? phone, @JsonKey(name: 'is_phone_verified')  bool? isPhoneVerified, @JsonKey(name: 'staff_id')  String? staffId, @JsonKey(name: 'subject')  String? subject, @JsonKey(name: 'enrollment_id')  String? enrollmentId, @JsonKey(name: 'session')  String? session, @JsonKey(name: 'class_standard')  String? classStandard, @JsonKey(name: 'section')  String? section, @JsonKey(name: 'user_type')  String? userType, @JsonKey(name: 'guardian')  GuardianInfo? guardian, @JsonKey(name: 'student')  StudentInfo? student)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserDetails() when $default != null:
return $default(_that.id,_that.name,_that.profileImage,_that.email,_that.isMailVerified,_that.phone,_that.isPhoneVerified,_that.staffId,_that.subject,_that.enrollmentId,_that.session,_that.classStandard,_that.section,_that.userType,_that.guardian,_that.student);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'profile_image')  String? profileImage, @JsonKey(name: 'email')  String? email, @JsonKey(name: 'is_mail_verified')  bool? isMailVerified, @JsonKey(name: 'phone')  String? phone, @JsonKey(name: 'is_phone_verified')  bool? isPhoneVerified, @JsonKey(name: 'staff_id')  String? staffId, @JsonKey(name: 'subject')  String? subject, @JsonKey(name: 'enrollment_id')  String? enrollmentId, @JsonKey(name: 'session')  String? session, @JsonKey(name: 'class_standard')  String? classStandard, @JsonKey(name: 'section')  String? section, @JsonKey(name: 'user_type')  String? userType, @JsonKey(name: 'guardian')  GuardianInfo? guardian, @JsonKey(name: 'student')  StudentInfo? student)  $default,) {final _that = this;
switch (_that) {
case _UserDetails():
return $default(_that.id,_that.name,_that.profileImage,_that.email,_that.isMailVerified,_that.phone,_that.isPhoneVerified,_that.staffId,_that.subject,_that.enrollmentId,_that.session,_that.classStandard,_that.section,_that.userType,_that.guardian,_that.student);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'profile_image')  String? profileImage, @JsonKey(name: 'email')  String? email, @JsonKey(name: 'is_mail_verified')  bool? isMailVerified, @JsonKey(name: 'phone')  String? phone, @JsonKey(name: 'is_phone_verified')  bool? isPhoneVerified, @JsonKey(name: 'staff_id')  String? staffId, @JsonKey(name: 'subject')  String? subject, @JsonKey(name: 'enrollment_id')  String? enrollmentId, @JsonKey(name: 'session')  String? session, @JsonKey(name: 'class_standard')  String? classStandard, @JsonKey(name: 'section')  String? section, @JsonKey(name: 'user_type')  String? userType, @JsonKey(name: 'guardian')  GuardianInfo? guardian, @JsonKey(name: 'student')  StudentInfo? student)?  $default,) {final _that = this;
switch (_that) {
case _UserDetails() when $default != null:
return $default(_that.id,_that.name,_that.profileImage,_that.email,_that.isMailVerified,_that.phone,_that.isPhoneVerified,_that.staffId,_that.subject,_that.enrollmentId,_that.session,_that.classStandard,_that.section,_that.userType,_that.guardian,_that.student);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserDetails implements UserDetails {
  const _UserDetails({@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name, @JsonKey(name: 'profile_image') this.profileImage, @JsonKey(name: 'email') this.email, @JsonKey(name: 'is_mail_verified') this.isMailVerified, @JsonKey(name: 'phone') this.phone, @JsonKey(name: 'is_phone_verified') this.isPhoneVerified, @JsonKey(name: 'staff_id') this.staffId, @JsonKey(name: 'subject') this.subject, @JsonKey(name: 'enrollment_id') this.enrollmentId, @JsonKey(name: 'session') this.session, @JsonKey(name: 'class_standard') this.classStandard, @JsonKey(name: 'section') this.section, @JsonKey(name: 'user_type') this.userType, @JsonKey(name: 'guardian') this.guardian, @JsonKey(name: 'student') this.student});
  factory _UserDetails.fromJson(Map<String, dynamic> json) => _$UserDetailsFromJson(json);

@override@JsonKey(name: 'id') final  String? id;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'profile_image') final  String? profileImage;
@override@JsonKey(name: 'email') final  String? email;
@override@JsonKey(name: 'is_mail_verified') final  bool? isMailVerified;
@override@JsonKey(name: 'phone') final  String? phone;
@override@JsonKey(name: 'is_phone_verified') final  bool? isPhoneVerified;
@override@JsonKey(name: 'staff_id') final  String? staffId;
@override@JsonKey(name: 'subject') final  String? subject;
@override@JsonKey(name: 'enrollment_id') final  String? enrollmentId;
@override@JsonKey(name: 'session') final  String? session;
@override@JsonKey(name: 'class_standard') final  String? classStandard;
@override@JsonKey(name: 'section') final  String? section;
@override@JsonKey(name: 'user_type') final  String? userType;
@override@JsonKey(name: 'guardian') final  GuardianInfo? guardian;
@override@JsonKey(name: 'student') final  StudentInfo? student;

/// Create a copy of UserDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserDetailsCopyWith<_UserDetails> get copyWith => __$UserDetailsCopyWithImpl<_UserDetails>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserDetailsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserDetails&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage)&&(identical(other.email, email) || other.email == email)&&(identical(other.isMailVerified, isMailVerified) || other.isMailVerified == isMailVerified)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.isPhoneVerified, isPhoneVerified) || other.isPhoneVerified == isPhoneVerified)&&(identical(other.staffId, staffId) || other.staffId == staffId)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.enrollmentId, enrollmentId) || other.enrollmentId == enrollmentId)&&(identical(other.session, session) || other.session == session)&&(identical(other.classStandard, classStandard) || other.classStandard == classStandard)&&(identical(other.section, section) || other.section == section)&&(identical(other.userType, userType) || other.userType == userType)&&(identical(other.guardian, guardian) || other.guardian == guardian)&&(identical(other.student, student) || other.student == student));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,profileImage,email,isMailVerified,phone,isPhoneVerified,staffId,subject,enrollmentId,session,classStandard,section,userType,guardian,student);

@override
String toString() {
  return 'UserDetails(id: $id, name: $name, profileImage: $profileImage, email: $email, isMailVerified: $isMailVerified, phone: $phone, isPhoneVerified: $isPhoneVerified, staffId: $staffId, subject: $subject, enrollmentId: $enrollmentId, session: $session, classStandard: $classStandard, section: $section, userType: $userType, guardian: $guardian, student: $student)';
}


}

/// @nodoc
abstract mixin class _$UserDetailsCopyWith<$Res> implements $UserDetailsCopyWith<$Res> {
  factory _$UserDetailsCopyWith(_UserDetails value, $Res Function(_UserDetails) _then) = __$UserDetailsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'profile_image') String? profileImage,@JsonKey(name: 'email') String? email,@JsonKey(name: 'is_mail_verified') bool? isMailVerified,@JsonKey(name: 'phone') String? phone,@JsonKey(name: 'is_phone_verified') bool? isPhoneVerified,@JsonKey(name: 'staff_id') String? staffId,@JsonKey(name: 'subject') String? subject,@JsonKey(name: 'enrollment_id') String? enrollmentId,@JsonKey(name: 'session') String? session,@JsonKey(name: 'class_standard') String? classStandard,@JsonKey(name: 'section') String? section,@JsonKey(name: 'user_type') String? userType,@JsonKey(name: 'guardian') GuardianInfo? guardian,@JsonKey(name: 'student') StudentInfo? student
});


@override $GuardianInfoCopyWith<$Res>? get guardian;@override $StudentInfoCopyWith<$Res>? get student;

}
/// @nodoc
class __$UserDetailsCopyWithImpl<$Res>
    implements _$UserDetailsCopyWith<$Res> {
  __$UserDetailsCopyWithImpl(this._self, this._then);

  final _UserDetails _self;
  final $Res Function(_UserDetails) _then;

/// Create a copy of UserDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? profileImage = freezed,Object? email = freezed,Object? isMailVerified = freezed,Object? phone = freezed,Object? isPhoneVerified = freezed,Object? staffId = freezed,Object? subject = freezed,Object? enrollmentId = freezed,Object? session = freezed,Object? classStandard = freezed,Object? section = freezed,Object? userType = freezed,Object? guardian = freezed,Object? student = freezed,}) {
  return _then(_UserDetails(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,profileImage: freezed == profileImage ? _self.profileImage : profileImage // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,isMailVerified: freezed == isMailVerified ? _self.isMailVerified : isMailVerified // ignore: cast_nullable_to_non_nullable
as bool?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,isPhoneVerified: freezed == isPhoneVerified ? _self.isPhoneVerified : isPhoneVerified // ignore: cast_nullable_to_non_nullable
as bool?,staffId: freezed == staffId ? _self.staffId : staffId // ignore: cast_nullable_to_non_nullable
as String?,subject: freezed == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String?,enrollmentId: freezed == enrollmentId ? _self.enrollmentId : enrollmentId // ignore: cast_nullable_to_non_nullable
as String?,session: freezed == session ? _self.session : session // ignore: cast_nullable_to_non_nullable
as String?,classStandard: freezed == classStandard ? _self.classStandard : classStandard // ignore: cast_nullable_to_non_nullable
as String?,section: freezed == section ? _self.section : section // ignore: cast_nullable_to_non_nullable
as String?,userType: freezed == userType ? _self.userType : userType // ignore: cast_nullable_to_non_nullable
as String?,guardian: freezed == guardian ? _self.guardian : guardian // ignore: cast_nullable_to_non_nullable
as GuardianInfo?,student: freezed == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as StudentInfo?,
  ));
}

/// Create a copy of UserDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GuardianInfoCopyWith<$Res>? get guardian {
    if (_self.guardian == null) {
    return null;
  }

  return $GuardianInfoCopyWith<$Res>(_self.guardian!, (value) {
    return _then(_self.copyWith(guardian: value));
  });
}/// Create a copy of UserDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StudentInfoCopyWith<$Res>? get student {
    if (_self.student == null) {
    return null;
  }

  return $StudentInfoCopyWith<$Res>(_self.student!, (value) {
    return _then(_self.copyWith(student: value));
  });
}
}


/// @nodoc
mixin _$GuardianInfo {

@JsonKey(name: 'name') String? get name;@JsonKey(name: 'profile_image') String? get profileImage;@JsonKey(name: 'email') String? get email;@JsonKey(name: 'phone') String? get phone;
/// Create a copy of GuardianInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GuardianInfoCopyWith<GuardianInfo> get copyWith => _$GuardianInfoCopyWithImpl<GuardianInfo>(this as GuardianInfo, _$identity);

  /// Serializes this GuardianInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GuardianInfo&&(identical(other.name, name) || other.name == name)&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,profileImage,email,phone);

@override
String toString() {
  return 'GuardianInfo(name: $name, profileImage: $profileImage, email: $email, phone: $phone)';
}


}

/// @nodoc
abstract mixin class $GuardianInfoCopyWith<$Res>  {
  factory $GuardianInfoCopyWith(GuardianInfo value, $Res Function(GuardianInfo) _then) = _$GuardianInfoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'name') String? name,@JsonKey(name: 'profile_image') String? profileImage,@JsonKey(name: 'email') String? email,@JsonKey(name: 'phone') String? phone
});




}
/// @nodoc
class _$GuardianInfoCopyWithImpl<$Res>
    implements $GuardianInfoCopyWith<$Res> {
  _$GuardianInfoCopyWithImpl(this._self, this._then);

  final GuardianInfo _self;
  final $Res Function(GuardianInfo) _then;

/// Create a copy of GuardianInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? profileImage = freezed,Object? email = freezed,Object? phone = freezed,}) {
  return _then(GuardianInfo(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,profileImage: freezed == profileImage ? _self.profileImage : profileImage // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [GuardianInfo].
extension GuardianInfoPatterns on GuardianInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GuardianInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GuardianInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GuardianInfo value)  $default,){
final _that = this;
switch (_that) {
case _GuardianInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GuardianInfo value)?  $default,){
final _that = this;
switch (_that) {
case _GuardianInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'name')  String? name, @JsonKey(name: 'profile_image')  String? profileImage, @JsonKey(name: 'email')  String? email, @JsonKey(name: 'phone')  String? phone)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GuardianInfo() when $default != null:
return $default(_that.name,_that.profileImage,_that.email,_that.phone);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'name')  String? name, @JsonKey(name: 'profile_image')  String? profileImage, @JsonKey(name: 'email')  String? email, @JsonKey(name: 'phone')  String? phone)  $default,) {final _that = this;
switch (_that) {
case _GuardianInfo():
return $default(_that.name,_that.profileImage,_that.email,_that.phone);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'name')  String? name, @JsonKey(name: 'profile_image')  String? profileImage, @JsonKey(name: 'email')  String? email, @JsonKey(name: 'phone')  String? phone)?  $default,) {final _that = this;
switch (_that) {
case _GuardianInfo() when $default != null:
return $default(_that.name,_that.profileImage,_that.email,_that.phone);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GuardianInfo implements GuardianInfo {
  const _GuardianInfo({@JsonKey(name: 'name') this.name, @JsonKey(name: 'profile_image') this.profileImage, @JsonKey(name: 'email') this.email, @JsonKey(name: 'phone') this.phone});
  factory _GuardianInfo.fromJson(Map<String, dynamic> json) => _$GuardianInfoFromJson(json);

@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'profile_image') final  String? profileImage;
@override@JsonKey(name: 'email') final  String? email;
@override@JsonKey(name: 'phone') final  String? phone;

/// Create a copy of GuardianInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GuardianInfoCopyWith<_GuardianInfo> get copyWith => __$GuardianInfoCopyWithImpl<_GuardianInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GuardianInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GuardianInfo&&(identical(other.name, name) || other.name == name)&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,profileImage,email,phone);

@override
String toString() {
  return 'GuardianInfo(name: $name, profileImage: $profileImage, email: $email, phone: $phone)';
}


}

/// @nodoc
abstract mixin class _$GuardianInfoCopyWith<$Res> implements $GuardianInfoCopyWith<$Res> {
  factory _$GuardianInfoCopyWith(_GuardianInfo value, $Res Function(_GuardianInfo) _then) = __$GuardianInfoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'name') String? name,@JsonKey(name: 'profile_image') String? profileImage,@JsonKey(name: 'email') String? email,@JsonKey(name: 'phone') String? phone
});




}
/// @nodoc
class __$GuardianInfoCopyWithImpl<$Res>
    implements _$GuardianInfoCopyWith<$Res> {
  __$GuardianInfoCopyWithImpl(this._self, this._then);

  final _GuardianInfo _self;
  final $Res Function(_GuardianInfo) _then;

/// Create a copy of GuardianInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? profileImage = freezed,Object? email = freezed,Object? phone = freezed,}) {
  return _then(_GuardianInfo(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,profileImage: freezed == profileImage ? _self.profileImage : profileImage // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$StudentInfo {

@JsonKey(name: 'enrollment_id') String? get enrollmentId;@JsonKey(name: 'class_standard') String? get classStandard;@JsonKey(name: 'section') String? get section;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'profile_image') String? get profileImage;
/// Create a copy of StudentInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StudentInfoCopyWith<StudentInfo> get copyWith => _$StudentInfoCopyWithImpl<StudentInfo>(this as StudentInfo, _$identity);

  /// Serializes this StudentInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StudentInfo&&(identical(other.enrollmentId, enrollmentId) || other.enrollmentId == enrollmentId)&&(identical(other.classStandard, classStandard) || other.classStandard == classStandard)&&(identical(other.section, section) || other.section == section)&&(identical(other.name, name) || other.name == name)&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,enrollmentId,classStandard,section,name,profileImage);

@override
String toString() {
  return 'StudentInfo(enrollmentId: $enrollmentId, classStandard: $classStandard, section: $section, name: $name, profileImage: $profileImage)';
}


}

/// @nodoc
abstract mixin class $StudentInfoCopyWith<$Res>  {
  factory $StudentInfoCopyWith(StudentInfo value, $Res Function(StudentInfo) _then) = _$StudentInfoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'enrollment_id') String? enrollmentId,@JsonKey(name: 'class_standard') String? classStandard,@JsonKey(name: 'section') String? section,@JsonKey(name: 'name') String? name,@JsonKey(name: 'profile_image') String? profileImage
});




}
/// @nodoc
class _$StudentInfoCopyWithImpl<$Res>
    implements $StudentInfoCopyWith<$Res> {
  _$StudentInfoCopyWithImpl(this._self, this._then);

  final StudentInfo _self;
  final $Res Function(StudentInfo) _then;

/// Create a copy of StudentInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? enrollmentId = freezed,Object? classStandard = freezed,Object? section = freezed,Object? name = freezed,Object? profileImage = freezed,}) {
  return _then(StudentInfo(
enrollmentId: freezed == enrollmentId ? _self.enrollmentId : enrollmentId // ignore: cast_nullable_to_non_nullable
as String?,classStandard: freezed == classStandard ? _self.classStandard : classStandard // ignore: cast_nullable_to_non_nullable
as String?,section: freezed == section ? _self.section : section // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,profileImage: freezed == profileImage ? _self.profileImage : profileImage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [StudentInfo].
extension StudentInfoPatterns on StudentInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StudentInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StudentInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StudentInfo value)  $default,){
final _that = this;
switch (_that) {
case _StudentInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StudentInfo value)?  $default,){
final _that = this;
switch (_that) {
case _StudentInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'enrollment_id')  String? enrollmentId, @JsonKey(name: 'class_standard')  String? classStandard, @JsonKey(name: 'section')  String? section, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'profile_image')  String? profileImage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StudentInfo() when $default != null:
return $default(_that.enrollmentId,_that.classStandard,_that.section,_that.name,_that.profileImage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'enrollment_id')  String? enrollmentId, @JsonKey(name: 'class_standard')  String? classStandard, @JsonKey(name: 'section')  String? section, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'profile_image')  String? profileImage)  $default,) {final _that = this;
switch (_that) {
case _StudentInfo():
return $default(_that.enrollmentId,_that.classStandard,_that.section,_that.name,_that.profileImage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'enrollment_id')  String? enrollmentId, @JsonKey(name: 'class_standard')  String? classStandard, @JsonKey(name: 'section')  String? section, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'profile_image')  String? profileImage)?  $default,) {final _that = this;
switch (_that) {
case _StudentInfo() when $default != null:
return $default(_that.enrollmentId,_that.classStandard,_that.section,_that.name,_that.profileImage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StudentInfo implements StudentInfo {
  const _StudentInfo({@JsonKey(name: 'enrollment_id') this.enrollmentId, @JsonKey(name: 'class_standard') this.classStandard, @JsonKey(name: 'section') this.section, @JsonKey(name: 'name') this.name, @JsonKey(name: 'profile_image') this.profileImage});
  factory _StudentInfo.fromJson(Map<String, dynamic> json) => _$StudentInfoFromJson(json);

@override@JsonKey(name: 'enrollment_id') final  String? enrollmentId;
@override@JsonKey(name: 'class_standard') final  String? classStandard;
@override@JsonKey(name: 'section') final  String? section;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'profile_image') final  String? profileImage;

/// Create a copy of StudentInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StudentInfoCopyWith<_StudentInfo> get copyWith => __$StudentInfoCopyWithImpl<_StudentInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StudentInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StudentInfo&&(identical(other.enrollmentId, enrollmentId) || other.enrollmentId == enrollmentId)&&(identical(other.classStandard, classStandard) || other.classStandard == classStandard)&&(identical(other.section, section) || other.section == section)&&(identical(other.name, name) || other.name == name)&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,enrollmentId,classStandard,section,name,profileImage);

@override
String toString() {
  return 'StudentInfo(enrollmentId: $enrollmentId, classStandard: $classStandard, section: $section, name: $name, profileImage: $profileImage)';
}


}

/// @nodoc
abstract mixin class _$StudentInfoCopyWith<$Res> implements $StudentInfoCopyWith<$Res> {
  factory _$StudentInfoCopyWith(_StudentInfo value, $Res Function(_StudentInfo) _then) = __$StudentInfoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'enrollment_id') String? enrollmentId,@JsonKey(name: 'class_standard') String? classStandard,@JsonKey(name: 'section') String? section,@JsonKey(name: 'name') String? name,@JsonKey(name: 'profile_image') String? profileImage
});




}
/// @nodoc
class __$StudentInfoCopyWithImpl<$Res>
    implements _$StudentInfoCopyWith<$Res> {
  __$StudentInfoCopyWithImpl(this._self, this._then);

  final _StudentInfo _self;
  final $Res Function(_StudentInfo) _then;

/// Create a copy of StudentInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? enrollmentId = freezed,Object? classStandard = freezed,Object? section = freezed,Object? name = freezed,Object? profileImage = freezed,}) {
  return _then(_StudentInfo(
enrollmentId: freezed == enrollmentId ? _self.enrollmentId : enrollmentId // ignore: cast_nullable_to_non_nullable
as String?,classStandard: freezed == classStandard ? _self.classStandard : classStandard // ignore: cast_nullable_to_non_nullable
as String?,section: freezed == section ? _self.section : section // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,profileImage: freezed == profileImage ? _self.profileImage : profileImage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$OtpResquest {

@JsonKey(name: 'name') String? get name;
/// Create a copy of OtpResquest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OtpResquestCopyWith<OtpResquest> get copyWith => _$OtpResquestCopyWithImpl<OtpResquest>(this as OtpResquest, _$identity);

  /// Serializes this OtpResquest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OtpResquest&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'OtpResquest(name: $name)';
}


}

/// @nodoc
abstract mixin class $OtpResquestCopyWith<$Res>  {
  factory $OtpResquestCopyWith(OtpResquest value, $Res Function(OtpResquest) _then) = _$OtpResquestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'name') String? name
});




}
/// @nodoc
class _$OtpResquestCopyWithImpl<$Res>
    implements $OtpResquestCopyWith<$Res> {
  _$OtpResquestCopyWithImpl(this._self, this._then);

  final OtpResquest _self;
  final $Res Function(OtpResquest) _then;

/// Create a copy of OtpResquest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,}) {
  return _then(OtpResquest(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [OtpResquest].
extension OtpResquestPatterns on OtpResquest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OtpResquest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OtpResquest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OtpResquest value)  $default,){
final _that = this;
switch (_that) {
case _OtpResquest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OtpResquest value)?  $default,){
final _that = this;
switch (_that) {
case _OtpResquest() when $default != null:
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
case _OtpResquest() when $default != null:
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
case _OtpResquest():
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
case _OtpResquest() when $default != null:
return $default(_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OtpResquest implements OtpResquest {
  const _OtpResquest({@JsonKey(name: 'name') this.name});
  factory _OtpResquest.fromJson(Map<String, dynamic> json) => _$OtpResquestFromJson(json);

@override@JsonKey(name: 'name') final  String? name;

/// Create a copy of OtpResquest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OtpResquestCopyWith<_OtpResquest> get copyWith => __$OtpResquestCopyWithImpl<_OtpResquest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OtpResquestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OtpResquest&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'OtpResquest(name: $name)';
}


}

/// @nodoc
abstract mixin class _$OtpResquestCopyWith<$Res> implements $OtpResquestCopyWith<$Res> {
  factory _$OtpResquestCopyWith(_OtpResquest value, $Res Function(_OtpResquest) _then) = __$OtpResquestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'name') String? name
});




}
/// @nodoc
class __$OtpResquestCopyWithImpl<$Res>
    implements _$OtpResquestCopyWith<$Res> {
  __$OtpResquestCopyWithImpl(this._self, this._then);

  final _OtpResquest _self;
  final $Res Function(_OtpResquest) _then;

/// Create a copy of OtpResquest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,}) {
  return _then(_OtpResquest(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$OtpVerifyResquest {

@JsonKey(name: 'name') String? get name;@JsonKey(name: 'otp') String? get otp;
/// Create a copy of OtpVerifyResquest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OtpVerifyResquestCopyWith<OtpVerifyResquest> get copyWith => _$OtpVerifyResquestCopyWithImpl<OtpVerifyResquest>(this as OtpVerifyResquest, _$identity);

  /// Serializes this OtpVerifyResquest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OtpVerifyResquest&&(identical(other.name, name) || other.name == name)&&(identical(other.otp, otp) || other.otp == otp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,otp);

@override
String toString() {
  return 'OtpVerifyResquest(name: $name, otp: $otp)';
}


}

/// @nodoc
abstract mixin class $OtpVerifyResquestCopyWith<$Res>  {
  factory $OtpVerifyResquestCopyWith(OtpVerifyResquest value, $Res Function(OtpVerifyResquest) _then) = _$OtpVerifyResquestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'name') String? name,@JsonKey(name: 'otp') String? otp
});




}
/// @nodoc
class _$OtpVerifyResquestCopyWithImpl<$Res>
    implements $OtpVerifyResquestCopyWith<$Res> {
  _$OtpVerifyResquestCopyWithImpl(this._self, this._then);

  final OtpVerifyResquest _self;
  final $Res Function(OtpVerifyResquest) _then;

/// Create a copy of OtpVerifyResquest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? otp = freezed,}) {
  return _then(OtpVerifyResquest(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,otp: freezed == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [OtpVerifyResquest].
extension OtpVerifyResquestPatterns on OtpVerifyResquest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OtpVerifyResquest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OtpVerifyResquest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OtpVerifyResquest value)  $default,){
final _that = this;
switch (_that) {
case _OtpVerifyResquest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OtpVerifyResquest value)?  $default,){
final _that = this;
switch (_that) {
case _OtpVerifyResquest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'name')  String? name, @JsonKey(name: 'otp')  String? otp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OtpVerifyResquest() when $default != null:
return $default(_that.name,_that.otp);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'name')  String? name, @JsonKey(name: 'otp')  String? otp)  $default,) {final _that = this;
switch (_that) {
case _OtpVerifyResquest():
return $default(_that.name,_that.otp);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'name')  String? name, @JsonKey(name: 'otp')  String? otp)?  $default,) {final _that = this;
switch (_that) {
case _OtpVerifyResquest() when $default != null:
return $default(_that.name,_that.otp);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OtpVerifyResquest implements OtpVerifyResquest {
  const _OtpVerifyResquest({@JsonKey(name: 'name') this.name, @JsonKey(name: 'otp') this.otp});
  factory _OtpVerifyResquest.fromJson(Map<String, dynamic> json) => _$OtpVerifyResquestFromJson(json);

@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'otp') final  String? otp;

/// Create a copy of OtpVerifyResquest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OtpVerifyResquestCopyWith<_OtpVerifyResquest> get copyWith => __$OtpVerifyResquestCopyWithImpl<_OtpVerifyResquest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OtpVerifyResquestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OtpVerifyResquest&&(identical(other.name, name) || other.name == name)&&(identical(other.otp, otp) || other.otp == otp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,otp);

@override
String toString() {
  return 'OtpVerifyResquest(name: $name, otp: $otp)';
}


}

/// @nodoc
abstract mixin class _$OtpVerifyResquestCopyWith<$Res> implements $OtpVerifyResquestCopyWith<$Res> {
  factory _$OtpVerifyResquestCopyWith(_OtpVerifyResquest value, $Res Function(_OtpVerifyResquest) _then) = __$OtpVerifyResquestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'name') String? name,@JsonKey(name: 'otp') String? otp
});




}
/// @nodoc
class __$OtpVerifyResquestCopyWithImpl<$Res>
    implements _$OtpVerifyResquestCopyWith<$Res> {
  __$OtpVerifyResquestCopyWithImpl(this._self, this._then);

  final _OtpVerifyResquest _self;
  final $Res Function(_OtpVerifyResquest) _then;

/// Create a copy of OtpVerifyResquest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? otp = freezed,}) {
  return _then(_OtpVerifyResquest(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,otp: freezed == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$StudentSwitchRequest {

@JsonKey(name: 'student_id') String? get studentId;
/// Create a copy of StudentSwitchRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StudentSwitchRequestCopyWith<StudentSwitchRequest> get copyWith => _$StudentSwitchRequestCopyWithImpl<StudentSwitchRequest>(this as StudentSwitchRequest, _$identity);

  /// Serializes this StudentSwitchRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StudentSwitchRequest&&(identical(other.studentId, studentId) || other.studentId == studentId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,studentId);

@override
String toString() {
  return 'StudentSwitchRequest(studentId: $studentId)';
}


}

/// @nodoc
abstract mixin class $StudentSwitchRequestCopyWith<$Res>  {
  factory $StudentSwitchRequestCopyWith(StudentSwitchRequest value, $Res Function(StudentSwitchRequest) _then) = _$StudentSwitchRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'student_id') String? studentId
});




}
/// @nodoc
class _$StudentSwitchRequestCopyWithImpl<$Res>
    implements $StudentSwitchRequestCopyWith<$Res> {
  _$StudentSwitchRequestCopyWithImpl(this._self, this._then);

  final StudentSwitchRequest _self;
  final $Res Function(StudentSwitchRequest) _then;

/// Create a copy of StudentSwitchRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? studentId = freezed,}) {
  return _then(StudentSwitchRequest(
studentId: freezed == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [StudentSwitchRequest].
extension StudentSwitchRequestPatterns on StudentSwitchRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StudentSwitchRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StudentSwitchRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StudentSwitchRequest value)  $default,){
final _that = this;
switch (_that) {
case _StudentSwitchRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StudentSwitchRequest value)?  $default,){
final _that = this;
switch (_that) {
case _StudentSwitchRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_id')  String? studentId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StudentSwitchRequest() when $default != null:
return $default(_that.studentId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_id')  String? studentId)  $default,) {final _that = this;
switch (_that) {
case _StudentSwitchRequest():
return $default(_that.studentId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'student_id')  String? studentId)?  $default,) {final _that = this;
switch (_that) {
case _StudentSwitchRequest() when $default != null:
return $default(_that.studentId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StudentSwitchRequest implements StudentSwitchRequest {
  const _StudentSwitchRequest({@JsonKey(name: 'student_id') this.studentId});
  factory _StudentSwitchRequest.fromJson(Map<String, dynamic> json) => _$StudentSwitchRequestFromJson(json);

@override@JsonKey(name: 'student_id') final  String? studentId;

/// Create a copy of StudentSwitchRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StudentSwitchRequestCopyWith<_StudentSwitchRequest> get copyWith => __$StudentSwitchRequestCopyWithImpl<_StudentSwitchRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StudentSwitchRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StudentSwitchRequest&&(identical(other.studentId, studentId) || other.studentId == studentId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,studentId);

@override
String toString() {
  return 'StudentSwitchRequest(studentId: $studentId)';
}


}

/// @nodoc
abstract mixin class _$StudentSwitchRequestCopyWith<$Res> implements $StudentSwitchRequestCopyWith<$Res> {
  factory _$StudentSwitchRequestCopyWith(_StudentSwitchRequest value, $Res Function(_StudentSwitchRequest) _then) = __$StudentSwitchRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'student_id') String? studentId
});




}
/// @nodoc
class __$StudentSwitchRequestCopyWithImpl<$Res>
    implements _$StudentSwitchRequestCopyWith<$Res> {
  __$StudentSwitchRequestCopyWithImpl(this._self, this._then);

  final _StudentSwitchRequest _self;
  final $Res Function(_StudentSwitchRequest) _then;

/// Create a copy of StudentSwitchRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? studentId = freezed,}) {
  return _then(_StudentSwitchRequest(
studentId: freezed == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ChangePasswordRequest {

@JsonKey(name: 'password') String? get password;@JsonKey(name: 'newPassword') String? get newPassword;@JsonKey(name: 'confirmPassword') String? get confirmPassword;
/// Create a copy of ChangePasswordRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangePasswordRequestCopyWith<ChangePasswordRequest> get copyWith => _$ChangePasswordRequestCopyWithImpl<ChangePasswordRequest>(this as ChangePasswordRequest, _$identity);

  /// Serializes this ChangePasswordRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangePasswordRequest&&(identical(other.password, password) || other.password == password)&&(identical(other.newPassword, newPassword) || other.newPassword == newPassword)&&(identical(other.confirmPassword, confirmPassword) || other.confirmPassword == confirmPassword));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,password,newPassword,confirmPassword);

@override
String toString() {
  return 'ChangePasswordRequest(password: $password, newPassword: $newPassword, confirmPassword: $confirmPassword)';
}


}

/// @nodoc
abstract mixin class $ChangePasswordRequestCopyWith<$Res>  {
  factory $ChangePasswordRequestCopyWith(ChangePasswordRequest value, $Res Function(ChangePasswordRequest) _then) = _$ChangePasswordRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'password') String? password,@JsonKey(name: 'newPassword') String? newPassword,@JsonKey(name: 'confirmPassword') String? confirmPassword
});




}
/// @nodoc
class _$ChangePasswordRequestCopyWithImpl<$Res>
    implements $ChangePasswordRequestCopyWith<$Res> {
  _$ChangePasswordRequestCopyWithImpl(this._self, this._then);

  final ChangePasswordRequest _self;
  final $Res Function(ChangePasswordRequest) _then;

/// Create a copy of ChangePasswordRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? password = freezed,Object? newPassword = freezed,Object? confirmPassword = freezed,}) {
  return _then(ChangePasswordRequest(
password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,newPassword: freezed == newPassword ? _self.newPassword : newPassword // ignore: cast_nullable_to_non_nullable
as String?,confirmPassword: freezed == confirmPassword ? _self.confirmPassword : confirmPassword // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ChangePasswordRequest].
extension ChangePasswordRequestPatterns on ChangePasswordRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChangePasswordRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChangePasswordRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChangePasswordRequest value)  $default,){
final _that = this;
switch (_that) {
case _ChangePasswordRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChangePasswordRequest value)?  $default,){
final _that = this;
switch (_that) {
case _ChangePasswordRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'password')  String? password, @JsonKey(name: 'newPassword')  String? newPassword, @JsonKey(name: 'confirmPassword')  String? confirmPassword)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChangePasswordRequest() when $default != null:
return $default(_that.password,_that.newPassword,_that.confirmPassword);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'password')  String? password, @JsonKey(name: 'newPassword')  String? newPassword, @JsonKey(name: 'confirmPassword')  String? confirmPassword)  $default,) {final _that = this;
switch (_that) {
case _ChangePasswordRequest():
return $default(_that.password,_that.newPassword,_that.confirmPassword);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'password')  String? password, @JsonKey(name: 'newPassword')  String? newPassword, @JsonKey(name: 'confirmPassword')  String? confirmPassword)?  $default,) {final _that = this;
switch (_that) {
case _ChangePasswordRequest() when $default != null:
return $default(_that.password,_that.newPassword,_that.confirmPassword);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChangePasswordRequest implements ChangePasswordRequest {
  const _ChangePasswordRequest({@JsonKey(name: 'password') this.password, @JsonKey(name: 'newPassword') this.newPassword, @JsonKey(name: 'confirmPassword') this.confirmPassword});
  factory _ChangePasswordRequest.fromJson(Map<String, dynamic> json) => _$ChangePasswordRequestFromJson(json);

@override@JsonKey(name: 'password') final  String? password;
@override@JsonKey(name: 'newPassword') final  String? newPassword;
@override@JsonKey(name: 'confirmPassword') final  String? confirmPassword;

/// Create a copy of ChangePasswordRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChangePasswordRequestCopyWith<_ChangePasswordRequest> get copyWith => __$ChangePasswordRequestCopyWithImpl<_ChangePasswordRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChangePasswordRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChangePasswordRequest&&(identical(other.password, password) || other.password == password)&&(identical(other.newPassword, newPassword) || other.newPassword == newPassword)&&(identical(other.confirmPassword, confirmPassword) || other.confirmPassword == confirmPassword));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,password,newPassword,confirmPassword);

@override
String toString() {
  return 'ChangePasswordRequest(password: $password, newPassword: $newPassword, confirmPassword: $confirmPassword)';
}


}

/// @nodoc
abstract mixin class _$ChangePasswordRequestCopyWith<$Res> implements $ChangePasswordRequestCopyWith<$Res> {
  factory _$ChangePasswordRequestCopyWith(_ChangePasswordRequest value, $Res Function(_ChangePasswordRequest) _then) = __$ChangePasswordRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'password') String? password,@JsonKey(name: 'newPassword') String? newPassword,@JsonKey(name: 'confirmPassword') String? confirmPassword
});




}
/// @nodoc
class __$ChangePasswordRequestCopyWithImpl<$Res>
    implements _$ChangePasswordRequestCopyWith<$Res> {
  __$ChangePasswordRequestCopyWithImpl(this._self, this._then);

  final _ChangePasswordRequest _self;
  final $Res Function(_ChangePasswordRequest) _then;

/// Create a copy of ChangePasswordRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? password = freezed,Object? newPassword = freezed,Object? confirmPassword = freezed,}) {
  return _then(_ChangePasswordRequest(
password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,newPassword: freezed == newPassword ? _self.newPassword : newPassword // ignore: cast_nullable_to_non_nullable
as String?,confirmPassword: freezed == confirmPassword ? _self.confirmPassword : confirmPassword // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$BiometricRequest {

@JsonKey(name: 'device_id') String? get deviceId;@JsonKey(name: 'device_name') String? get deviceName;@JsonKey(name: 'platform') String? get platform;@JsonKey(name: 'device_token') String? get deviceToken;@JsonKey(name: 'biometric_type') String? get biometricType;@JsonKey(name: 'password') String? get password;
/// Create a copy of BiometricRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BiometricRequestCopyWith<BiometricRequest> get copyWith => _$BiometricRequestCopyWithImpl<BiometricRequest>(this as BiometricRequest, _$identity);

  /// Serializes this BiometricRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BiometricRequest&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.deviceName, deviceName) || other.deviceName == deviceName)&&(identical(other.platform, platform) || other.platform == platform)&&(identical(other.deviceToken, deviceToken) || other.deviceToken == deviceToken)&&(identical(other.biometricType, biometricType) || other.biometricType == biometricType)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,deviceId,deviceName,platform,deviceToken,biometricType,password);

@override
String toString() {
  return 'BiometricRequest(deviceId: $deviceId, deviceName: $deviceName, platform: $platform, deviceToken: $deviceToken, biometricType: $biometricType, password: $password)';
}


}

/// @nodoc
abstract mixin class $BiometricRequestCopyWith<$Res>  {
  factory $BiometricRequestCopyWith(BiometricRequest value, $Res Function(BiometricRequest) _then) = _$BiometricRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'device_id') String? deviceId,@JsonKey(name: 'device_name') String? deviceName,@JsonKey(name: 'platform') String? platform,@JsonKey(name: 'device_token') String? deviceToken,@JsonKey(name: 'biometric_type') String? biometricType,@JsonKey(name: 'password') String? password
});




}
/// @nodoc
class _$BiometricRequestCopyWithImpl<$Res>
    implements $BiometricRequestCopyWith<$Res> {
  _$BiometricRequestCopyWithImpl(this._self, this._then);

  final BiometricRequest _self;
  final $Res Function(BiometricRequest) _then;

/// Create a copy of BiometricRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? deviceId = freezed,Object? deviceName = freezed,Object? platform = freezed,Object? deviceToken = freezed,Object? biometricType = freezed,Object? password = freezed,}) {
  return _then(BiometricRequest(
deviceId: freezed == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String?,deviceName: freezed == deviceName ? _self.deviceName : deviceName // ignore: cast_nullable_to_non_nullable
as String?,platform: freezed == platform ? _self.platform : platform // ignore: cast_nullable_to_non_nullable
as String?,deviceToken: freezed == deviceToken ? _self.deviceToken : deviceToken // ignore: cast_nullable_to_non_nullable
as String?,biometricType: freezed == biometricType ? _self.biometricType : biometricType // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [BiometricRequest].
extension BiometricRequestPatterns on BiometricRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BiometricRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BiometricRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BiometricRequest value)  $default,){
final _that = this;
switch (_that) {
case _BiometricRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BiometricRequest value)?  $default,){
final _that = this;
switch (_that) {
case _BiometricRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'device_id')  String? deviceId, @JsonKey(name: 'device_name')  String? deviceName, @JsonKey(name: 'platform')  String? platform, @JsonKey(name: 'device_token')  String? deviceToken, @JsonKey(name: 'biometric_type')  String? biometricType, @JsonKey(name: 'password')  String? password)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BiometricRequest() when $default != null:
return $default(_that.deviceId,_that.deviceName,_that.platform,_that.deviceToken,_that.biometricType,_that.password);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'device_id')  String? deviceId, @JsonKey(name: 'device_name')  String? deviceName, @JsonKey(name: 'platform')  String? platform, @JsonKey(name: 'device_token')  String? deviceToken, @JsonKey(name: 'biometric_type')  String? biometricType, @JsonKey(name: 'password')  String? password)  $default,) {final _that = this;
switch (_that) {
case _BiometricRequest():
return $default(_that.deviceId,_that.deviceName,_that.platform,_that.deviceToken,_that.biometricType,_that.password);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'device_id')  String? deviceId, @JsonKey(name: 'device_name')  String? deviceName, @JsonKey(name: 'platform')  String? platform, @JsonKey(name: 'device_token')  String? deviceToken, @JsonKey(name: 'biometric_type')  String? biometricType, @JsonKey(name: 'password')  String? password)?  $default,) {final _that = this;
switch (_that) {
case _BiometricRequest() when $default != null:
return $default(_that.deviceId,_that.deviceName,_that.platform,_that.deviceToken,_that.biometricType,_that.password);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _BiometricRequest implements BiometricRequest {
  const _BiometricRequest({@JsonKey(name: 'device_id') this.deviceId, @JsonKey(name: 'device_name') this.deviceName, @JsonKey(name: 'platform') this.platform, @JsonKey(name: 'device_token') this.deviceToken, @JsonKey(name: 'biometric_type') this.biometricType, @JsonKey(name: 'password') this.password});
  factory _BiometricRequest.fromJson(Map<String, dynamic> json) => _$BiometricRequestFromJson(json);

@override@JsonKey(name: 'device_id') final  String? deviceId;
@override@JsonKey(name: 'device_name') final  String? deviceName;
@override@JsonKey(name: 'platform') final  String? platform;
@override@JsonKey(name: 'device_token') final  String? deviceToken;
@override@JsonKey(name: 'biometric_type') final  String? biometricType;
@override@JsonKey(name: 'password') final  String? password;

/// Create a copy of BiometricRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BiometricRequestCopyWith<_BiometricRequest> get copyWith => __$BiometricRequestCopyWithImpl<_BiometricRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BiometricRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BiometricRequest&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.deviceName, deviceName) || other.deviceName == deviceName)&&(identical(other.platform, platform) || other.platform == platform)&&(identical(other.deviceToken, deviceToken) || other.deviceToken == deviceToken)&&(identical(other.biometricType, biometricType) || other.biometricType == biometricType)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,deviceId,deviceName,platform,deviceToken,biometricType,password);

@override
String toString() {
  return 'BiometricRequest(deviceId: $deviceId, deviceName: $deviceName, platform: $platform, deviceToken: $deviceToken, biometricType: $biometricType, password: $password)';
}


}

/// @nodoc
abstract mixin class _$BiometricRequestCopyWith<$Res> implements $BiometricRequestCopyWith<$Res> {
  factory _$BiometricRequestCopyWith(_BiometricRequest value, $Res Function(_BiometricRequest) _then) = __$BiometricRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'device_id') String? deviceId,@JsonKey(name: 'device_name') String? deviceName,@JsonKey(name: 'platform') String? platform,@JsonKey(name: 'device_token') String? deviceToken,@JsonKey(name: 'biometric_type') String? biometricType,@JsonKey(name: 'password') String? password
});




}
/// @nodoc
class __$BiometricRequestCopyWithImpl<$Res>
    implements _$BiometricRequestCopyWith<$Res> {
  __$BiometricRequestCopyWithImpl(this._self, this._then);

  final _BiometricRequest _self;
  final $Res Function(_BiometricRequest) _then;

/// Create a copy of BiometricRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? deviceId = freezed,Object? deviceName = freezed,Object? platform = freezed,Object? deviceToken = freezed,Object? biometricType = freezed,Object? password = freezed,}) {
  return _then(_BiometricRequest(
deviceId: freezed == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String?,deviceName: freezed == deviceName ? _self.deviceName : deviceName // ignore: cast_nullable_to_non_nullable
as String?,platform: freezed == platform ? _self.platform : platform // ignore: cast_nullable_to_non_nullable
as String?,deviceToken: freezed == deviceToken ? _self.deviceToken : deviceToken // ignore: cast_nullable_to_non_nullable
as String?,biometricType: freezed == biometricType ? _self.biometricType : biometricType // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
