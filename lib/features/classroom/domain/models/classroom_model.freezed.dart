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
  String? get section => throw _privateConstructorUsedError;
  String? get day => throw _privateConstructorUsedError;
  String? get period => throw _privateConstructorUsedError;
  String? get time => throw _privateConstructorUsedError;
  String? get subject => throw _privateConstructorUsedError;
  String? get teacher => throw _privateConstructorUsedError;
  List<ClassroomStudentModel>? get students =>
      throw _privateConstructorUsedError;

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
      String? section,
      String? day,
      String? period,
      String? time,
      String? subject,
      String? teacher,
      List<ClassroomStudentModel>? students});
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
    Object? students = freezed,
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
      students: freezed == students
          ? _value.students
          : students // ignore: cast_nullable_to_non_nullable
              as List<ClassroomStudentModel>?,
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
      String? section,
      String? day,
      String? period,
      String? time,
      String? subject,
      String? teacher,
      List<ClassroomStudentModel>? students});
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
    Object? students = freezed,
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
      students: freezed == students
          ? _value._students
          : students // ignore: cast_nullable_to_non_nullable
              as List<ClassroomStudentModel>?,
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
      this.section,
      this.day,
      this.period,
      this.time,
      this.subject,
      this.teacher,
      final List<ClassroomStudentModel>? students})
      : _students = students;

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
  final String? section;
  @override
  final String? day;
  @override
  final String? period;
  @override
  final String? time;
  @override
  final String? subject;
  @override
  final String? teacher;
  final List<ClassroomStudentModel>? _students;
  @override
  List<ClassroomStudentModel>? get students {
    final value = _students;
    if (value == null) return null;
    if (_students is EqualUnmodifiableListView) return _students;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ClassroomModel(id: $id, classroomId: $classroomId, className: $className, section: $section, day: $day, period: $period, time: $time, subject: $subject, teacher: $teacher, students: $students)';
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
            const DeepCollectionEquality().equals(other._students, _students));
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
      const DeepCollectionEquality().hash(_students));

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
      final String? section,
      final String? day,
      final String? period,
      final String? time,
      final String? subject,
      final String? teacher,
      final List<ClassroomStudentModel>? students}) = _$ClassroomModelImpl;

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
  String? get section;
  @override
  String? get day;
  @override
  String? get period;
  @override
  String? get time;
  @override
  String? get subject;
  @override
  String? get teacher;
  @override
  List<ClassroomStudentModel>? get students;

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
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'enrollment_id')
  String? get enrollmentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_image')
  String? get profileImage => throw _privateConstructorUsedError;

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
      String? name,
      @JsonKey(name: 'enrollment_id') String? enrollmentId,
      @JsonKey(name: 'profile_image') String? profileImage});
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
      String? name,
      @JsonKey(name: 'enrollment_id') String? enrollmentId,
      @JsonKey(name: 'profile_image') String? profileImage});
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClassroomStudentModelImpl implements _ClassroomStudentModel {
  const _$ClassroomStudentModelImpl(
      {@JsonKey(name: 'student_id') this.studentId,
      this.name,
      @JsonKey(name: 'enrollment_id') this.enrollmentId,
      @JsonKey(name: 'profile_image') this.profileImage});

  factory _$ClassroomStudentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClassroomStudentModelImplFromJson(json);

  @override
  @JsonKey(name: 'student_id')
  final int? studentId;
  @override
  final String? name;
  @override
  @JsonKey(name: 'enrollment_id')
  final String? enrollmentId;
  @override
  @JsonKey(name: 'profile_image')
  final String? profileImage;

  @override
  String toString() {
    return 'ClassroomStudentModel(studentId: $studentId, name: $name, enrollmentId: $enrollmentId, profileImage: $profileImage)';
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
                other.profileImage == profileImage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, studentId, name, enrollmentId, profileImage);

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
          final String? name,
          @JsonKey(name: 'enrollment_id') final String? enrollmentId,
          @JsonKey(name: 'profile_image') final String? profileImage}) =
      _$ClassroomStudentModelImpl;

  factory _ClassroomStudentModel.fromJson(Map<String, dynamic> json) =
      _$ClassroomStudentModelImpl.fromJson;

  @override
  @JsonKey(name: 'student_id')
  int? get studentId;
  @override
  String? get name;
  @override
  @JsonKey(name: 'enrollment_id')
  String? get enrollmentId;
  @override
  @JsonKey(name: 'profile_image')
  String? get profileImage;

  /// Create a copy of ClassroomStudentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClassroomStudentModelImplCopyWith<_$ClassroomStudentModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
