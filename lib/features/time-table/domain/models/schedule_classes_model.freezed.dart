// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_classes_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TimeTableResponse {

@JsonKey(name: 'scheduled_classes') List<ClassItem>? get scheduledClasses;@JsonKey(name: 'weekly_scheduled_classes') List<WeeklyScheduleItem>? get weeklyScheduledClasses;@JsonKey(name: 'class_room') String? get classRoom;@JsonKey(name: 'class_teacher') String? get classTeacher;@JsonKey(name: 'today_day_name') String? get todayDayName;@JsonKey(name: 'break_time') String? get breakTime;
/// Create a copy of TimeTableResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TimeTableResponseCopyWith<TimeTableResponse> get copyWith => _$TimeTableResponseCopyWithImpl<TimeTableResponse>(this as TimeTableResponse, _$identity);

  /// Serializes this TimeTableResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TimeTableResponse&&const DeepCollectionEquality().equals(other.scheduledClasses, scheduledClasses)&&const DeepCollectionEquality().equals(other.weeklyScheduledClasses, weeklyScheduledClasses)&&(identical(other.classRoom, classRoom) || other.classRoom == classRoom)&&(identical(other.classTeacher, classTeacher) || other.classTeacher == classTeacher)&&(identical(other.todayDayName, todayDayName) || other.todayDayName == todayDayName)&&(identical(other.breakTime, breakTime) || other.breakTime == breakTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(scheduledClasses),const DeepCollectionEquality().hash(weeklyScheduledClasses),classRoom,classTeacher,todayDayName,breakTime);

@override
String toString() {
  return 'TimeTableResponse(scheduledClasses: $scheduledClasses, weeklyScheduledClasses: $weeklyScheduledClasses, classRoom: $classRoom, classTeacher: $classTeacher, todayDayName: $todayDayName, breakTime: $breakTime)';
}


}

/// @nodoc
abstract mixin class $TimeTableResponseCopyWith<$Res>  {
  factory $TimeTableResponseCopyWith(TimeTableResponse value, $Res Function(TimeTableResponse) _then) = _$TimeTableResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'scheduled_classes') List<ClassItem>? scheduledClasses,@JsonKey(name: 'weekly_scheduled_classes') List<WeeklyScheduleItem>? weeklyScheduledClasses,@JsonKey(name: 'class_room') String? classRoom,@JsonKey(name: 'class_teacher') String? classTeacher,@JsonKey(name: 'today_day_name') String? todayDayName,@JsonKey(name: 'break_time') String? breakTime
});




}
/// @nodoc
class _$TimeTableResponseCopyWithImpl<$Res>
    implements $TimeTableResponseCopyWith<$Res> {
  _$TimeTableResponseCopyWithImpl(this._self, this._then);

  final TimeTableResponse _self;
  final $Res Function(TimeTableResponse) _then;

/// Create a copy of TimeTableResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? scheduledClasses = freezed,Object? weeklyScheduledClasses = freezed,Object? classRoom = freezed,Object? classTeacher = freezed,Object? todayDayName = freezed,Object? breakTime = freezed,}) {
  return _then(TimeTableResponse(
scheduledClasses: freezed == scheduledClasses ? _self.scheduledClasses : scheduledClasses // ignore: cast_nullable_to_non_nullable
as List<ClassItem>?,weeklyScheduledClasses: freezed == weeklyScheduledClasses ? _self.weeklyScheduledClasses : weeklyScheduledClasses // ignore: cast_nullable_to_non_nullable
as List<WeeklyScheduleItem>?,classRoom: freezed == classRoom ? _self.classRoom : classRoom // ignore: cast_nullable_to_non_nullable
as String?,classTeacher: freezed == classTeacher ? _self.classTeacher : classTeacher // ignore: cast_nullable_to_non_nullable
as String?,todayDayName: freezed == todayDayName ? _self.todayDayName : todayDayName // ignore: cast_nullable_to_non_nullable
as String?,breakTime: freezed == breakTime ? _self.breakTime : breakTime // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TimeTableResponse].
extension TimeTableResponsePatterns on TimeTableResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TimeTableResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TimeTableResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TimeTableResponse value)  $default,){
final _that = this;
switch (_that) {
case _TimeTableResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TimeTableResponse value)?  $default,){
final _that = this;
switch (_that) {
case _TimeTableResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'scheduled_classes')  List<ClassItem>? scheduledClasses, @JsonKey(name: 'weekly_scheduled_classes')  List<WeeklyScheduleItem>? weeklyScheduledClasses, @JsonKey(name: 'class_room')  String? classRoom, @JsonKey(name: 'class_teacher')  String? classTeacher, @JsonKey(name: 'today_day_name')  String? todayDayName, @JsonKey(name: 'break_time')  String? breakTime)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TimeTableResponse() when $default != null:
return $default(_that.scheduledClasses,_that.weeklyScheduledClasses,_that.classRoom,_that.classTeacher,_that.todayDayName,_that.breakTime);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'scheduled_classes')  List<ClassItem>? scheduledClasses, @JsonKey(name: 'weekly_scheduled_classes')  List<WeeklyScheduleItem>? weeklyScheduledClasses, @JsonKey(name: 'class_room')  String? classRoom, @JsonKey(name: 'class_teacher')  String? classTeacher, @JsonKey(name: 'today_day_name')  String? todayDayName, @JsonKey(name: 'break_time')  String? breakTime)  $default,) {final _that = this;
switch (_that) {
case _TimeTableResponse():
return $default(_that.scheduledClasses,_that.weeklyScheduledClasses,_that.classRoom,_that.classTeacher,_that.todayDayName,_that.breakTime);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'scheduled_classes')  List<ClassItem>? scheduledClasses, @JsonKey(name: 'weekly_scheduled_classes')  List<WeeklyScheduleItem>? weeklyScheduledClasses, @JsonKey(name: 'class_room')  String? classRoom, @JsonKey(name: 'class_teacher')  String? classTeacher, @JsonKey(name: 'today_day_name')  String? todayDayName, @JsonKey(name: 'break_time')  String? breakTime)?  $default,) {final _that = this;
switch (_that) {
case _TimeTableResponse() when $default != null:
return $default(_that.scheduledClasses,_that.weeklyScheduledClasses,_that.classRoom,_that.classTeacher,_that.todayDayName,_that.breakTime);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TimeTableResponse implements TimeTableResponse {
  const _TimeTableResponse({@JsonKey(name: 'scheduled_classes')  List<ClassItem>? scheduledClasses, @JsonKey(name: 'weekly_scheduled_classes')  List<WeeklyScheduleItem>? weeklyScheduledClasses, @JsonKey(name: 'class_room') this.classRoom, @JsonKey(name: 'class_teacher') this.classTeacher, @JsonKey(name: 'today_day_name') this.todayDayName, @JsonKey(name: 'break_time') this.breakTime}): _scheduledClasses = scheduledClasses,_weeklyScheduledClasses = weeklyScheduledClasses;
  factory _TimeTableResponse.fromJson(Map<String, dynamic> json) => _$TimeTableResponseFromJson(json);

 final  List<ClassItem>? _scheduledClasses;
@override@JsonKey(name: 'scheduled_classes') List<ClassItem>? get scheduledClasses {
  final value = _scheduledClasses;
  if (value == null) return null;
  if (_scheduledClasses is EqualUnmodifiableListView) return _scheduledClasses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<WeeklyScheduleItem>? _weeklyScheduledClasses;
@override@JsonKey(name: 'weekly_scheduled_classes') List<WeeklyScheduleItem>? get weeklyScheduledClasses {
  final value = _weeklyScheduledClasses;
  if (value == null) return null;
  if (_weeklyScheduledClasses is EqualUnmodifiableListView) return _weeklyScheduledClasses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'class_room') final  String? classRoom;
@override@JsonKey(name: 'class_teacher') final  String? classTeacher;
@override@JsonKey(name: 'today_day_name') final  String? todayDayName;
@override@JsonKey(name: 'break_time') final  String? breakTime;

/// Create a copy of TimeTableResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TimeTableResponseCopyWith<_TimeTableResponse> get copyWith => __$TimeTableResponseCopyWithImpl<_TimeTableResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TimeTableResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TimeTableResponse&&const DeepCollectionEquality().equals(other._scheduledClasses, _scheduledClasses)&&const DeepCollectionEquality().equals(other._weeklyScheduledClasses, _weeklyScheduledClasses)&&(identical(other.classRoom, classRoom) || other.classRoom == classRoom)&&(identical(other.classTeacher, classTeacher) || other.classTeacher == classTeacher)&&(identical(other.todayDayName, todayDayName) || other.todayDayName == todayDayName)&&(identical(other.breakTime, breakTime) || other.breakTime == breakTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_scheduledClasses),const DeepCollectionEquality().hash(_weeklyScheduledClasses),classRoom,classTeacher,todayDayName,breakTime);

@override
String toString() {
  return 'TimeTableResponse(scheduledClasses: $scheduledClasses, weeklyScheduledClasses: $weeklyScheduledClasses, classRoom: $classRoom, classTeacher: $classTeacher, todayDayName: $todayDayName, breakTime: $breakTime)';
}


}

/// @nodoc
abstract mixin class _$TimeTableResponseCopyWith<$Res> implements $TimeTableResponseCopyWith<$Res> {
  factory _$TimeTableResponseCopyWith(_TimeTableResponse value, $Res Function(_TimeTableResponse) _then) = __$TimeTableResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'scheduled_classes') List<ClassItem>? scheduledClasses,@JsonKey(name: 'weekly_scheduled_classes') List<WeeklyScheduleItem>? weeklyScheduledClasses,@JsonKey(name: 'class_room') String? classRoom,@JsonKey(name: 'class_teacher') String? classTeacher,@JsonKey(name: 'today_day_name') String? todayDayName,@JsonKey(name: 'break_time') String? breakTime
});




}
/// @nodoc
class __$TimeTableResponseCopyWithImpl<$Res>
    implements _$TimeTableResponseCopyWith<$Res> {
  __$TimeTableResponseCopyWithImpl(this._self, this._then);

  final _TimeTableResponse _self;
  final $Res Function(_TimeTableResponse) _then;

/// Create a copy of TimeTableResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? scheduledClasses = freezed,Object? weeklyScheduledClasses = freezed,Object? classRoom = freezed,Object? classTeacher = freezed,Object? todayDayName = freezed,Object? breakTime = freezed,}) {
  return _then(_TimeTableResponse(
scheduledClasses: freezed == scheduledClasses ? _self._scheduledClasses : scheduledClasses // ignore: cast_nullable_to_non_nullable
as List<ClassItem>?,weeklyScheduledClasses: freezed == weeklyScheduledClasses ? _self._weeklyScheduledClasses : weeklyScheduledClasses // ignore: cast_nullable_to_non_nullable
as List<WeeklyScheduleItem>?,classRoom: freezed == classRoom ? _self.classRoom : classRoom // ignore: cast_nullable_to_non_nullable
as String?,classTeacher: freezed == classTeacher ? _self.classTeacher : classTeacher // ignore: cast_nullable_to_non_nullable
as String?,todayDayName: freezed == todayDayName ? _self.todayDayName : todayDayName // ignore: cast_nullable_to_non_nullable
as String?,breakTime: freezed == breakTime ? _self.breakTime : breakTime // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$WeeklyScheduleItem {

@JsonKey(name: 'day') String? get day;@JsonKey(name: 'classes') List<ClassItem>? get classes;
/// Create a copy of WeeklyScheduleItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeeklyScheduleItemCopyWith<WeeklyScheduleItem> get copyWith => _$WeeklyScheduleItemCopyWithImpl<WeeklyScheduleItem>(this as WeeklyScheduleItem, _$identity);

  /// Serializes this WeeklyScheduleItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeeklyScheduleItem&&(identical(other.day, day) || other.day == day)&&const DeepCollectionEquality().equals(other.classes, classes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,day,const DeepCollectionEquality().hash(classes));

@override
String toString() {
  return 'WeeklyScheduleItem(day: $day, classes: $classes)';
}


}

/// @nodoc
abstract mixin class $WeeklyScheduleItemCopyWith<$Res>  {
  factory $WeeklyScheduleItemCopyWith(WeeklyScheduleItem value, $Res Function(WeeklyScheduleItem) _then) = _$WeeklyScheduleItemCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'day') String? day,@JsonKey(name: 'classes') List<ClassItem>? classes
});




}
/// @nodoc
class _$WeeklyScheduleItemCopyWithImpl<$Res>
    implements $WeeklyScheduleItemCopyWith<$Res> {
  _$WeeklyScheduleItemCopyWithImpl(this._self, this._then);

  final WeeklyScheduleItem _self;
  final $Res Function(WeeklyScheduleItem) _then;

/// Create a copy of WeeklyScheduleItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? day = freezed,Object? classes = freezed,}) {
  return _then(WeeklyScheduleItem(
day: freezed == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as String?,classes: freezed == classes ? _self.classes : classes // ignore: cast_nullable_to_non_nullable
as List<ClassItem>?,
  ));
}

}


/// Adds pattern-matching-related methods to [WeeklyScheduleItem].
extension WeeklyScheduleItemPatterns on WeeklyScheduleItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WeeklyScheduleItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WeeklyScheduleItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WeeklyScheduleItem value)  $default,){
final _that = this;
switch (_that) {
case _WeeklyScheduleItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WeeklyScheduleItem value)?  $default,){
final _that = this;
switch (_that) {
case _WeeklyScheduleItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'day')  String? day, @JsonKey(name: 'classes')  List<ClassItem>? classes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WeeklyScheduleItem() when $default != null:
return $default(_that.day,_that.classes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'day')  String? day, @JsonKey(name: 'classes')  List<ClassItem>? classes)  $default,) {final _that = this;
switch (_that) {
case _WeeklyScheduleItem():
return $default(_that.day,_that.classes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'day')  String? day, @JsonKey(name: 'classes')  List<ClassItem>? classes)?  $default,) {final _that = this;
switch (_that) {
case _WeeklyScheduleItem() when $default != null:
return $default(_that.day,_that.classes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WeeklyScheduleItem implements WeeklyScheduleItem {
  const _WeeklyScheduleItem({@JsonKey(name: 'day') this.day, @JsonKey(name: 'classes')  List<ClassItem>? classes}): _classes = classes;
  factory _WeeklyScheduleItem.fromJson(Map<String, dynamic> json) => _$WeeklyScheduleItemFromJson(json);

@override@JsonKey(name: 'day') final  String? day;
 final  List<ClassItem>? _classes;
@override@JsonKey(name: 'classes') List<ClassItem>? get classes {
  final value = _classes;
  if (value == null) return null;
  if (_classes is EqualUnmodifiableListView) return _classes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of WeeklyScheduleItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WeeklyScheduleItemCopyWith<_WeeklyScheduleItem> get copyWith => __$WeeklyScheduleItemCopyWithImpl<_WeeklyScheduleItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WeeklyScheduleItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WeeklyScheduleItem&&(identical(other.day, day) || other.day == day)&&const DeepCollectionEquality().equals(other._classes, _classes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,day,const DeepCollectionEquality().hash(_classes));

@override
String toString() {
  return 'WeeklyScheduleItem(day: $day, classes: $classes)';
}


}

/// @nodoc
abstract mixin class _$WeeklyScheduleItemCopyWith<$Res> implements $WeeklyScheduleItemCopyWith<$Res> {
  factory _$WeeklyScheduleItemCopyWith(_WeeklyScheduleItem value, $Res Function(_WeeklyScheduleItem) _then) = __$WeeklyScheduleItemCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'day') String? day,@JsonKey(name: 'classes') List<ClassItem>? classes
});




}
/// @nodoc
class __$WeeklyScheduleItemCopyWithImpl<$Res>
    implements _$WeeklyScheduleItemCopyWith<$Res> {
  __$WeeklyScheduleItemCopyWithImpl(this._self, this._then);

  final _WeeklyScheduleItem _self;
  final $Res Function(_WeeklyScheduleItem) _then;

/// Create a copy of WeeklyScheduleItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? day = freezed,Object? classes = freezed,}) {
  return _then(_WeeklyScheduleItem(
day: freezed == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as String?,classes: freezed == classes ? _self._classes : classes // ignore: cast_nullable_to_non_nullable
as List<ClassItem>?,
  ));
}


}


/// @nodoc
mixin _$ClassItem {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'period') String? get period;@JsonKey(name: 'time') String? get time;@JsonKey(name: 'subject') String? get subject;@JsonKey(name: 'class') String? get className;@JsonKey(name: 'section') String? get section;@JsonKey(name: 'teacher') String? get teacher;@JsonKey(name: 'student_no') int? get studentNo;
/// Create a copy of ClassItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClassItemCopyWith<ClassItem> get copyWith => _$ClassItemCopyWithImpl<ClassItem>(this as ClassItem, _$identity);

  /// Serializes this ClassItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClassItem&&(identical(other.id, id) || other.id == id)&&(identical(other.period, period) || other.period == period)&&(identical(other.time, time) || other.time == time)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.className, className) || other.className == className)&&(identical(other.section, section) || other.section == section)&&(identical(other.teacher, teacher) || other.teacher == teacher)&&(identical(other.studentNo, studentNo) || other.studentNo == studentNo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,period,time,subject,className,section,teacher,studentNo);

@override
String toString() {
  return 'ClassItem(id: $id, period: $period, time: $time, subject: $subject, className: $className, section: $section, teacher: $teacher, studentNo: $studentNo)';
}


}

/// @nodoc
abstract mixin class $ClassItemCopyWith<$Res>  {
  factory $ClassItemCopyWith(ClassItem value, $Res Function(ClassItem) _then) = _$ClassItemCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'period') String? period,@JsonKey(name: 'time') String? time,@JsonKey(name: 'subject') String? subject,@JsonKey(name: 'class') String? className,@JsonKey(name: 'section') String? section,@JsonKey(name: 'teacher') String? teacher,@JsonKey(name: 'student_no') int? studentNo
});




}
/// @nodoc
class _$ClassItemCopyWithImpl<$Res>
    implements $ClassItemCopyWith<$Res> {
  _$ClassItemCopyWithImpl(this._self, this._then);

  final ClassItem _self;
  final $Res Function(ClassItem) _then;

/// Create a copy of ClassItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? period = freezed,Object? time = freezed,Object? subject = freezed,Object? className = freezed,Object? section = freezed,Object? teacher = freezed,Object? studentNo = freezed,}) {
  return _then(ClassItem(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,period: freezed == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as String?,time: freezed == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as String?,subject: freezed == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String?,className: freezed == className ? _self.className : className // ignore: cast_nullable_to_non_nullable
as String?,section: freezed == section ? _self.section : section // ignore: cast_nullable_to_non_nullable
as String?,teacher: freezed == teacher ? _self.teacher : teacher // ignore: cast_nullable_to_non_nullable
as String?,studentNo: freezed == studentNo ? _self.studentNo : studentNo // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [ClassItem].
extension ClassItemPatterns on ClassItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClassItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClassItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClassItem value)  $default,){
final _that = this;
switch (_that) {
case _ClassItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClassItem value)?  $default,){
final _that = this;
switch (_that) {
case _ClassItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'period')  String? period, @JsonKey(name: 'time')  String? time, @JsonKey(name: 'subject')  String? subject, @JsonKey(name: 'class')  String? className, @JsonKey(name: 'section')  String? section, @JsonKey(name: 'teacher')  String? teacher, @JsonKey(name: 'student_no')  int? studentNo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClassItem() when $default != null:
return $default(_that.id,_that.period,_that.time,_that.subject,_that.className,_that.section,_that.teacher,_that.studentNo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'period')  String? period, @JsonKey(name: 'time')  String? time, @JsonKey(name: 'subject')  String? subject, @JsonKey(name: 'class')  String? className, @JsonKey(name: 'section')  String? section, @JsonKey(name: 'teacher')  String? teacher, @JsonKey(name: 'student_no')  int? studentNo)  $default,) {final _that = this;
switch (_that) {
case _ClassItem():
return $default(_that.id,_that.period,_that.time,_that.subject,_that.className,_that.section,_that.teacher,_that.studentNo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'period')  String? period, @JsonKey(name: 'time')  String? time, @JsonKey(name: 'subject')  String? subject, @JsonKey(name: 'class')  String? className, @JsonKey(name: 'section')  String? section, @JsonKey(name: 'teacher')  String? teacher, @JsonKey(name: 'student_no')  int? studentNo)?  $default,) {final _that = this;
switch (_that) {
case _ClassItem() when $default != null:
return $default(_that.id,_that.period,_that.time,_that.subject,_that.className,_that.section,_that.teacher,_that.studentNo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClassItem implements ClassItem {
  const _ClassItem({@JsonKey(name: 'id') this.id, @JsonKey(name: 'period') this.period, @JsonKey(name: 'time') this.time, @JsonKey(name: 'subject') this.subject, @JsonKey(name: 'class') this.className, @JsonKey(name: 'section') this.section, @JsonKey(name: 'teacher') this.teacher, @JsonKey(name: 'student_no') this.studentNo});
  factory _ClassItem.fromJson(Map<String, dynamic> json) => _$ClassItemFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'period') final  String? period;
@override@JsonKey(name: 'time') final  String? time;
@override@JsonKey(name: 'subject') final  String? subject;
@override@JsonKey(name: 'class') final  String? className;
@override@JsonKey(name: 'section') final  String? section;
@override@JsonKey(name: 'teacher') final  String? teacher;
@override@JsonKey(name: 'student_no') final  int? studentNo;

/// Create a copy of ClassItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClassItemCopyWith<_ClassItem> get copyWith => __$ClassItemCopyWithImpl<_ClassItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClassItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClassItem&&(identical(other.id, id) || other.id == id)&&(identical(other.period, period) || other.period == period)&&(identical(other.time, time) || other.time == time)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.className, className) || other.className == className)&&(identical(other.section, section) || other.section == section)&&(identical(other.teacher, teacher) || other.teacher == teacher)&&(identical(other.studentNo, studentNo) || other.studentNo == studentNo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,period,time,subject,className,section,teacher,studentNo);

@override
String toString() {
  return 'ClassItem(id: $id, period: $period, time: $time, subject: $subject, className: $className, section: $section, teacher: $teacher, studentNo: $studentNo)';
}


}

/// @nodoc
abstract mixin class _$ClassItemCopyWith<$Res> implements $ClassItemCopyWith<$Res> {
  factory _$ClassItemCopyWith(_ClassItem value, $Res Function(_ClassItem) _then) = __$ClassItemCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'period') String? period,@JsonKey(name: 'time') String? time,@JsonKey(name: 'subject') String? subject,@JsonKey(name: 'class') String? className,@JsonKey(name: 'section') String? section,@JsonKey(name: 'teacher') String? teacher,@JsonKey(name: 'student_no') int? studentNo
});




}
/// @nodoc
class __$ClassItemCopyWithImpl<$Res>
    implements _$ClassItemCopyWith<$Res> {
  __$ClassItemCopyWithImpl(this._self, this._then);

  final _ClassItem _self;
  final $Res Function(_ClassItem) _then;

/// Create a copy of ClassItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? period = freezed,Object? time = freezed,Object? subject = freezed,Object? className = freezed,Object? section = freezed,Object? teacher = freezed,Object? studentNo = freezed,}) {
  return _then(_ClassItem(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,period: freezed == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as String?,time: freezed == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as String?,subject: freezed == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String?,className: freezed == className ? _self.className : className // ignore: cast_nullable_to_non_nullable
as String?,section: freezed == section ? _self.section : section // ignore: cast_nullable_to_non_nullable
as String?,teacher: freezed == teacher ? _self.teacher : teacher // ignore: cast_nullable_to_non_nullable
as String?,studentNo: freezed == studentNo ? _self.studentNo : studentNo // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$OngoingClassModel {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'classroom_id') String? get classroomId;@JsonKey(name: 'period') String? get period;@JsonKey(name: 'start_time') String? get startTime;@JsonKey(name: 'end_time') String? get endTime;@JsonKey(name: 'subject') String? get subject;@JsonKey(name: 'class') String? get className;@JsonKey(name: 'section') String? get section;@JsonKey(name: 'teacher') String? get teacher;@JsonKey(name: 'student_no') String? get studentNo;
/// Create a copy of OngoingClassModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OngoingClassModelCopyWith<OngoingClassModel> get copyWith => _$OngoingClassModelCopyWithImpl<OngoingClassModel>(this as OngoingClassModel, _$identity);

  /// Serializes this OngoingClassModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OngoingClassModel&&(identical(other.id, id) || other.id == id)&&(identical(other.classroomId, classroomId) || other.classroomId == classroomId)&&(identical(other.period, period) || other.period == period)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.className, className) || other.className == className)&&(identical(other.section, section) || other.section == section)&&(identical(other.teacher, teacher) || other.teacher == teacher)&&(identical(other.studentNo, studentNo) || other.studentNo == studentNo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,classroomId,period,startTime,endTime,subject,className,section,teacher,studentNo);

@override
String toString() {
  return 'OngoingClassModel(id: $id, classroomId: $classroomId, period: $period, startTime: $startTime, endTime: $endTime, subject: $subject, className: $className, section: $section, teacher: $teacher, studentNo: $studentNo)';
}


}

/// @nodoc
abstract mixin class $OngoingClassModelCopyWith<$Res>  {
  factory $OngoingClassModelCopyWith(OngoingClassModel value, $Res Function(OngoingClassModel) _then) = _$OngoingClassModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'classroom_id') String? classroomId,@JsonKey(name: 'period') String? period,@JsonKey(name: 'start_time') String? startTime,@JsonKey(name: 'end_time') String? endTime,@JsonKey(name: 'subject') String? subject,@JsonKey(name: 'class') String? className,@JsonKey(name: 'section') String? section,@JsonKey(name: 'teacher') String? teacher,@JsonKey(name: 'student_no') String? studentNo
});




}
/// @nodoc
class _$OngoingClassModelCopyWithImpl<$Res>
    implements $OngoingClassModelCopyWith<$Res> {
  _$OngoingClassModelCopyWithImpl(this._self, this._then);

  final OngoingClassModel _self;
  final $Res Function(OngoingClassModel) _then;

/// Create a copy of OngoingClassModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? classroomId = freezed,Object? period = freezed,Object? startTime = freezed,Object? endTime = freezed,Object? subject = freezed,Object? className = freezed,Object? section = freezed,Object? teacher = freezed,Object? studentNo = freezed,}) {
  return _then(OngoingClassModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,classroomId: freezed == classroomId ? _self.classroomId : classroomId // ignore: cast_nullable_to_non_nullable
as String?,period: freezed == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as String?,startTime: freezed == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String?,endTime: freezed == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as String?,subject: freezed == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String?,className: freezed == className ? _self.className : className // ignore: cast_nullable_to_non_nullable
as String?,section: freezed == section ? _self.section : section // ignore: cast_nullable_to_non_nullable
as String?,teacher: freezed == teacher ? _self.teacher : teacher // ignore: cast_nullable_to_non_nullable
as String?,studentNo: freezed == studentNo ? _self.studentNo : studentNo // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [OngoingClassModel].
extension OngoingClassModelPatterns on OngoingClassModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OngoingClassModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OngoingClassModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OngoingClassModel value)  $default,){
final _that = this;
switch (_that) {
case _OngoingClassModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OngoingClassModel value)?  $default,){
final _that = this;
switch (_that) {
case _OngoingClassModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'classroom_id')  String? classroomId, @JsonKey(name: 'period')  String? period, @JsonKey(name: 'start_time')  String? startTime, @JsonKey(name: 'end_time')  String? endTime, @JsonKey(name: 'subject')  String? subject, @JsonKey(name: 'class')  String? className, @JsonKey(name: 'section')  String? section, @JsonKey(name: 'teacher')  String? teacher, @JsonKey(name: 'student_no')  String? studentNo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OngoingClassModel() when $default != null:
return $default(_that.id,_that.classroomId,_that.period,_that.startTime,_that.endTime,_that.subject,_that.className,_that.section,_that.teacher,_that.studentNo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'classroom_id')  String? classroomId, @JsonKey(name: 'period')  String? period, @JsonKey(name: 'start_time')  String? startTime, @JsonKey(name: 'end_time')  String? endTime, @JsonKey(name: 'subject')  String? subject, @JsonKey(name: 'class')  String? className, @JsonKey(name: 'section')  String? section, @JsonKey(name: 'teacher')  String? teacher, @JsonKey(name: 'student_no')  String? studentNo)  $default,) {final _that = this;
switch (_that) {
case _OngoingClassModel():
return $default(_that.id,_that.classroomId,_that.period,_that.startTime,_that.endTime,_that.subject,_that.className,_that.section,_that.teacher,_that.studentNo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'classroom_id')  String? classroomId, @JsonKey(name: 'period')  String? period, @JsonKey(name: 'start_time')  String? startTime, @JsonKey(name: 'end_time')  String? endTime, @JsonKey(name: 'subject')  String? subject, @JsonKey(name: 'class')  String? className, @JsonKey(name: 'section')  String? section, @JsonKey(name: 'teacher')  String? teacher, @JsonKey(name: 'student_no')  String? studentNo)?  $default,) {final _that = this;
switch (_that) {
case _OngoingClassModel() when $default != null:
return $default(_that.id,_that.classroomId,_that.period,_that.startTime,_that.endTime,_that.subject,_that.className,_that.section,_that.teacher,_that.studentNo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OngoingClassModel implements OngoingClassModel {
  const _OngoingClassModel({@JsonKey(name: 'id') this.id, @JsonKey(name: 'classroom_id') this.classroomId, @JsonKey(name: 'period') this.period, @JsonKey(name: 'start_time') this.startTime, @JsonKey(name: 'end_time') this.endTime, @JsonKey(name: 'subject') this.subject, @JsonKey(name: 'class') this.className, @JsonKey(name: 'section') this.section, @JsonKey(name: 'teacher') this.teacher, @JsonKey(name: 'student_no') this.studentNo});
  factory _OngoingClassModel.fromJson(Map<String, dynamic> json) => _$OngoingClassModelFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'classroom_id') final  String? classroomId;
@override@JsonKey(name: 'period') final  String? period;
@override@JsonKey(name: 'start_time') final  String? startTime;
@override@JsonKey(name: 'end_time') final  String? endTime;
@override@JsonKey(name: 'subject') final  String? subject;
@override@JsonKey(name: 'class') final  String? className;
@override@JsonKey(name: 'section') final  String? section;
@override@JsonKey(name: 'teacher') final  String? teacher;
@override@JsonKey(name: 'student_no') final  String? studentNo;

/// Create a copy of OngoingClassModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OngoingClassModelCopyWith<_OngoingClassModel> get copyWith => __$OngoingClassModelCopyWithImpl<_OngoingClassModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OngoingClassModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OngoingClassModel&&(identical(other.id, id) || other.id == id)&&(identical(other.classroomId, classroomId) || other.classroomId == classroomId)&&(identical(other.period, period) || other.period == period)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.className, className) || other.className == className)&&(identical(other.section, section) || other.section == section)&&(identical(other.teacher, teacher) || other.teacher == teacher)&&(identical(other.studentNo, studentNo) || other.studentNo == studentNo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,classroomId,period,startTime,endTime,subject,className,section,teacher,studentNo);

@override
String toString() {
  return 'OngoingClassModel(id: $id, classroomId: $classroomId, period: $period, startTime: $startTime, endTime: $endTime, subject: $subject, className: $className, section: $section, teacher: $teacher, studentNo: $studentNo)';
}


}

/// @nodoc
abstract mixin class _$OngoingClassModelCopyWith<$Res> implements $OngoingClassModelCopyWith<$Res> {
  factory _$OngoingClassModelCopyWith(_OngoingClassModel value, $Res Function(_OngoingClassModel) _then) = __$OngoingClassModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'classroom_id') String? classroomId,@JsonKey(name: 'period') String? period,@JsonKey(name: 'start_time') String? startTime,@JsonKey(name: 'end_time') String? endTime,@JsonKey(name: 'subject') String? subject,@JsonKey(name: 'class') String? className,@JsonKey(name: 'section') String? section,@JsonKey(name: 'teacher') String? teacher,@JsonKey(name: 'student_no') String? studentNo
});




}
/// @nodoc
class __$OngoingClassModelCopyWithImpl<$Res>
    implements _$OngoingClassModelCopyWith<$Res> {
  __$OngoingClassModelCopyWithImpl(this._self, this._then);

  final _OngoingClassModel _self;
  final $Res Function(_OngoingClassModel) _then;

/// Create a copy of OngoingClassModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? classroomId = freezed,Object? period = freezed,Object? startTime = freezed,Object? endTime = freezed,Object? subject = freezed,Object? className = freezed,Object? section = freezed,Object? teacher = freezed,Object? studentNo = freezed,}) {
  return _then(_OngoingClassModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,classroomId: freezed == classroomId ? _self.classroomId : classroomId // ignore: cast_nullable_to_non_nullable
as String?,period: freezed == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as String?,startTime: freezed == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String?,endTime: freezed == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as String?,subject: freezed == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String?,className: freezed == className ? _self.className : className // ignore: cast_nullable_to_non_nullable
as String?,section: freezed == section ? _self.section : section // ignore: cast_nullable_to_non_nullable
as String?,teacher: freezed == teacher ? _self.teacher : teacher // ignore: cast_nullable_to_non_nullable
as String?,studentNo: freezed == studentNo ? _self.studentNo : studentNo // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
