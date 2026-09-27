// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'classroom_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ClassroomModel _$ClassroomModelFromJson(Map<String, dynamic> json) {
  return _ClassroomModel.fromJson(json);
}

/// @nodoc
mixin _$ClassroomModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'classroom_id')
  String? get classroomId => throw _privateConstructorUsedError;
  @JsonKey(name: 'class')
  String? get className => throw _privateConstructorUsedError;
  @JsonKey(name: 'section')
  String? get section => throw _privateConstructorUsedError;
  @JsonKey(name: 'day')
  String? get day => throw _privateConstructorUsedError;
  @JsonKey(name: 'period')
  String? get period => throw _privateConstructorUsedError;
  @JsonKey(name: 'time')
  String? get time => throw _privateConstructorUsedError;
  @JsonKey(name: 'subject')
  String? get subject => throw _privateConstructorUsedError;
  @JsonKey(name: 'teacher')
  String? get teacher => throw _privateConstructorUsedError;
  @JsonKey(name: 'attendance_type')
  String? get attendanceType => throw _privateConstructorUsedError;
  @JsonKey(name: 'attendance_marked')
  bool? get attendanceMarked => throw _privateConstructorUsedError;

  /// Serializes this ClassroomModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClassroomModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClassroomModelCopyWith<ClassroomModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassroomModelCopyWith<$Res> {
  factory $ClassroomModelCopyWith(
          ClassroomModel value, $Res Function(ClassroomModel) then) =
      _$ClassroomModelCopyWithImpl<$Res, ClassroomModel>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'classroom_id') String? classroomId,
      @JsonKey(name: 'class') String? className,
      @JsonKey(name: 'section') String? section,
      @JsonKey(name: 'day') String? day,
      @JsonKey(name: 'period') String? period,
      @JsonKey(name: 'time') String? time,
      @JsonKey(name: 'subject') String? subject,
      @JsonKey(name: 'teacher') String? teacher,
      @JsonKey(name: 'attendance_type') String? attendanceType,
      @JsonKey(name: 'attendance_marked') bool? attendanceMarked});
}

/// @nodoc
class _$ClassroomModelCopyWithImpl<$Res, $Val extends ClassroomModel>
    implements $ClassroomModelCopyWith<$Res> {
  _$ClassroomModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClassroomModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? classroomId = freezed,
    Object? className = freezed,
    Object? section = freezed,
    Object? day = freezed,
    Object? period = freezed,
    Object? time = freezed,
    Object? subject = freezed,
    Object? teacher = freezed,
    Object? attendanceType = freezed,
    Object? attendanceMarked = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      classroomId: freezed == classroomId
          ? _value.classroomId
          : classroomId // ignore: cast_nullable_to_non_nullable
              as String?,
      className: freezed == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String?,
      section: freezed == section
          ? _value.section
          : section // ignore: cast_nullable_to_non_nullable
              as String?,
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      subject: freezed == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String?,
      teacher: freezed == teacher
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as String?,
      attendanceType: freezed == attendanceType
          ? _value.attendanceType
          : attendanceType // ignore: cast_nullable_to_non_nullable
              as String?,
      attendanceMarked: freezed == attendanceMarked
          ? _value.attendanceMarked
          : attendanceMarked // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClassroomModelImplCopyWith<$Res>
    implements $ClassroomModelCopyWith<$Res> {
  factory _$$ClassroomModelImplCopyWith(_$ClassroomModelImpl value,
          $Res Function(_$ClassroomModelImpl) then) =
      __$$ClassroomModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'classroom_id') String? classroomId,
      @JsonKey(name: 'class') String? className,
      @JsonKey(name: 'section') String? section,
      @JsonKey(name: 'day') String? day,
      @JsonKey(name: 'period') String? period,
      @JsonKey(name: 'time') String? time,
      @JsonKey(name: 'subject') String? subject,
      @JsonKey(name: 'teacher') String? teacher,
      @JsonKey(name: 'attendance_type') String? attendanceType,
      @JsonKey(name: 'attendance_marked') bool? attendanceMarked});
}

/// @nodoc
class __$$ClassroomModelImplCopyWithImpl<$Res>
    extends _$ClassroomModelCopyWithImpl<$Res, _$ClassroomModelImpl>
    implements _$$ClassroomModelImplCopyWith<$Res> {
  __$$ClassroomModelImplCopyWithImpl(
      _$ClassroomModelImpl _value, $Res Function(_$ClassroomModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClassroomModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? classroomId = freezed,
    Object? className = freezed,
    Object? section = freezed,
    Object? day = freezed,
    Object? period = freezed,
    Object? time = freezed,
    Object? subject = freezed,
    Object? teacher = freezed,
    Object? attendanceType = freezed,
    Object? attendanceMarked = freezed,
  }) {
    return _then(_$ClassroomModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      classroomId: freezed == classroomId
          ? _value.classroomId
          : classroomId // ignore: cast_nullable_to_non_nullable
              as String?,
      className: freezed == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String?,
      section: freezed == section
          ? _value.section
          : section // ignore: cast_nullable_to_non_nullable
              as String?,
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      subject: freezed == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String?,
      teacher: freezed == teacher
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as String?,
      attendanceType: freezed == attendanceType
          ? _value.attendanceType
          : attendanceType // ignore: cast_nullable_to_non_nullable
              as String?,
      attendanceMarked: freezed == attendanceMarked
          ? _value.attendanceMarked
          : attendanceMarked // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ClassroomModelImpl implements _ClassroomModel {
  const _$ClassroomModelImpl(
      {this.id,
      @JsonKey(name: 'classroom_id') this.classroomId,
      @JsonKey(name: 'class') this.className,
      @JsonKey(name: 'section') this.section,
      @JsonKey(name: 'day') this.day,
      @JsonKey(name: 'period') this.period,
      @JsonKey(name: 'time') this.time,
      @JsonKey(name: 'subject') this.subject,
      @JsonKey(name: 'teacher') this.teacher,
      @JsonKey(name: 'attendance_type') this.attendanceType,
      @JsonKey(name: 'attendance_marked') this.attendanceMarked});

  factory _$ClassroomModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClassroomModelImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'classroom_id')
  final String? classroomId;
  @override
  @JsonKey(name: 'class')
  final String? className;
  @override
  @JsonKey(name: 'section')
  final String? section;
  @override
  @JsonKey(name: 'day')
  final String? day;
  @override
  @JsonKey(name: 'period')
  final String? period;
  @override
  @JsonKey(name: 'time')
  final String? time;
  @override
  @JsonKey(name: 'subject')
  final String? subject;
  @override
  @JsonKey(name: 'teacher')
  final String? teacher;
  @override
  @JsonKey(name: 'attendance_type')
  final String? attendanceType;
  @override
  @JsonKey(name: 'attendance_marked')
  final bool? attendanceMarked;

  @override
  String toString() {
    return 'ClassroomModel(id: $id, classroomId: $classroomId, className: $className, section: $section, day: $day, period: $period, time: $time, subject: $subject, teacher: $teacher, attendanceType: $attendanceType, attendanceMarked: $attendanceMarked)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassroomModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.classroomId, classroomId) ||
                other.classroomId == classroomId) &&
            (identical(other.className, className) ||
                other.className == className) &&
            (identical(other.section, section) || other.section == section) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.period, period) || other.period == period) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.teacher, teacher) || other.teacher == teacher) &&
            (identical(other.attendanceType, attendanceType) ||
                other.attendanceType == attendanceType) &&
            (identical(other.attendanceMarked, attendanceMarked) ||
                other.attendanceMarked == attendanceMarked));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      classroomId,
      className,
      section,
      day,
      period,
      time,
      subject,
      teacher,
      attendanceType,
      attendanceMarked);

  /// Create a copy of ClassroomModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassroomModelImplCopyWith<_$ClassroomModelImpl> get copyWith =>
      __$$ClassroomModelImplCopyWithImpl<_$ClassroomModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClassroomModelImplToJson(
      this,
    );
  }
}

abstract class _ClassroomModel implements ClassroomModel {
  const factory _ClassroomModel(
          {final int? id,
          @JsonKey(name: 'classroom_id') final String? classroomId,
          @JsonKey(name: 'class') final String? className,
          @JsonKey(name: 'section') final String? section,
          @JsonKey(name: 'day') final String? day,
          @JsonKey(name: 'period') final String? period,
          @JsonKey(name: 'time') final String? time,
          @JsonKey(name: 'subject') final String? subject,
          @JsonKey(name: 'teacher') final String? teacher,
          @JsonKey(name: 'attendance_type') final String? attendanceType,
          @JsonKey(name: 'attendance_marked') final bool? attendanceMarked}) =
      _$ClassroomModelImpl;

  factory _ClassroomModel.fromJson(Map<String, dynamic> json) =
      _$ClassroomModelImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'classroom_id')
  String? get classroomId;
  @override
  @JsonKey(name: 'class')
  String? get className;
  @override
  @JsonKey(name: 'section')
  String? get section;
  @override
  @JsonKey(name: 'day')
  String? get day;
  @override
  @JsonKey(name: 'period')
  String? get period;
  @override
  @JsonKey(name: 'time')
  String? get time;
  @override
  @JsonKey(name: 'subject')
  String? get subject;
  @override
  @JsonKey(name: 'teacher')
  String? get teacher;
  @override
  @JsonKey(name: 'attendance_type')
  String? get attendanceType;
  @override
  @JsonKey(name: 'attendance_marked')
  bool? get attendanceMarked;

  /// Create a copy of ClassroomModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClassroomModelImplCopyWith<_$ClassroomModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ClassroomStudentModel _$ClassroomStudentModelFromJson(
    Map<String, dynamic> json) {
  return _ClassroomStudentModel.fromJson(json);
}

/// @nodoc
mixin _$ClassroomStudentModel {
  @JsonKey(name: 'student_id')
  int? get studentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'enrollment_id')
  String? get enrollmentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_image')
  String? get profileImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'attendance_status')
  String? get attendanceStatus => throw _privateConstructorUsedError;

  /// Serializes this ClassroomStudentModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClassroomStudentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClassroomStudentModelCopyWith<ClassroomStudentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassroomStudentModelCopyWith<$Res> {
  factory $ClassroomStudentModelCopyWith(ClassroomStudentModel value,
          $Res Function(ClassroomStudentModel) then) =
      _$ClassroomStudentModelCopyWithImpl<$Res, ClassroomStudentModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'student_id') int? studentId,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'enrollment_id') String? enrollmentId,
      @JsonKey(name: 'profile_image') String? profileImage,
      @JsonKey(name: 'attendance_status') String? attendanceStatus});
}

/// @nodoc
class _$ClassroomStudentModelCopyWithImpl<$Res,
        $Val extends ClassroomStudentModel>
    implements $ClassroomStudentModelCopyWith<$Res> {
  _$ClassroomStudentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClassroomStudentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentId = freezed,
    Object? name = freezed,
    Object? enrollmentId = freezed,
    Object? profileImage = freezed,
    Object? attendanceStatus = freezed,
  }) {
    return _then(_value.copyWith(
      studentId: freezed == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      enrollmentId: freezed == enrollmentId
          ? _value.enrollmentId
          : enrollmentId // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      attendanceStatus: freezed == attendanceStatus
          ? _value.attendanceStatus
          : attendanceStatus // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClassroomStudentModelImplCopyWith<$Res>
    implements $ClassroomStudentModelCopyWith<$Res> {
  factory _$$ClassroomStudentModelImplCopyWith(
          _$ClassroomStudentModelImpl value,
          $Res Function(_$ClassroomStudentModelImpl) then) =
      __$$ClassroomStudentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'student_id') int? studentId,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'enrollment_id') String? enrollmentId,
      @JsonKey(name: 'profile_image') String? profileImage,
      @JsonKey(name: 'attendance_status') String? attendanceStatus});
}

/// @nodoc
class __$$ClassroomStudentModelImplCopyWithImpl<$Res>
    extends _$ClassroomStudentModelCopyWithImpl<$Res,
        _$ClassroomStudentModelImpl>
    implements _$$ClassroomStudentModelImplCopyWith<$Res> {
  __$$ClassroomStudentModelImplCopyWithImpl(_$ClassroomStudentModelImpl _value,
      $Res Function(_$ClassroomStudentModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClassroomStudentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentId = freezed,
    Object? name = freezed,
    Object? enrollmentId = freezed,
    Object? profileImage = freezed,
    Object? attendanceStatus = freezed,
  }) {
    return _then(_$ClassroomStudentModelImpl(
      studentId: freezed == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      enrollmentId: freezed == enrollmentId
          ? _value.enrollmentId
          : enrollmentId // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      attendanceStatus: freezed == attendanceStatus
          ? _value.attendanceStatus
          : attendanceStatus // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClassroomStudentModelImpl implements _ClassroomStudentModel {
  const _$ClassroomStudentModelImpl(
      {@JsonKey(name: 'student_id') this.studentId,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'enrollment_id') this.enrollmentId,
      @JsonKey(name: 'profile_image') this.profileImage,
      @JsonKey(name: 'attendance_status') this.attendanceStatus});

  factory _$ClassroomStudentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClassroomStudentModelImplFromJson(json);

  @override
  @JsonKey(name: 'student_id')
  final int? studentId;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'enrollment_id')
  final String? enrollmentId;
  @override
  @JsonKey(name: 'profile_image')
  final String? profileImage;
  @override
  @JsonKey(name: 'attendance_status')
  final String? attendanceStatus;

  @override
  String toString() {
    return 'ClassroomStudentModel(studentId: $studentId, name: $name, enrollmentId: $enrollmentId, profileImage: $profileImage, attendanceStatus: $attendanceStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassroomStudentModelImpl &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.enrollmentId, enrollmentId) ||
                other.enrollmentId == enrollmentId) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage) &&
            (identical(other.attendanceStatus, attendanceStatus) ||
                other.attendanceStatus == attendanceStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, studentId, name, enrollmentId,
      profileImage, attendanceStatus);

  /// Create a copy of ClassroomStudentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassroomStudentModelImplCopyWith<_$ClassroomStudentModelImpl>
      get copyWith => __$$ClassroomStudentModelImplCopyWithImpl<
          _$ClassroomStudentModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClassroomStudentModelImplToJson(
      this,
    );
  }
}

abstract class _ClassroomStudentModel implements ClassroomStudentModel {
  const factory _ClassroomStudentModel(
          {@JsonKey(name: 'student_id') final int? studentId,
          @JsonKey(name: 'name') final String? name,
          @JsonKey(name: 'enrollment_id') final String? enrollmentId,
          @JsonKey(name: 'profile_image') final String? profileImage,
          @JsonKey(name: 'attendance_status') final String? attendanceStatus}) =
      _$ClassroomStudentModelImpl;

  factory _ClassroomStudentModel.fromJson(Map<String, dynamic> json) =
      _$ClassroomStudentModelImpl.fromJson;

  @override
  @JsonKey(name: 'student_id')
  int? get studentId;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'enrollment_id')
  String? get enrollmentId;
  @override
  @JsonKey(name: 'profile_image')
  String? get profileImage;
  @override
  @JsonKey(name: 'attendance_status')
  String? get attendanceStatus;

  /// Create a copy of ClassroomStudentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClassroomStudentModelImplCopyWith<_$ClassroomStudentModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AttendanceRequestModel _$AttendanceRequestModelFromJson(
    Map<String, dynamic> json) {
  return _AttendanceRequestModel.fromJson(json);
}

/// @nodoc
mixin _$AttendanceRequestModel {
  @JsonKey(name: 'attendance_type')
  String? get attendanceType => throw _privateConstructorUsedError;
  @JsonKey(name: 'class')
  String? get className => throw _privateConstructorUsedError;
  @JsonKey(name: 'section')
  String? get section => throw _privateConstructorUsedError;
  @JsonKey(name: 'date')
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'present')
  String? get present => throw _privateConstructorUsedError;
  @JsonKey(name: 'absent')
  String? get absent => throw _privateConstructorUsedError;
  @JsonKey(name: 'classroom_id', includeIfNull: false)
  String? get classroomId => throw _privateConstructorUsedError;
  @JsonKey(name: 'period', includeIfNull: false)
  String? get period => throw _privateConstructorUsedError;
  @JsonKey(name: 'time_slot', includeIfNull: false)
  String? get timeSlot => throw _privateConstructorUsedError;
  @JsonKey(name: 'subject', includeIfNull: false)
  String? get subject => throw _privateConstructorUsedError;

  /// Serializes this AttendanceRequestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AttendanceRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttendanceRequestModelCopyWith<AttendanceRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceRequestModelCopyWith<$Res> {
  factory $AttendanceRequestModelCopyWith(AttendanceRequestModel value,
          $Res Function(AttendanceRequestModel) then) =
      _$AttendanceRequestModelCopyWithImpl<$Res, AttendanceRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'attendance_type') String? attendanceType,
      @JsonKey(name: 'class') String? className,
      @JsonKey(name: 'section') String? section,
      @JsonKey(name: 'date') String? date,
      @JsonKey(name: 'present') String? present,
      @JsonKey(name: 'absent') String? absent,
      @JsonKey(name: 'classroom_id', includeIfNull: false) String? classroomId,
      @JsonKey(name: 'period', includeIfNull: false) String? period,
      @JsonKey(name: 'time_slot', includeIfNull: false) String? timeSlot,
      @JsonKey(name: 'subject', includeIfNull: false) String? subject});
}

/// @nodoc
class _$AttendanceRequestModelCopyWithImpl<$Res,
        $Val extends AttendanceRequestModel>
    implements $AttendanceRequestModelCopyWith<$Res> {
  _$AttendanceRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttendanceRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attendanceType = freezed,
    Object? className = freezed,
    Object? section = freezed,
    Object? date = freezed,
    Object? present = freezed,
    Object? absent = freezed,
    Object? classroomId = freezed,
    Object? period = freezed,
    Object? timeSlot = freezed,
    Object? subject = freezed,
  }) {
    return _then(_value.copyWith(
      attendanceType: freezed == attendanceType
          ? _value.attendanceType
          : attendanceType // ignore: cast_nullable_to_non_nullable
              as String?,
      className: freezed == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String?,
      section: freezed == section
          ? _value.section
          : section // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      present: freezed == present
          ? _value.present
          : present // ignore: cast_nullable_to_non_nullable
              as String?,
      absent: freezed == absent
          ? _value.absent
          : absent // ignore: cast_nullable_to_non_nullable
              as String?,
      classroomId: freezed == classroomId
          ? _value.classroomId
          : classroomId // ignore: cast_nullable_to_non_nullable
              as String?,
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as String?,
      timeSlot: freezed == timeSlot
          ? _value.timeSlot
          : timeSlot // ignore: cast_nullable_to_non_nullable
              as String?,
      subject: freezed == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttendanceRequestModelImplCopyWith<$Res>
    implements $AttendanceRequestModelCopyWith<$Res> {
  factory _$$AttendanceRequestModelImplCopyWith(
          _$AttendanceRequestModelImpl value,
          $Res Function(_$AttendanceRequestModelImpl) then) =
      __$$AttendanceRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'attendance_type') String? attendanceType,
      @JsonKey(name: 'class') String? className,
      @JsonKey(name: 'section') String? section,
      @JsonKey(name: 'date') String? date,
      @JsonKey(name: 'present') String? present,
      @JsonKey(name: 'absent') String? absent,
      @JsonKey(name: 'classroom_id', includeIfNull: false) String? classroomId,
      @JsonKey(name: 'period', includeIfNull: false) String? period,
      @JsonKey(name: 'time_slot', includeIfNull: false) String? timeSlot,
      @JsonKey(name: 'subject', includeIfNull: false) String? subject});
}

/// @nodoc
class __$$AttendanceRequestModelImplCopyWithImpl<$Res>
    extends _$AttendanceRequestModelCopyWithImpl<$Res,
        _$AttendanceRequestModelImpl>
    implements _$$AttendanceRequestModelImplCopyWith<$Res> {
  __$$AttendanceRequestModelImplCopyWithImpl(
      _$AttendanceRequestModelImpl _value,
      $Res Function(_$AttendanceRequestModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendanceRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attendanceType = freezed,
    Object? className = freezed,
    Object? section = freezed,
    Object? date = freezed,
    Object? present = freezed,
    Object? absent = freezed,
    Object? classroomId = freezed,
    Object? period = freezed,
    Object? timeSlot = freezed,
    Object? subject = freezed,
  }) {
    return _then(_$AttendanceRequestModelImpl(
      attendanceType: freezed == attendanceType
          ? _value.attendanceType
          : attendanceType // ignore: cast_nullable_to_non_nullable
              as String?,
      className: freezed == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String?,
      section: freezed == section
          ? _value.section
          : section // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      present: freezed == present
          ? _value.present
          : present // ignore: cast_nullable_to_non_nullable
              as String?,
      absent: freezed == absent
          ? _value.absent
          : absent // ignore: cast_nullable_to_non_nullable
              as String?,
      classroomId: freezed == classroomId
          ? _value.classroomId
          : classroomId // ignore: cast_nullable_to_non_nullable
              as String?,
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as String?,
      timeSlot: freezed == timeSlot
          ? _value.timeSlot
          : timeSlot // ignore: cast_nullable_to_non_nullable
              as String?,
      subject: freezed == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttendanceRequestModelImpl implements _AttendanceRequestModel {
  const _$AttendanceRequestModelImpl(
      {@JsonKey(name: 'attendance_type') this.attendanceType,
      @JsonKey(name: 'class') this.className,
      @JsonKey(name: 'section') this.section,
      @JsonKey(name: 'date') this.date,
      @JsonKey(name: 'present') this.present,
      @JsonKey(name: 'absent') this.absent,
      @JsonKey(name: 'classroom_id', includeIfNull: false) this.classroomId,
      @JsonKey(name: 'period', includeIfNull: false) this.period,
      @JsonKey(name: 'time_slot', includeIfNull: false) this.timeSlot,
      @JsonKey(name: 'subject', includeIfNull: false) this.subject});

  factory _$AttendanceRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttendanceRequestModelImplFromJson(json);

  @override
  @JsonKey(name: 'attendance_type')
  final String? attendanceType;
  @override
  @JsonKey(name: 'class')
  final String? className;
  @override
  @JsonKey(name: 'section')
  final String? section;
  @override
  @JsonKey(name: 'date')
  final String? date;
  @override
  @JsonKey(name: 'present')
  final String? present;
  @override
  @JsonKey(name: 'absent')
  final String? absent;
  @override
  @JsonKey(name: 'classroom_id', includeIfNull: false)
  final String? classroomId;
  @override
  @JsonKey(name: 'period', includeIfNull: false)
  final String? period;
  @override
  @JsonKey(name: 'time_slot', includeIfNull: false)
  final String? timeSlot;
  @override
  @JsonKey(name: 'subject', includeIfNull: false)
  final String? subject;

  @override
  String toString() {
    return 'AttendanceRequestModel(attendanceType: $attendanceType, className: $className, section: $section, date: $date, present: $present, absent: $absent, classroomId: $classroomId, period: $period, timeSlot: $timeSlot, subject: $subject)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceRequestModelImpl &&
            (identical(other.attendanceType, attendanceType) ||
                other.attendanceType == attendanceType) &&
            (identical(other.className, className) ||
                other.className == className) &&
            (identical(other.section, section) || other.section == section) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.present, present) || other.present == present) &&
            (identical(other.absent, absent) || other.absent == absent) &&
            (identical(other.classroomId, classroomId) ||
                other.classroomId == classroomId) &&
            (identical(other.period, period) || other.period == period) &&
            (identical(other.timeSlot, timeSlot) ||
                other.timeSlot == timeSlot) &&
            (identical(other.subject, subject) || other.subject == subject));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, attendanceType, className,
      section, date, present, absent, classroomId, period, timeSlot, subject);

  /// Create a copy of AttendanceRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceRequestModelImplCopyWith<_$AttendanceRequestModelImpl>
      get copyWith => __$$AttendanceRequestModelImplCopyWithImpl<
          _$AttendanceRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttendanceRequestModelImplToJson(
      this,
    );
  }
}

abstract class _AttendanceRequestModel implements AttendanceRequestModel {
  const factory _AttendanceRequestModel(
      {@JsonKey(name: 'attendance_type') final String? attendanceType,
      @JsonKey(name: 'class') final String? className,
      @JsonKey(name: 'section') final String? section,
      @JsonKey(name: 'date') final String? date,
      @JsonKey(name: 'present') final String? present,
      @JsonKey(name: 'absent') final String? absent,
      @JsonKey(name: 'classroom_id', includeIfNull: false)
      final String? classroomId,
      @JsonKey(name: 'period', includeIfNull: false) final String? period,
      @JsonKey(name: 'time_slot', includeIfNull: false) final String? timeSlot,
      @JsonKey(name: 'subject', includeIfNull: false)
      final String? subject}) = _$AttendanceRequestModelImpl;

  factory _AttendanceRequestModel.fromJson(Map<String, dynamic> json) =
      _$AttendanceRequestModelImpl.fromJson;

  @override
  @JsonKey(name: 'attendance_type')
  String? get attendanceType;
  @override
  @JsonKey(name: 'class')
  String? get className;
  @override
  @JsonKey(name: 'section')
  String? get section;
  @override
  @JsonKey(name: 'date')
  String? get date;
  @override
  @JsonKey(name: 'present')
  String? get present;
  @override
  @JsonKey(name: 'absent')
  String? get absent;
  @override
  @JsonKey(name: 'classroom_id', includeIfNull: false)
  String? get classroomId;
  @override
  @JsonKey(name: 'period', includeIfNull: false)
  String? get period;
  @override
  @JsonKey(name: 'time_slot', includeIfNull: false)
  String? get timeSlot;
  @override
  @JsonKey(name: 'subject', includeIfNull: false)
  String? get subject;

  /// Create a copy of AttendanceRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttendanceRequestModelImplCopyWith<_$AttendanceRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
