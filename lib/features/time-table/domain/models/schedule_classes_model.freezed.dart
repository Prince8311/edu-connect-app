// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_classes_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TimeTableResponse _$TimeTableResponseFromJson(Map<String, dynamic> json) {
  return _TimeTableResponse.fromJson(json);
}

/// @nodoc
mixin _$TimeTableResponse {
  @JsonKey(name: 'scheduled_classes')
  List<ClassItem>? get scheduledClasses => throw _privateConstructorUsedError;
  @JsonKey(name: 'weekly_scheduled_classes')
  List<WeeklyScheduleItem>? get weeklyScheduledClasses =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'class_room')
  String? get classRoom => throw _privateConstructorUsedError;
  @JsonKey(name: 'class_teacher')
  String? get classTeacher => throw _privateConstructorUsedError;
  @JsonKey(name: 'today_day_name')
  String? get todayDayName => throw _privateConstructorUsedError;
  @JsonKey(name: 'break_time')
  String? get breakTime => throw _privateConstructorUsedError;

  /// Serializes this TimeTableResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TimeTableResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TimeTableResponseCopyWith<TimeTableResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeTableResponseCopyWith<$Res> {
  factory $TimeTableResponseCopyWith(
          TimeTableResponse value, $Res Function(TimeTableResponse) then) =
      _$TimeTableResponseCopyWithImpl<$Res, TimeTableResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'scheduled_classes') List<ClassItem>? scheduledClasses,
      @JsonKey(name: 'weekly_scheduled_classes')
      List<WeeklyScheduleItem>? weeklyScheduledClasses,
      @JsonKey(name: 'class_room') String? classRoom,
      @JsonKey(name: 'class_teacher') String? classTeacher,
      @JsonKey(name: 'today_day_name') String? todayDayName,
      @JsonKey(name: 'break_time') String? breakTime});
}

/// @nodoc
class _$TimeTableResponseCopyWithImpl<$Res, $Val extends TimeTableResponse>
    implements $TimeTableResponseCopyWith<$Res> {
  _$TimeTableResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TimeTableResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scheduledClasses = freezed,
    Object? weeklyScheduledClasses = freezed,
    Object? classRoom = freezed,
    Object? classTeacher = freezed,
    Object? todayDayName = freezed,
    Object? breakTime = freezed,
  }) {
    return _then(_value.copyWith(
      scheduledClasses: freezed == scheduledClasses
          ? _value.scheduledClasses
          : scheduledClasses // ignore: cast_nullable_to_non_nullable
              as List<ClassItem>?,
      weeklyScheduledClasses: freezed == weeklyScheduledClasses
          ? _value.weeklyScheduledClasses
          : weeklyScheduledClasses // ignore: cast_nullable_to_non_nullable
              as List<WeeklyScheduleItem>?,
      classRoom: freezed == classRoom
          ? _value.classRoom
          : classRoom // ignore: cast_nullable_to_non_nullable
              as String?,
      classTeacher: freezed == classTeacher
          ? _value.classTeacher
          : classTeacher // ignore: cast_nullable_to_non_nullable
              as String?,
      todayDayName: freezed == todayDayName
          ? _value.todayDayName
          : todayDayName // ignore: cast_nullable_to_non_nullable
              as String?,
      breakTime: freezed == breakTime
          ? _value.breakTime
          : breakTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimeTableResponseImplCopyWith<$Res>
    implements $TimeTableResponseCopyWith<$Res> {
  factory _$$TimeTableResponseImplCopyWith(_$TimeTableResponseImpl value,
          $Res Function(_$TimeTableResponseImpl) then) =
      __$$TimeTableResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'scheduled_classes') List<ClassItem>? scheduledClasses,
      @JsonKey(name: 'weekly_scheduled_classes')
      List<WeeklyScheduleItem>? weeklyScheduledClasses,
      @JsonKey(name: 'class_room') String? classRoom,
      @JsonKey(name: 'class_teacher') String? classTeacher,
      @JsonKey(name: 'today_day_name') String? todayDayName,
      @JsonKey(name: 'break_time') String? breakTime});
}

/// @nodoc
class __$$TimeTableResponseImplCopyWithImpl<$Res>
    extends _$TimeTableResponseCopyWithImpl<$Res, _$TimeTableResponseImpl>
    implements _$$TimeTableResponseImplCopyWith<$Res> {
  __$$TimeTableResponseImplCopyWithImpl(_$TimeTableResponseImpl _value,
      $Res Function(_$TimeTableResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimeTableResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scheduledClasses = freezed,
    Object? weeklyScheduledClasses = freezed,
    Object? classRoom = freezed,
    Object? classTeacher = freezed,
    Object? todayDayName = freezed,
    Object? breakTime = freezed,
  }) {
    return _then(_$TimeTableResponseImpl(
      scheduledClasses: freezed == scheduledClasses
          ? _value._scheduledClasses
          : scheduledClasses // ignore: cast_nullable_to_non_nullable
              as List<ClassItem>?,
      weeklyScheduledClasses: freezed == weeklyScheduledClasses
          ? _value._weeklyScheduledClasses
          : weeklyScheduledClasses // ignore: cast_nullable_to_non_nullable
              as List<WeeklyScheduleItem>?,
      classRoom: freezed == classRoom
          ? _value.classRoom
          : classRoom // ignore: cast_nullable_to_non_nullable
              as String?,
      classTeacher: freezed == classTeacher
          ? _value.classTeacher
          : classTeacher // ignore: cast_nullable_to_non_nullable
              as String?,
      todayDayName: freezed == todayDayName
          ? _value.todayDayName
          : todayDayName // ignore: cast_nullable_to_non_nullable
              as String?,
      breakTime: freezed == breakTime
          ? _value.breakTime
          : breakTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimeTableResponseImpl implements _TimeTableResponse {
  const _$TimeTableResponseImpl(
      {@JsonKey(name: 'scheduled_classes')
      final List<ClassItem>? scheduledClasses,
      @JsonKey(name: 'weekly_scheduled_classes')
      final List<WeeklyScheduleItem>? weeklyScheduledClasses,
      @JsonKey(name: 'class_room') this.classRoom,
      @JsonKey(name: 'class_teacher') this.classTeacher,
      @JsonKey(name: 'today_day_name') this.todayDayName,
      @JsonKey(name: 'break_time') this.breakTime})
      : _scheduledClasses = scheduledClasses,
        _weeklyScheduledClasses = weeklyScheduledClasses;

  factory _$TimeTableResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimeTableResponseImplFromJson(json);

  final List<ClassItem>? _scheduledClasses;
  @override
  @JsonKey(name: 'scheduled_classes')
  List<ClassItem>? get scheduledClasses {
    final value = _scheduledClasses;
    if (value == null) return null;
    if (_scheduledClasses is EqualUnmodifiableListView)
      return _scheduledClasses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<WeeklyScheduleItem>? _weeklyScheduledClasses;
  @override
  @JsonKey(name: 'weekly_scheduled_classes')
  List<WeeklyScheduleItem>? get weeklyScheduledClasses {
    final value = _weeklyScheduledClasses;
    if (value == null) return null;
    if (_weeklyScheduledClasses is EqualUnmodifiableListView)
      return _weeklyScheduledClasses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'class_room')
  final String? classRoom;
  @override
  @JsonKey(name: 'class_teacher')
  final String? classTeacher;
  @override
  @JsonKey(name: 'today_day_name')
  final String? todayDayName;
  @override
  @JsonKey(name: 'break_time')
  final String? breakTime;

  @override
  String toString() {
    return 'TimeTableResponse(scheduledClasses: $scheduledClasses, weeklyScheduledClasses: $weeklyScheduledClasses, classRoom: $classRoom, classTeacher: $classTeacher, todayDayName: $todayDayName, breakTime: $breakTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeTableResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._scheduledClasses, _scheduledClasses) &&
            const DeepCollectionEquality().equals(
                other._weeklyScheduledClasses, _weeklyScheduledClasses) &&
            (identical(other.classRoom, classRoom) ||
                other.classRoom == classRoom) &&
            (identical(other.classTeacher, classTeacher) ||
                other.classTeacher == classTeacher) &&
            (identical(other.todayDayName, todayDayName) ||
                other.todayDayName == todayDayName) &&
            (identical(other.breakTime, breakTime) ||
                other.breakTime == breakTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_scheduledClasses),
      const DeepCollectionEquality().hash(_weeklyScheduledClasses),
      classRoom,
      classTeacher,
      todayDayName,
      breakTime);

  /// Create a copy of TimeTableResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeTableResponseImplCopyWith<_$TimeTableResponseImpl> get copyWith =>
      __$$TimeTableResponseImplCopyWithImpl<_$TimeTableResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimeTableResponseImplToJson(
      this,
    );
  }
}

abstract class _TimeTableResponse implements TimeTableResponse {
  const factory _TimeTableResponse(
          {@JsonKey(name: 'scheduled_classes')
          final List<ClassItem>? scheduledClasses,
          @JsonKey(name: 'weekly_scheduled_classes')
          final List<WeeklyScheduleItem>? weeklyScheduledClasses,
          @JsonKey(name: 'class_room') final String? classRoom,
          @JsonKey(name: 'class_teacher') final String? classTeacher,
          @JsonKey(name: 'today_day_name') final String? todayDayName,
          @JsonKey(name: 'break_time') final String? breakTime}) =
      _$TimeTableResponseImpl;

  factory _TimeTableResponse.fromJson(Map<String, dynamic> json) =
      _$TimeTableResponseImpl.fromJson;

  @override
  @JsonKey(name: 'scheduled_classes')
  List<ClassItem>? get scheduledClasses;
  @override
  @JsonKey(name: 'weekly_scheduled_classes')
  List<WeeklyScheduleItem>? get weeklyScheduledClasses;
  @override
  @JsonKey(name: 'class_room')
  String? get classRoom;
  @override
  @JsonKey(name: 'class_teacher')
  String? get classTeacher;
  @override
  @JsonKey(name: 'today_day_name')
  String? get todayDayName;
  @override
  @JsonKey(name: 'break_time')
  String? get breakTime;

  /// Create a copy of TimeTableResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimeTableResponseImplCopyWith<_$TimeTableResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WeeklyScheduleItem _$WeeklyScheduleItemFromJson(Map<String, dynamic> json) {
  return _WeeklyScheduleItem.fromJson(json);
}

/// @nodoc
mixin _$WeeklyScheduleItem {
  @JsonKey(name: 'day')
  String? get day => throw _privateConstructorUsedError;
  @JsonKey(name: 'classes')
  List<ClassItem>? get classes => throw _privateConstructorUsedError;

  /// Serializes this WeeklyScheduleItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WeeklyScheduleItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeeklyScheduleItemCopyWith<WeeklyScheduleItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeeklyScheduleItemCopyWith<$Res> {
  factory $WeeklyScheduleItemCopyWith(
          WeeklyScheduleItem value, $Res Function(WeeklyScheduleItem) then) =
      _$WeeklyScheduleItemCopyWithImpl<$Res, WeeklyScheduleItem>;
  @useResult
  $Res call(
      {@JsonKey(name: 'day') String? day,
      @JsonKey(name: 'classes') List<ClassItem>? classes});
}

/// @nodoc
class _$WeeklyScheduleItemCopyWithImpl<$Res, $Val extends WeeklyScheduleItem>
    implements $WeeklyScheduleItemCopyWith<$Res> {
  _$WeeklyScheduleItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeeklyScheduleItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = freezed,
    Object? classes = freezed,
  }) {
    return _then(_value.copyWith(
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
      classes: freezed == classes
          ? _value.classes
          : classes // ignore: cast_nullable_to_non_nullable
              as List<ClassItem>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeeklyScheduleItemImplCopyWith<$Res>
    implements $WeeklyScheduleItemCopyWith<$Res> {
  factory _$$WeeklyScheduleItemImplCopyWith(_$WeeklyScheduleItemImpl value,
          $Res Function(_$WeeklyScheduleItemImpl) then) =
      __$$WeeklyScheduleItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'day') String? day,
      @JsonKey(name: 'classes') List<ClassItem>? classes});
}

/// @nodoc
class __$$WeeklyScheduleItemImplCopyWithImpl<$Res>
    extends _$WeeklyScheduleItemCopyWithImpl<$Res, _$WeeklyScheduleItemImpl>
    implements _$$WeeklyScheduleItemImplCopyWith<$Res> {
  __$$WeeklyScheduleItemImplCopyWithImpl(_$WeeklyScheduleItemImpl _value,
      $Res Function(_$WeeklyScheduleItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeeklyScheduleItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = freezed,
    Object? classes = freezed,
  }) {
    return _then(_$WeeklyScheduleItemImpl(
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
      classes: freezed == classes
          ? _value._classes
          : classes // ignore: cast_nullable_to_non_nullable
              as List<ClassItem>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeeklyScheduleItemImpl implements _WeeklyScheduleItem {
  const _$WeeklyScheduleItemImpl(
      {@JsonKey(name: 'day') this.day,
      @JsonKey(name: 'classes') final List<ClassItem>? classes})
      : _classes = classes;

  factory _$WeeklyScheduleItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeeklyScheduleItemImplFromJson(json);

  @override
  @JsonKey(name: 'day')
  final String? day;
  final List<ClassItem>? _classes;
  @override
  @JsonKey(name: 'classes')
  List<ClassItem>? get classes {
    final value = _classes;
    if (value == null) return null;
    if (_classes is EqualUnmodifiableListView) return _classes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'WeeklyScheduleItem(day: $day, classes: $classes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeeklyScheduleItemImpl &&
            (identical(other.day, day) || other.day == day) &&
            const DeepCollectionEquality().equals(other._classes, _classes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, day, const DeepCollectionEquality().hash(_classes));

  /// Create a copy of WeeklyScheduleItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeeklyScheduleItemImplCopyWith<_$WeeklyScheduleItemImpl> get copyWith =>
      __$$WeeklyScheduleItemImplCopyWithImpl<_$WeeklyScheduleItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeeklyScheduleItemImplToJson(
      this,
    );
  }
}

abstract class _WeeklyScheduleItem implements WeeklyScheduleItem {
  const factory _WeeklyScheduleItem(
          {@JsonKey(name: 'day') final String? day,
          @JsonKey(name: 'classes') final List<ClassItem>? classes}) =
      _$WeeklyScheduleItemImpl;

  factory _WeeklyScheduleItem.fromJson(Map<String, dynamic> json) =
      _$WeeklyScheduleItemImpl.fromJson;

  @override
  @JsonKey(name: 'day')
  String? get day;
  @override
  @JsonKey(name: 'classes')
  List<ClassItem>? get classes;

  /// Create a copy of WeeklyScheduleItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeeklyScheduleItemImplCopyWith<_$WeeklyScheduleItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ClassItem _$ClassItemFromJson(Map<String, dynamic> json) {
  return _ClassItem.fromJson(json);
}

/// @nodoc
mixin _$ClassItem {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'period')
  String? get period => throw _privateConstructorUsedError;
  @JsonKey(name: 'time')
  String? get time => throw _privateConstructorUsedError;
  @JsonKey(name: 'subject')
  String? get subject => throw _privateConstructorUsedError;
  @JsonKey(name: 'class')
  String? get className => throw _privateConstructorUsedError;
  @JsonKey(name: 'section')
  String? get section => throw _privateConstructorUsedError;
  @JsonKey(name: 'teacher')
  String? get teacher => throw _privateConstructorUsedError;
  @JsonKey(name: 'student_no')
  int? get studentNo => throw _privateConstructorUsedError;

  /// Serializes this ClassItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClassItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClassItemCopyWith<ClassItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassItemCopyWith<$Res> {
  factory $ClassItemCopyWith(ClassItem value, $Res Function(ClassItem) then) =
      _$ClassItemCopyWithImpl<$Res, ClassItem>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'period') String? period,
      @JsonKey(name: 'time') String? time,
      @JsonKey(name: 'subject') String? subject,
      @JsonKey(name: 'class') String? className,
      @JsonKey(name: 'section') String? section,
      @JsonKey(name: 'teacher') String? teacher,
      @JsonKey(name: 'student_no') int? studentNo});
}

/// @nodoc
class _$ClassItemCopyWithImpl<$Res, $Val extends ClassItem>
    implements $ClassItemCopyWith<$Res> {
  _$ClassItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClassItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? period = freezed,
    Object? time = freezed,
    Object? subject = freezed,
    Object? className = freezed,
    Object? section = freezed,
    Object? teacher = freezed,
    Object? studentNo = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
      className: freezed == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String?,
      section: freezed == section
          ? _value.section
          : section // ignore: cast_nullable_to_non_nullable
              as String?,
      teacher: freezed == teacher
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as String?,
      studentNo: freezed == studentNo
          ? _value.studentNo
          : studentNo // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClassItemImplCopyWith<$Res>
    implements $ClassItemCopyWith<$Res> {
  factory _$$ClassItemImplCopyWith(
          _$ClassItemImpl value, $Res Function(_$ClassItemImpl) then) =
      __$$ClassItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'period') String? period,
      @JsonKey(name: 'time') String? time,
      @JsonKey(name: 'subject') String? subject,
      @JsonKey(name: 'class') String? className,
      @JsonKey(name: 'section') String? section,
      @JsonKey(name: 'teacher') String? teacher,
      @JsonKey(name: 'student_no') int? studentNo});
}

/// @nodoc
class __$$ClassItemImplCopyWithImpl<$Res>
    extends _$ClassItemCopyWithImpl<$Res, _$ClassItemImpl>
    implements _$$ClassItemImplCopyWith<$Res> {
  __$$ClassItemImplCopyWithImpl(
      _$ClassItemImpl _value, $Res Function(_$ClassItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClassItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? period = freezed,
    Object? time = freezed,
    Object? subject = freezed,
    Object? className = freezed,
    Object? section = freezed,
    Object? teacher = freezed,
    Object? studentNo = freezed,
  }) {
    return _then(_$ClassItemImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
      className: freezed == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String?,
      section: freezed == section
          ? _value.section
          : section // ignore: cast_nullable_to_non_nullable
              as String?,
      teacher: freezed == teacher
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as String?,
      studentNo: freezed == studentNo
          ? _value.studentNo
          : studentNo // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClassItemImpl implements _ClassItem {
  const _$ClassItemImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'period') this.period,
      @JsonKey(name: 'time') this.time,
      @JsonKey(name: 'subject') this.subject,
      @JsonKey(name: 'class') this.className,
      @JsonKey(name: 'section') this.section,
      @JsonKey(name: 'teacher') this.teacher,
      @JsonKey(name: 'student_no') this.studentNo});

  factory _$ClassItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClassItemImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
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
  @JsonKey(name: 'class')
  final String? className;
  @override
  @JsonKey(name: 'section')
  final String? section;
  @override
  @JsonKey(name: 'teacher')
  final String? teacher;
  @override
  @JsonKey(name: 'student_no')
  final int? studentNo;

  @override
  String toString() {
    return 'ClassItem(id: $id, period: $period, time: $time, subject: $subject, className: $className, section: $section, teacher: $teacher, studentNo: $studentNo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.period, period) || other.period == period) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.className, className) ||
                other.className == className) &&
            (identical(other.section, section) || other.section == section) &&
            (identical(other.teacher, teacher) || other.teacher == teacher) &&
            (identical(other.studentNo, studentNo) ||
                other.studentNo == studentNo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, period, time, subject,
      className, section, teacher, studentNo);

  /// Create a copy of ClassItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassItemImplCopyWith<_$ClassItemImpl> get copyWith =>
      __$$ClassItemImplCopyWithImpl<_$ClassItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClassItemImplToJson(
      this,
    );
  }
}

abstract class _ClassItem implements ClassItem {
  const factory _ClassItem(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'period') final String? period,
      @JsonKey(name: 'time') final String? time,
      @JsonKey(name: 'subject') final String? subject,
      @JsonKey(name: 'class') final String? className,
      @JsonKey(name: 'section') final String? section,
      @JsonKey(name: 'teacher') final String? teacher,
      @JsonKey(name: 'student_no') final int? studentNo}) = _$ClassItemImpl;

  factory _ClassItem.fromJson(Map<String, dynamic> json) =
      _$ClassItemImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
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
  @JsonKey(name: 'class')
  String? get className;
  @override
  @JsonKey(name: 'section')
  String? get section;
  @override
  @JsonKey(name: 'teacher')
  String? get teacher;
  @override
  @JsonKey(name: 'student_no')
  int? get studentNo;

  /// Create a copy of ClassItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClassItemImplCopyWith<_$ClassItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
