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
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
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
  @JsonKey(name: 'staff_id')
  String? get staffId => throw _privateConstructorUsedError;
  @JsonKey(name: 'subject')
  String? get subject => throw _privateConstructorUsedError;
  @JsonKey(name: 'enrollment_id')
  String? get enrollmentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'session')
  String? get session => throw _privateConstructorUsedError;
  @JsonKey(name: 'class_standard')
  String? get classStandard => throw _privateConstructorUsedError;
  @JsonKey(name: 'section')
  String? get section => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_type')
  String? get userType => throw _privateConstructorUsedError;
  @JsonKey(name: 'guardian')
  GuardianInfo? get guardian => throw _privateConstructorUsedError;
  @JsonKey(name: 'student')
  StudentInfo? get student => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'id') String? id,
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
      @JsonKey(name: 'student') StudentInfo? student});

  $GuardianInfoCopyWith<$Res>? get guardian;
  $StudentInfoCopyWith<$Res>? get student;
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
    Object? id = freezed,
    Object? name = freezed,
    Object? profileImage = freezed,
    Object? email = freezed,
    Object? isMailVerified = freezed,
    Object? phone = freezed,
    Object? isPhoneVerified = freezed,
    Object? staffId = freezed,
    Object? subject = freezed,
    Object? enrollmentId = freezed,
    Object? session = freezed,
    Object? classStandard = freezed,
    Object? section = freezed,
    Object? userType = freezed,
    Object? guardian = freezed,
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
      staffId: freezed == staffId
          ? _value.staffId
          : staffId // ignore: cast_nullable_to_non_nullable
              as String?,
      subject: freezed == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String?,
      enrollmentId: freezed == enrollmentId
          ? _value.enrollmentId
          : enrollmentId // ignore: cast_nullable_to_non_nullable
              as String?,
      session: freezed == session
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as String?,
      classStandard: freezed == classStandard
          ? _value.classStandard
          : classStandard // ignore: cast_nullable_to_non_nullable
              as String?,
      section: freezed == section
          ? _value.section
          : section // ignore: cast_nullable_to_non_nullable
              as String?,
      userType: freezed == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as String?,
      guardian: freezed == guardian
          ? _value.guardian
          : guardian // ignore: cast_nullable_to_non_nullable
              as GuardianInfo?,
      student: freezed == student
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as StudentInfo?,
    ) as $Val);
  }

  /// Create a copy of UserDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GuardianInfoCopyWith<$Res>? get guardian {
    if (_value.guardian == null) {
      return null;
    }

    return $GuardianInfoCopyWith<$Res>(_value.guardian!, (value) {
      return _then(_value.copyWith(guardian: value) as $Val);
    });
  }

  /// Create a copy of UserDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StudentInfoCopyWith<$Res>? get student {
    if (_value.student == null) {
      return null;
    }

    return $StudentInfoCopyWith<$Res>(_value.student!, (value) {
      return _then(_value.copyWith(student: value) as $Val);
    });
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
      {@JsonKey(name: 'id') String? id,
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
      @JsonKey(name: 'student') StudentInfo? student});

  @override
  $GuardianInfoCopyWith<$Res>? get guardian;
  @override
  $StudentInfoCopyWith<$Res>? get student;
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
    Object? id = freezed,
    Object? name = freezed,
    Object? profileImage = freezed,
    Object? email = freezed,
    Object? isMailVerified = freezed,
    Object? phone = freezed,
    Object? isPhoneVerified = freezed,
    Object? staffId = freezed,
    Object? subject = freezed,
    Object? enrollmentId = freezed,
    Object? session = freezed,
    Object? classStandard = freezed,
    Object? section = freezed,
    Object? userType = freezed,
    Object? guardian = freezed,
    Object? student = freezed,
  }) {
    return _then(_$UserDetailsImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
      staffId: freezed == staffId
          ? _value.staffId
          : staffId // ignore: cast_nullable_to_non_nullable
              as String?,
      subject: freezed == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String?,
      enrollmentId: freezed == enrollmentId
          ? _value.enrollmentId
          : enrollmentId // ignore: cast_nullable_to_non_nullable
              as String?,
      session: freezed == session
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as String?,
      classStandard: freezed == classStandard
          ? _value.classStandard
          : classStandard // ignore: cast_nullable_to_non_nullable
              as String?,
      section: freezed == section
          ? _value.section
          : section // ignore: cast_nullable_to_non_nullable
              as String?,
      userType: freezed == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as String?,
      guardian: freezed == guardian
          ? _value.guardian
          : guardian // ignore: cast_nullable_to_non_nullable
              as GuardianInfo?,
      student: freezed == student
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as StudentInfo?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDetailsImpl implements _UserDetails {
  const _$UserDetailsImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'profile_image') this.profileImage,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'is_mail_verified') this.isMailVerified,
      @JsonKey(name: 'phone') this.phone,
      @JsonKey(name: 'is_phone_verified') this.isPhoneVerified,
      @JsonKey(name: 'staff_id') this.staffId,
      @JsonKey(name: 'subject') this.subject,
      @JsonKey(name: 'enrollment_id') this.enrollmentId,
      @JsonKey(name: 'session') this.session,
      @JsonKey(name: 'class_standard') this.classStandard,
      @JsonKey(name: 'section') this.section,
      @JsonKey(name: 'user_type') this.userType,
      @JsonKey(name: 'guardian') this.guardian,
      @JsonKey(name: 'student') this.student});

  factory _$UserDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDetailsImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
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
  @JsonKey(name: 'staff_id')
  final String? staffId;
  @override
  @JsonKey(name: 'subject')
  final String? subject;
  @override
  @JsonKey(name: 'enrollment_id')
  final String? enrollmentId;
  @override
  @JsonKey(name: 'session')
  final String? session;
  @override
  @JsonKey(name: 'class_standard')
  final String? classStandard;
  @override
  @JsonKey(name: 'section')
  final String? section;
  @override
  @JsonKey(name: 'user_type')
  final String? userType;
  @override
  @JsonKey(name: 'guardian')
  final GuardianInfo? guardian;
  @override
  @JsonKey(name: 'student')
  final StudentInfo? student;

  @override
  String toString() {
    return 'UserDetails(id: $id, name: $name, profileImage: $profileImage, email: $email, isMailVerified: $isMailVerified, phone: $phone, isPhoneVerified: $isPhoneVerified, staffId: $staffId, subject: $subject, enrollmentId: $enrollmentId, session: $session, classStandard: $classStandard, section: $section, userType: $userType, guardian: $guardian, student: $student)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDetailsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.isMailVerified, isMailVerified) ||
                other.isMailVerified == isMailVerified) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.isPhoneVerified, isPhoneVerified) ||
                other.isPhoneVerified == isPhoneVerified) &&
            (identical(other.staffId, staffId) || other.staffId == staffId) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.enrollmentId, enrollmentId) ||
                other.enrollmentId == enrollmentId) &&
            (identical(other.session, session) || other.session == session) &&
            (identical(other.classStandard, classStandard) ||
                other.classStandard == classStandard) &&
            (identical(other.section, section) || other.section == section) &&
            (identical(other.userType, userType) ||
                other.userType == userType) &&
            (identical(other.guardian, guardian) ||
                other.guardian == guardian) &&
            (identical(other.student, student) || other.student == student));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      profileImage,
      email,
      isMailVerified,
      phone,
      isPhoneVerified,
      staffId,
      subject,
      enrollmentId,
      session,
      classStandard,
      section,
      userType,
      guardian,
      student);

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
          {@JsonKey(name: 'id') final String? id,
          @JsonKey(name: 'name') final String? name,
          @JsonKey(name: 'profile_image') final String? profileImage,
          @JsonKey(name: 'email') final String? email,
          @JsonKey(name: 'is_mail_verified') final bool? isMailVerified,
          @JsonKey(name: 'phone') final String? phone,
          @JsonKey(name: 'is_phone_verified') final bool? isPhoneVerified,
          @JsonKey(name: 'staff_id') final String? staffId,
          @JsonKey(name: 'subject') final String? subject,
          @JsonKey(name: 'enrollment_id') final String? enrollmentId,
          @JsonKey(name: 'session') final String? session,
          @JsonKey(name: 'class_standard') final String? classStandard,
          @JsonKey(name: 'section') final String? section,
          @JsonKey(name: 'user_type') final String? userType,
          @JsonKey(name: 'guardian') final GuardianInfo? guardian,
          @JsonKey(name: 'student') final StudentInfo? student}) =
      _$UserDetailsImpl;

  factory _UserDetails.fromJson(Map<String, dynamic> json) =
      _$UserDetailsImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
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
  @JsonKey(name: 'staff_id')
  String? get staffId;
  @override
  @JsonKey(name: 'subject')
  String? get subject;
  @override
  @JsonKey(name: 'enrollment_id')
  String? get enrollmentId;
  @override
  @JsonKey(name: 'session')
  String? get session;
  @override
  @JsonKey(name: 'class_standard')
  String? get classStandard;
  @override
  @JsonKey(name: 'section')
  String? get section;
  @override
  @JsonKey(name: 'user_type')
  String? get userType;
  @override
  @JsonKey(name: 'guardian')
  GuardianInfo? get guardian;
  @override
  @JsonKey(name: 'student')
  StudentInfo? get student;

  /// Create a copy of UserDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserDetailsImplCopyWith<_$UserDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GuardianInfo _$GuardianInfoFromJson(Map<String, dynamic> json) {
  return _GuardianInfo.fromJson(json);
}

/// @nodoc
mixin _$GuardianInfo {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_image')
  String? get profileImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone')
  String? get phone => throw _privateConstructorUsedError;

  /// Serializes this GuardianInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GuardianInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GuardianInfoCopyWith<GuardianInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuardianInfoCopyWith<$Res> {
  factory $GuardianInfoCopyWith(
          GuardianInfo value, $Res Function(GuardianInfo) then) =
      _$GuardianInfoCopyWithImpl<$Res, GuardianInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'profile_image') String? profileImage,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'phone') String? phone});
}

/// @nodoc
class _$GuardianInfoCopyWithImpl<$Res, $Val extends GuardianInfo>
    implements $GuardianInfoCopyWith<$Res> {
  _$GuardianInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GuardianInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? profileImage = freezed,
    Object? email = freezed,
    Object? phone = freezed,
  }) {
    return _then(_value.copyWith(
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GuardianInfoImplCopyWith<$Res>
    implements $GuardianInfoCopyWith<$Res> {
  factory _$$GuardianInfoImplCopyWith(
          _$GuardianInfoImpl value, $Res Function(_$GuardianInfoImpl) then) =
      __$$GuardianInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'profile_image') String? profileImage,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'phone') String? phone});
}

/// @nodoc
class __$$GuardianInfoImplCopyWithImpl<$Res>
    extends _$GuardianInfoCopyWithImpl<$Res, _$GuardianInfoImpl>
    implements _$$GuardianInfoImplCopyWith<$Res> {
  __$$GuardianInfoImplCopyWithImpl(
      _$GuardianInfoImpl _value, $Res Function(_$GuardianInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of GuardianInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? profileImage = freezed,
    Object? email = freezed,
    Object? phone = freezed,
  }) {
    return _then(_$GuardianInfoImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GuardianInfoImpl implements _GuardianInfo {
  const _$GuardianInfoImpl(
      {@JsonKey(name: 'name') this.name,
      @JsonKey(name: 'profile_image') this.profileImage,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'phone') this.phone});

  factory _$GuardianInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$GuardianInfoImplFromJson(json);

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
  String toString() {
    return 'GuardianInfo(name: $name, profileImage: $profileImage, email: $email, phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GuardianInfoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, profileImage, email, phone);

  /// Create a copy of GuardianInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GuardianInfoImplCopyWith<_$GuardianInfoImpl> get copyWith =>
      __$$GuardianInfoImplCopyWithImpl<_$GuardianInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GuardianInfoImplToJson(
      this,
    );
  }
}

abstract class _GuardianInfo implements GuardianInfo {
  const factory _GuardianInfo(
      {@JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'profile_image') final String? profileImage,
      @JsonKey(name: 'email') final String? email,
      @JsonKey(name: 'phone') final String? phone}) = _$GuardianInfoImpl;

  factory _GuardianInfo.fromJson(Map<String, dynamic> json) =
      _$GuardianInfoImpl.fromJson;

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

  /// Create a copy of GuardianInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GuardianInfoImplCopyWith<_$GuardianInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StudentInfo _$StudentInfoFromJson(Map<String, dynamic> json) {
  return _StudentInfo.fromJson(json);
}

/// @nodoc
mixin _$StudentInfo {
  @JsonKey(name: 'enrollment_id')
  String? get enrollmentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'class_standard')
  String? get classStandard => throw _privateConstructorUsedError;
  @JsonKey(name: 'section')
  String? get section => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_image')
  String? get profileImage => throw _privateConstructorUsedError;

  /// Serializes this StudentInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudentInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentInfoCopyWith<StudentInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentInfoCopyWith<$Res> {
  factory $StudentInfoCopyWith(
          StudentInfo value, $Res Function(StudentInfo) then) =
      _$StudentInfoCopyWithImpl<$Res, StudentInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: 'enrollment_id') String? enrollmentId,
      @JsonKey(name: 'class_standard') String? classStandard,
      @JsonKey(name: 'section') String? section,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'profile_image') String? profileImage});
}

/// @nodoc
class _$StudentInfoCopyWithImpl<$Res, $Val extends StudentInfo>
    implements $StudentInfoCopyWith<$Res> {
  _$StudentInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enrollmentId = freezed,
    Object? classStandard = freezed,
    Object? section = freezed,
    Object? name = freezed,
    Object? profileImage = freezed,
  }) {
    return _then(_value.copyWith(
      enrollmentId: freezed == enrollmentId
          ? _value.enrollmentId
          : enrollmentId // ignore: cast_nullable_to_non_nullable
              as String?,
      classStandard: freezed == classStandard
          ? _value.classStandard
          : classStandard // ignore: cast_nullable_to_non_nullable
              as String?,
      section: freezed == section
          ? _value.section
          : section // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StudentInfoImplCopyWith<$Res>
    implements $StudentInfoCopyWith<$Res> {
  factory _$$StudentInfoImplCopyWith(
          _$StudentInfoImpl value, $Res Function(_$StudentInfoImpl) then) =
      __$$StudentInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'enrollment_id') String? enrollmentId,
      @JsonKey(name: 'class_standard') String? classStandard,
      @JsonKey(name: 'section') String? section,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'profile_image') String? profileImage});
}

/// @nodoc
class __$$StudentInfoImplCopyWithImpl<$Res>
    extends _$StudentInfoCopyWithImpl<$Res, _$StudentInfoImpl>
    implements _$$StudentInfoImplCopyWith<$Res> {
  __$$StudentInfoImplCopyWithImpl(
      _$StudentInfoImpl _value, $Res Function(_$StudentInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudentInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enrollmentId = freezed,
    Object? classStandard = freezed,
    Object? section = freezed,
    Object? name = freezed,
    Object? profileImage = freezed,
  }) {
    return _then(_$StudentInfoImpl(
      enrollmentId: freezed == enrollmentId
          ? _value.enrollmentId
          : enrollmentId // ignore: cast_nullable_to_non_nullable
              as String?,
      classStandard: freezed == classStandard
          ? _value.classStandard
          : classStandard // ignore: cast_nullable_to_non_nullable
              as String?,
      section: freezed == section
          ? _value.section
          : section // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StudentInfoImpl implements _StudentInfo {
  const _$StudentInfoImpl(
      {@JsonKey(name: 'enrollment_id') this.enrollmentId,
      @JsonKey(name: 'class_standard') this.classStandard,
      @JsonKey(name: 'section') this.section,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'profile_image') this.profileImage});

  factory _$StudentInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentInfoImplFromJson(json);

  @override
  @JsonKey(name: 'enrollment_id')
  final String? enrollmentId;
  @override
  @JsonKey(name: 'class_standard')
  final String? classStandard;
  @override
  @JsonKey(name: 'section')
  final String? section;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'profile_image')
  final String? profileImage;

  @override
  String toString() {
    return 'StudentInfo(enrollmentId: $enrollmentId, classStandard: $classStandard, section: $section, name: $name, profileImage: $profileImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentInfoImpl &&
            (identical(other.enrollmentId, enrollmentId) ||
                other.enrollmentId == enrollmentId) &&
            (identical(other.classStandard, classStandard) ||
                other.classStandard == classStandard) &&
            (identical(other.section, section) || other.section == section) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, enrollmentId, classStandard, section, name, profileImage);

  /// Create a copy of StudentInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentInfoImplCopyWith<_$StudentInfoImpl> get copyWith =>
      __$$StudentInfoImplCopyWithImpl<_$StudentInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentInfoImplToJson(
      this,
    );
  }
}

abstract class _StudentInfo implements StudentInfo {
  const factory _StudentInfo(
          {@JsonKey(name: 'enrollment_id') final String? enrollmentId,
          @JsonKey(name: 'class_standard') final String? classStandard,
          @JsonKey(name: 'section') final String? section,
          @JsonKey(name: 'name') final String? name,
          @JsonKey(name: 'profile_image') final String? profileImage}) =
      _$StudentInfoImpl;

  factory _StudentInfo.fromJson(Map<String, dynamic> json) =
      _$StudentInfoImpl.fromJson;

  @override
  @JsonKey(name: 'enrollment_id')
  String? get enrollmentId;
  @override
  @JsonKey(name: 'class_standard')
  String? get classStandard;
  @override
  @JsonKey(name: 'section')
  String? get section;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'profile_image')
  String? get profileImage;

  /// Create a copy of StudentInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentInfoImplCopyWith<_$StudentInfoImpl> get copyWith =>
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

StudentSwitchRequest _$StudentSwitchRequestFromJson(Map<String, dynamic> json) {
  return _StudentSwitchRequest.fromJson(json);
}

/// @nodoc
mixin _$StudentSwitchRequest {
  @JsonKey(name: 'student_id')
  String? get studentId => throw _privateConstructorUsedError;

  /// Serializes this StudentSwitchRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudentSwitchRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentSwitchRequestCopyWith<StudentSwitchRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentSwitchRequestCopyWith<$Res> {
  factory $StudentSwitchRequestCopyWith(StudentSwitchRequest value,
          $Res Function(StudentSwitchRequest) then) =
      _$StudentSwitchRequestCopyWithImpl<$Res, StudentSwitchRequest>;
  @useResult
  $Res call({@JsonKey(name: 'student_id') String? studentId});
}

/// @nodoc
class _$StudentSwitchRequestCopyWithImpl<$Res,
        $Val extends StudentSwitchRequest>
    implements $StudentSwitchRequestCopyWith<$Res> {
  _$StudentSwitchRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentSwitchRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentId = freezed,
  }) {
    return _then(_value.copyWith(
      studentId: freezed == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StudentSwitchRequestImplCopyWith<$Res>
    implements $StudentSwitchRequestCopyWith<$Res> {
  factory _$$StudentSwitchRequestImplCopyWith(_$StudentSwitchRequestImpl value,
          $Res Function(_$StudentSwitchRequestImpl) then) =
      __$$StudentSwitchRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'student_id') String? studentId});
}

/// @nodoc
class __$$StudentSwitchRequestImplCopyWithImpl<$Res>
    extends _$StudentSwitchRequestCopyWithImpl<$Res, _$StudentSwitchRequestImpl>
    implements _$$StudentSwitchRequestImplCopyWith<$Res> {
  __$$StudentSwitchRequestImplCopyWithImpl(_$StudentSwitchRequestImpl _value,
      $Res Function(_$StudentSwitchRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudentSwitchRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentId = freezed,
  }) {
    return _then(_$StudentSwitchRequestImpl(
      studentId: freezed == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StudentSwitchRequestImpl implements _StudentSwitchRequest {
  const _$StudentSwitchRequestImpl(
      {@JsonKey(name: 'student_id') this.studentId});

  factory _$StudentSwitchRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentSwitchRequestImplFromJson(json);

  @override
  @JsonKey(name: 'student_id')
  final String? studentId;

  @override
  String toString() {
    return 'StudentSwitchRequest(studentId: $studentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentSwitchRequestImpl &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, studentId);

  /// Create a copy of StudentSwitchRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentSwitchRequestImplCopyWith<_$StudentSwitchRequestImpl>
      get copyWith =>
          __$$StudentSwitchRequestImplCopyWithImpl<_$StudentSwitchRequestImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentSwitchRequestImplToJson(
      this,
    );
  }
}

abstract class _StudentSwitchRequest implements StudentSwitchRequest {
  const factory _StudentSwitchRequest(
          {@JsonKey(name: 'student_id') final String? studentId}) =
      _$StudentSwitchRequestImpl;

  factory _StudentSwitchRequest.fromJson(Map<String, dynamic> json) =
      _$StudentSwitchRequestImpl.fromJson;

  @override
  @JsonKey(name: 'student_id')
  String? get studentId;

  /// Create a copy of StudentSwitchRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentSwitchRequestImplCopyWith<_$StudentSwitchRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ChangePasswordRequest _$ChangePasswordRequestFromJson(
    Map<String, dynamic> json) {
  return _ChangePasswordRequest.fromJson(json);
}

/// @nodoc
mixin _$ChangePasswordRequest {
  @JsonKey(name: 'password')
  String? get password => throw _privateConstructorUsedError;
  @JsonKey(name: 'newPassword')
  String? get newPassword => throw _privateConstructorUsedError;
  @JsonKey(name: 'confirmPassword')
  String? get confirmPassword => throw _privateConstructorUsedError;

  /// Serializes this ChangePasswordRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChangePasswordRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChangePasswordRequestCopyWith<ChangePasswordRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePasswordRequestCopyWith<$Res> {
  factory $ChangePasswordRequestCopyWith(ChangePasswordRequest value,
          $Res Function(ChangePasswordRequest) then) =
      _$ChangePasswordRequestCopyWithImpl<$Res, ChangePasswordRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'password') String? password,
      @JsonKey(name: 'newPassword') String? newPassword,
      @JsonKey(name: 'confirmPassword') String? confirmPassword});
}

/// @nodoc
class _$ChangePasswordRequestCopyWithImpl<$Res,
        $Val extends ChangePasswordRequest>
    implements $ChangePasswordRequestCopyWith<$Res> {
  _$ChangePasswordRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChangePasswordRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = freezed,
    Object? newPassword = freezed,
    Object? confirmPassword = freezed,
  }) {
    return _then(_value.copyWith(
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      newPassword: freezed == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmPassword: freezed == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChangePasswordRequestImplCopyWith<$Res>
    implements $ChangePasswordRequestCopyWith<$Res> {
  factory _$$ChangePasswordRequestImplCopyWith(
          _$ChangePasswordRequestImpl value,
          $Res Function(_$ChangePasswordRequestImpl) then) =
      __$$ChangePasswordRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'password') String? password,
      @JsonKey(name: 'newPassword') String? newPassword,
      @JsonKey(name: 'confirmPassword') String? confirmPassword});
}

/// @nodoc
class __$$ChangePasswordRequestImplCopyWithImpl<$Res>
    extends _$ChangePasswordRequestCopyWithImpl<$Res,
        _$ChangePasswordRequestImpl>
    implements _$$ChangePasswordRequestImplCopyWith<$Res> {
  __$$ChangePasswordRequestImplCopyWithImpl(_$ChangePasswordRequestImpl _value,
      $Res Function(_$ChangePasswordRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChangePasswordRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = freezed,
    Object? newPassword = freezed,
    Object? confirmPassword = freezed,
  }) {
    return _then(_$ChangePasswordRequestImpl(
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      newPassword: freezed == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmPassword: freezed == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChangePasswordRequestImpl implements _ChangePasswordRequest {
  const _$ChangePasswordRequestImpl(
      {@JsonKey(name: 'password') this.password,
      @JsonKey(name: 'newPassword') this.newPassword,
      @JsonKey(name: 'confirmPassword') this.confirmPassword});

  factory _$ChangePasswordRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChangePasswordRequestImplFromJson(json);

  @override
  @JsonKey(name: 'password')
  final String? password;
  @override
  @JsonKey(name: 'newPassword')
  final String? newPassword;
  @override
  @JsonKey(name: 'confirmPassword')
  final String? confirmPassword;

  @override
  String toString() {
    return 'ChangePasswordRequest(password: $password, newPassword: $newPassword, confirmPassword: $confirmPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePasswordRequestImpl &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, password, newPassword, confirmPassword);

  /// Create a copy of ChangePasswordRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePasswordRequestImplCopyWith<_$ChangePasswordRequestImpl>
      get copyWith => __$$ChangePasswordRequestImplCopyWithImpl<
          _$ChangePasswordRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChangePasswordRequestImplToJson(
      this,
    );
  }
}

abstract class _ChangePasswordRequest implements ChangePasswordRequest {
  const factory _ChangePasswordRequest(
          {@JsonKey(name: 'password') final String? password,
          @JsonKey(name: 'newPassword') final String? newPassword,
          @JsonKey(name: 'confirmPassword') final String? confirmPassword}) =
      _$ChangePasswordRequestImpl;

  factory _ChangePasswordRequest.fromJson(Map<String, dynamic> json) =
      _$ChangePasswordRequestImpl.fromJson;

  @override
  @JsonKey(name: 'password')
  String? get password;
  @override
  @JsonKey(name: 'newPassword')
  String? get newPassword;
  @override
  @JsonKey(name: 'confirmPassword')
  String? get confirmPassword;

  /// Create a copy of ChangePasswordRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangePasswordRequestImplCopyWith<_$ChangePasswordRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BiometricRequest _$BiometricRequestFromJson(Map<String, dynamic> json) {
  return _BiometricRequest.fromJson(json);
}

/// @nodoc
mixin _$BiometricRequest {
  @JsonKey(name: 'device_id')
  String? get deviceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'device_name')
  String? get deviceName => throw _privateConstructorUsedError;
  @JsonKey(name: 'platform')
  String? get platform => throw _privateConstructorUsedError;
  @JsonKey(name: 'device_token')
  String? get deviceToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'biometric_type')
  String? get biometricType => throw _privateConstructorUsedError;
  @JsonKey(name: 'password')
  String? get password => throw _privateConstructorUsedError;

  /// Serializes this BiometricRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BiometricRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BiometricRequestCopyWith<BiometricRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BiometricRequestCopyWith<$Res> {
  factory $BiometricRequestCopyWith(
          BiometricRequest value, $Res Function(BiometricRequest) then) =
      _$BiometricRequestCopyWithImpl<$Res, BiometricRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'device_id') String? deviceId,
      @JsonKey(name: 'device_name') String? deviceName,
      @JsonKey(name: 'platform') String? platform,
      @JsonKey(name: 'device_token') String? deviceToken,
      @JsonKey(name: 'biometric_type') String? biometricType,
      @JsonKey(name: 'password') String? password});
}

/// @nodoc
class _$BiometricRequestCopyWithImpl<$Res, $Val extends BiometricRequest>
    implements $BiometricRequestCopyWith<$Res> {
  _$BiometricRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BiometricRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = freezed,
    Object? deviceName = freezed,
    Object? platform = freezed,
    Object? deviceToken = freezed,
    Object? biometricType = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceName: freezed == deviceName
          ? _value.deviceName
          : deviceName // ignore: cast_nullable_to_non_nullable
              as String?,
      platform: freezed == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceToken: freezed == deviceToken
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String?,
      biometricType: freezed == biometricType
          ? _value.biometricType
          : biometricType // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BiometricRequestImplCopyWith<$Res>
    implements $BiometricRequestCopyWith<$Res> {
  factory _$$BiometricRequestImplCopyWith(_$BiometricRequestImpl value,
          $Res Function(_$BiometricRequestImpl) then) =
      __$$BiometricRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'device_id') String? deviceId,
      @JsonKey(name: 'device_name') String? deviceName,
      @JsonKey(name: 'platform') String? platform,
      @JsonKey(name: 'device_token') String? deviceToken,
      @JsonKey(name: 'biometric_type') String? biometricType,
      @JsonKey(name: 'password') String? password});
}

/// @nodoc
class __$$BiometricRequestImplCopyWithImpl<$Res>
    extends _$BiometricRequestCopyWithImpl<$Res, _$BiometricRequestImpl>
    implements _$$BiometricRequestImplCopyWith<$Res> {
  __$$BiometricRequestImplCopyWithImpl(_$BiometricRequestImpl _value,
      $Res Function(_$BiometricRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of BiometricRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = freezed,
    Object? deviceName = freezed,
    Object? platform = freezed,
    Object? deviceToken = freezed,
    Object? biometricType = freezed,
    Object? password = freezed,
  }) {
    return _then(_$BiometricRequestImpl(
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceName: freezed == deviceName
          ? _value.deviceName
          : deviceName // ignore: cast_nullable_to_non_nullable
              as String?,
      platform: freezed == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceToken: freezed == deviceToken
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String?,
      biometricType: freezed == biometricType
          ? _value.biometricType
          : biometricType // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$BiometricRequestImpl implements _BiometricRequest {
  const _$BiometricRequestImpl(
      {@JsonKey(name: 'device_id') this.deviceId,
      @JsonKey(name: 'device_name') this.deviceName,
      @JsonKey(name: 'platform') this.platform,
      @JsonKey(name: 'device_token') this.deviceToken,
      @JsonKey(name: 'biometric_type') this.biometricType,
      @JsonKey(name: 'password') this.password});

  factory _$BiometricRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$BiometricRequestImplFromJson(json);

  @override
  @JsonKey(name: 'device_id')
  final String? deviceId;
  @override
  @JsonKey(name: 'device_name')
  final String? deviceName;
  @override
  @JsonKey(name: 'platform')
  final String? platform;
  @override
  @JsonKey(name: 'device_token')
  final String? deviceToken;
  @override
  @JsonKey(name: 'biometric_type')
  final String? biometricType;
  @override
  @JsonKey(name: 'password')
  final String? password;

  @override
  String toString() {
    return 'BiometricRequest(deviceId: $deviceId, deviceName: $deviceName, platform: $platform, deviceToken: $deviceToken, biometricType: $biometricType, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BiometricRequestImpl &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.deviceName, deviceName) ||
                other.deviceName == deviceName) &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.deviceToken, deviceToken) ||
                other.deviceToken == deviceToken) &&
            (identical(other.biometricType, biometricType) ||
                other.biometricType == biometricType) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, deviceId, deviceName, platform,
      deviceToken, biometricType, password);

  /// Create a copy of BiometricRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BiometricRequestImplCopyWith<_$BiometricRequestImpl> get copyWith =>
      __$$BiometricRequestImplCopyWithImpl<_$BiometricRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BiometricRequestImplToJson(
      this,
    );
  }
}

abstract class _BiometricRequest implements BiometricRequest {
  const factory _BiometricRequest(
          {@JsonKey(name: 'device_id') final String? deviceId,
          @JsonKey(name: 'device_name') final String? deviceName,
          @JsonKey(name: 'platform') final String? platform,
          @JsonKey(name: 'device_token') final String? deviceToken,
          @JsonKey(name: 'biometric_type') final String? biometricType,
          @JsonKey(name: 'password') final String? password}) =
      _$BiometricRequestImpl;

  factory _BiometricRequest.fromJson(Map<String, dynamic> json) =
      _$BiometricRequestImpl.fromJson;

  @override
  @JsonKey(name: 'device_id')
  String? get deviceId;
  @override
  @JsonKey(name: 'device_name')
  String? get deviceName;
  @override
  @JsonKey(name: 'platform')
  String? get platform;
  @override
  @JsonKey(name: 'device_token')
  String? get deviceToken;
  @override
  @JsonKey(name: 'biometric_type')
  String? get biometricType;
  @override
  @JsonKey(name: 'password')
  String? get password;

  /// Create a copy of BiometricRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BiometricRequestImplCopyWith<_$BiometricRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
