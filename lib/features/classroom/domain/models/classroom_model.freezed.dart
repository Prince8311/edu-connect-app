// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'classroom_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ClassroomModel {

 int? get id;@JsonKey(name: 'classroom_id') String? get classroomId;@JsonKey(name: 'class') String? get className;@JsonKey(name: 'section') String? get section;@JsonKey(name: 'day') String? get day;@JsonKey(name: 'period') String? get period;@JsonKey(name: 'time') String? get time;@JsonKey(name: 'subject') String? get subject;@JsonKey(name: 'teacher') String? get teacher;@JsonKey(name: 'attendance_type') String? get attendanceType;@JsonKey(name: 'attendance_marked') bool? get attendanceMarked;
/// Create a copy of ClassroomModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClassroomModelCopyWith<ClassroomModel> get copyWith => _$ClassroomModelCopyWithImpl<ClassroomModel>(this as ClassroomModel, _$identity);

  /// Serializes this ClassroomModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClassroomModel&&(identical(other.id, id) || other.id == id)&&(identical(other.classroomId, classroomId) || other.classroomId == classroomId)&&(identical(other.className, className) || other.className == className)&&(identical(other.section, section) || other.section == section)&&(identical(other.day, day) || other.day == day)&&(identical(other.period, period) || other.period == period)&&(identical(other.time, time) || other.time == time)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.teacher, teacher) || other.teacher == teacher)&&(identical(other.attendanceType, attendanceType) || other.attendanceType == attendanceType)&&(identical(other.attendanceMarked, attendanceMarked) || other.attendanceMarked == attendanceMarked));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,classroomId,className,section,day,period,time,subject,teacher,attendanceType,attendanceMarked);

@override
String toString() {
  return 'ClassroomModel(id: $id, classroomId: $classroomId, className: $className, section: $section, day: $day, period: $period, time: $time, subject: $subject, teacher: $teacher, attendanceType: $attendanceType, attendanceMarked: $attendanceMarked)';
}


}

/// @nodoc
abstract mixin class $ClassroomModelCopyWith<$Res>  {
  factory $ClassroomModelCopyWith(ClassroomModel value, $Res Function(ClassroomModel) _then) = _$ClassroomModelCopyWithImpl;
@useResult
$Res call({
 int? id,@JsonKey(name: 'classroom_id') String? classroomId,@JsonKey(name: 'class') String? className,@JsonKey(name: 'section') String? section,@JsonKey(name: 'day') String? day,@JsonKey(name: 'period') String? period,@JsonKey(name: 'time') String? time,@JsonKey(name: 'subject') String? subject,@JsonKey(name: 'teacher') String? teacher,@JsonKey(name: 'attendance_type') String? attendanceType,@JsonKey(name: 'attendance_marked') bool? attendanceMarked
});




}
/// @nodoc
class _$ClassroomModelCopyWithImpl<$Res>
    implements $ClassroomModelCopyWith<$Res> {
  _$ClassroomModelCopyWithImpl(this._self, this._then);

  final ClassroomModel _self;
  final $Res Function(ClassroomModel) _then;

/// Create a copy of ClassroomModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? classroomId = freezed,Object? className = freezed,Object? section = freezed,Object? day = freezed,Object? period = freezed,Object? time = freezed,Object? subject = freezed,Object? teacher = freezed,Object? attendanceType = freezed,Object? attendanceMarked = freezed,}) {
  return _then(ClassroomModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,classroomId: freezed == classroomId ? _self.classroomId : classroomId // ignore: cast_nullable_to_non_nullable
as String?,className: freezed == className ? _self.className : className // ignore: cast_nullable_to_non_nullable
as String?,section: freezed == section ? _self.section : section // ignore: cast_nullable_to_non_nullable
as String?,day: freezed == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as String?,period: freezed == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as String?,time: freezed == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as String?,subject: freezed == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String?,teacher: freezed == teacher ? _self.teacher : teacher // ignore: cast_nullable_to_non_nullable
as String?,attendanceType: freezed == attendanceType ? _self.attendanceType : attendanceType // ignore: cast_nullable_to_non_nullable
as String?,attendanceMarked: freezed == attendanceMarked ? _self.attendanceMarked : attendanceMarked // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [ClassroomModel].
extension ClassroomModelPatterns on ClassroomModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClassroomModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClassroomModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClassroomModel value)  $default,){
final _that = this;
switch (_that) {
case _ClassroomModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClassroomModel value)?  $default,){
final _that = this;
switch (_that) {
case _ClassroomModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'classroom_id')  String? classroomId, @JsonKey(name: 'class')  String? className, @JsonKey(name: 'section')  String? section, @JsonKey(name: 'day')  String? day, @JsonKey(name: 'period')  String? period, @JsonKey(name: 'time')  String? time, @JsonKey(name: 'subject')  String? subject, @JsonKey(name: 'teacher')  String? teacher, @JsonKey(name: 'attendance_type')  String? attendanceType, @JsonKey(name: 'attendance_marked')  bool? attendanceMarked)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClassroomModel() when $default != null:
return $default(_that.id,_that.classroomId,_that.className,_that.section,_that.day,_that.period,_that.time,_that.subject,_that.teacher,_that.attendanceType,_that.attendanceMarked);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'classroom_id')  String? classroomId, @JsonKey(name: 'class')  String? className, @JsonKey(name: 'section')  String? section, @JsonKey(name: 'day')  String? day, @JsonKey(name: 'period')  String? period, @JsonKey(name: 'time')  String? time, @JsonKey(name: 'subject')  String? subject, @JsonKey(name: 'teacher')  String? teacher, @JsonKey(name: 'attendance_type')  String? attendanceType, @JsonKey(name: 'attendance_marked')  bool? attendanceMarked)  $default,) {final _that = this;
switch (_that) {
case _ClassroomModel():
return $default(_that.id,_that.classroomId,_that.className,_that.section,_that.day,_that.period,_that.time,_that.subject,_that.teacher,_that.attendanceType,_that.attendanceMarked);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id, @JsonKey(name: 'classroom_id')  String? classroomId, @JsonKey(name: 'class')  String? className, @JsonKey(name: 'section')  String? section, @JsonKey(name: 'day')  String? day, @JsonKey(name: 'period')  String? period, @JsonKey(name: 'time')  String? time, @JsonKey(name: 'subject')  String? subject, @JsonKey(name: 'teacher')  String? teacher, @JsonKey(name: 'attendance_type')  String? attendanceType, @JsonKey(name: 'attendance_marked')  bool? attendanceMarked)?  $default,) {final _that = this;
switch (_that) {
case _ClassroomModel() when $default != null:
return $default(_that.id,_that.classroomId,_that.className,_that.section,_that.day,_that.period,_that.time,_that.subject,_that.teacher,_that.attendanceType,_that.attendanceMarked);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _ClassroomModel implements ClassroomModel {
  const _ClassroomModel({this.id, @JsonKey(name: 'classroom_id') this.classroomId, @JsonKey(name: 'class') this.className, @JsonKey(name: 'section') this.section, @JsonKey(name: 'day') this.day, @JsonKey(name: 'period') this.period, @JsonKey(name: 'time') this.time, @JsonKey(name: 'subject') this.subject, @JsonKey(name: 'teacher') this.teacher, @JsonKey(name: 'attendance_type') this.attendanceType, @JsonKey(name: 'attendance_marked') this.attendanceMarked});
  factory _ClassroomModel.fromJson(Map<String, dynamic> json) => _$ClassroomModelFromJson(json);

@override final  int? id;
@override@JsonKey(name: 'classroom_id') final  String? classroomId;
@override@JsonKey(name: 'class') final  String? className;
@override@JsonKey(name: 'section') final  String? section;
@override@JsonKey(name: 'day') final  String? day;
@override@JsonKey(name: 'period') final  String? period;
@override@JsonKey(name: 'time') final  String? time;
@override@JsonKey(name: 'subject') final  String? subject;
@override@JsonKey(name: 'teacher') final  String? teacher;
@override@JsonKey(name: 'attendance_type') final  String? attendanceType;
@override@JsonKey(name: 'attendance_marked') final  bool? attendanceMarked;

/// Create a copy of ClassroomModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClassroomModelCopyWith<_ClassroomModel> get copyWith => __$ClassroomModelCopyWithImpl<_ClassroomModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClassroomModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClassroomModel&&(identical(other.id, id) || other.id == id)&&(identical(other.classroomId, classroomId) || other.classroomId == classroomId)&&(identical(other.className, className) || other.className == className)&&(identical(other.section, section) || other.section == section)&&(identical(other.day, day) || other.day == day)&&(identical(other.period, period) || other.period == period)&&(identical(other.time, time) || other.time == time)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.teacher, teacher) || other.teacher == teacher)&&(identical(other.attendanceType, attendanceType) || other.attendanceType == attendanceType)&&(identical(other.attendanceMarked, attendanceMarked) || other.attendanceMarked == attendanceMarked));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,classroomId,className,section,day,period,time,subject,teacher,attendanceType,attendanceMarked);

@override
String toString() {
  return 'ClassroomModel(id: $id, classroomId: $classroomId, className: $className, section: $section, day: $day, period: $period, time: $time, subject: $subject, teacher: $teacher, attendanceType: $attendanceType, attendanceMarked: $attendanceMarked)';
}


}

/// @nodoc
abstract mixin class _$ClassroomModelCopyWith<$Res> implements $ClassroomModelCopyWith<$Res> {
  factory _$ClassroomModelCopyWith(_ClassroomModel value, $Res Function(_ClassroomModel) _then) = __$ClassroomModelCopyWithImpl;
@override @useResult
$Res call({
 int? id,@JsonKey(name: 'classroom_id') String? classroomId,@JsonKey(name: 'class') String? className,@JsonKey(name: 'section') String? section,@JsonKey(name: 'day') String? day,@JsonKey(name: 'period') String? period,@JsonKey(name: 'time') String? time,@JsonKey(name: 'subject') String? subject,@JsonKey(name: 'teacher') String? teacher,@JsonKey(name: 'attendance_type') String? attendanceType,@JsonKey(name: 'attendance_marked') bool? attendanceMarked
});




}
/// @nodoc
class __$ClassroomModelCopyWithImpl<$Res>
    implements _$ClassroomModelCopyWith<$Res> {
  __$ClassroomModelCopyWithImpl(this._self, this._then);

  final _ClassroomModel _self;
  final $Res Function(_ClassroomModel) _then;

/// Create a copy of ClassroomModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? classroomId = freezed,Object? className = freezed,Object? section = freezed,Object? day = freezed,Object? period = freezed,Object? time = freezed,Object? subject = freezed,Object? teacher = freezed,Object? attendanceType = freezed,Object? attendanceMarked = freezed,}) {
  return _then(_ClassroomModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,classroomId: freezed == classroomId ? _self.classroomId : classroomId // ignore: cast_nullable_to_non_nullable
as String?,className: freezed == className ? _self.className : className // ignore: cast_nullable_to_non_nullable
as String?,section: freezed == section ? _self.section : section // ignore: cast_nullable_to_non_nullable
as String?,day: freezed == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as String?,period: freezed == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as String?,time: freezed == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as String?,subject: freezed == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String?,teacher: freezed == teacher ? _self.teacher : teacher // ignore: cast_nullable_to_non_nullable
as String?,attendanceType: freezed == attendanceType ? _self.attendanceType : attendanceType // ignore: cast_nullable_to_non_nullable
as String?,attendanceMarked: freezed == attendanceMarked ? _self.attendanceMarked : attendanceMarked // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}


/// @nodoc
mixin _$ClassroomStudentModel {

@JsonKey(name: 'student_id') int? get studentId;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'enrollment_id') String? get enrollmentId;@JsonKey(name: 'profile_image') String? get profileImage;@JsonKey(name: 'attendance_status') String? get attendanceStatus;
/// Create a copy of ClassroomStudentModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClassroomStudentModelCopyWith<ClassroomStudentModel> get copyWith => _$ClassroomStudentModelCopyWithImpl<ClassroomStudentModel>(this as ClassroomStudentModel, _$identity);

  /// Serializes this ClassroomStudentModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClassroomStudentModel&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.name, name) || other.name == name)&&(identical(other.enrollmentId, enrollmentId) || other.enrollmentId == enrollmentId)&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage)&&(identical(other.attendanceStatus, attendanceStatus) || other.attendanceStatus == attendanceStatus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,studentId,name,enrollmentId,profileImage,attendanceStatus);

@override
String toString() {
  return 'ClassroomStudentModel(studentId: $studentId, name: $name, enrollmentId: $enrollmentId, profileImage: $profileImage, attendanceStatus: $attendanceStatus)';
}


}

/// @nodoc
abstract mixin class $ClassroomStudentModelCopyWith<$Res>  {
  factory $ClassroomStudentModelCopyWith(ClassroomStudentModel value, $Res Function(ClassroomStudentModel) _then) = _$ClassroomStudentModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'student_id') int? studentId,@JsonKey(name: 'name') String? name,@JsonKey(name: 'enrollment_id') String? enrollmentId,@JsonKey(name: 'profile_image') String? profileImage,@JsonKey(name: 'attendance_status') String? attendanceStatus
});




}
/// @nodoc
class _$ClassroomStudentModelCopyWithImpl<$Res>
    implements $ClassroomStudentModelCopyWith<$Res> {
  _$ClassroomStudentModelCopyWithImpl(this._self, this._then);

  final ClassroomStudentModel _self;
  final $Res Function(ClassroomStudentModel) _then;

/// Create a copy of ClassroomStudentModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? studentId = freezed,Object? name = freezed,Object? enrollmentId = freezed,Object? profileImage = freezed,Object? attendanceStatus = freezed,}) {
  return _then(ClassroomStudentModel(
studentId: freezed == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,enrollmentId: freezed == enrollmentId ? _self.enrollmentId : enrollmentId // ignore: cast_nullable_to_non_nullable
as String?,profileImage: freezed == profileImage ? _self.profileImage : profileImage // ignore: cast_nullable_to_non_nullable
as String?,attendanceStatus: freezed == attendanceStatus ? _self.attendanceStatus : attendanceStatus // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ClassroomStudentModel].
extension ClassroomStudentModelPatterns on ClassroomStudentModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClassroomStudentModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClassroomStudentModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClassroomStudentModel value)  $default,){
final _that = this;
switch (_that) {
case _ClassroomStudentModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClassroomStudentModel value)?  $default,){
final _that = this;
switch (_that) {
case _ClassroomStudentModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_id')  int? studentId, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'enrollment_id')  String? enrollmentId, @JsonKey(name: 'profile_image')  String? profileImage, @JsonKey(name: 'attendance_status')  String? attendanceStatus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClassroomStudentModel() when $default != null:
return $default(_that.studentId,_that.name,_that.enrollmentId,_that.profileImage,_that.attendanceStatus);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_id')  int? studentId, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'enrollment_id')  String? enrollmentId, @JsonKey(name: 'profile_image')  String? profileImage, @JsonKey(name: 'attendance_status')  String? attendanceStatus)  $default,) {final _that = this;
switch (_that) {
case _ClassroomStudentModel():
return $default(_that.studentId,_that.name,_that.enrollmentId,_that.profileImage,_that.attendanceStatus);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'student_id')  int? studentId, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'enrollment_id')  String? enrollmentId, @JsonKey(name: 'profile_image')  String? profileImage, @JsonKey(name: 'attendance_status')  String? attendanceStatus)?  $default,) {final _that = this;
switch (_that) {
case _ClassroomStudentModel() when $default != null:
return $default(_that.studentId,_that.name,_that.enrollmentId,_that.profileImage,_that.attendanceStatus);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClassroomStudentModel implements ClassroomStudentModel {
  const _ClassroomStudentModel({@JsonKey(name: 'student_id') this.studentId, @JsonKey(name: 'name') this.name, @JsonKey(name: 'enrollment_id') this.enrollmentId, @JsonKey(name: 'profile_image') this.profileImage, @JsonKey(name: 'attendance_status') this.attendanceStatus});
  factory _ClassroomStudentModel.fromJson(Map<String, dynamic> json) => _$ClassroomStudentModelFromJson(json);

@override@JsonKey(name: 'student_id') final  int? studentId;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'enrollment_id') final  String? enrollmentId;
@override@JsonKey(name: 'profile_image') final  String? profileImage;
@override@JsonKey(name: 'attendance_status') final  String? attendanceStatus;

/// Create a copy of ClassroomStudentModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClassroomStudentModelCopyWith<_ClassroomStudentModel> get copyWith => __$ClassroomStudentModelCopyWithImpl<_ClassroomStudentModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClassroomStudentModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClassroomStudentModel&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.name, name) || other.name == name)&&(identical(other.enrollmentId, enrollmentId) || other.enrollmentId == enrollmentId)&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage)&&(identical(other.attendanceStatus, attendanceStatus) || other.attendanceStatus == attendanceStatus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,studentId,name,enrollmentId,profileImage,attendanceStatus);

@override
String toString() {
  return 'ClassroomStudentModel(studentId: $studentId, name: $name, enrollmentId: $enrollmentId, profileImage: $profileImage, attendanceStatus: $attendanceStatus)';
}


}

/// @nodoc
abstract mixin class _$ClassroomStudentModelCopyWith<$Res> implements $ClassroomStudentModelCopyWith<$Res> {
  factory _$ClassroomStudentModelCopyWith(_ClassroomStudentModel value, $Res Function(_ClassroomStudentModel) _then) = __$ClassroomStudentModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'student_id') int? studentId,@JsonKey(name: 'name') String? name,@JsonKey(name: 'enrollment_id') String? enrollmentId,@JsonKey(name: 'profile_image') String? profileImage,@JsonKey(name: 'attendance_status') String? attendanceStatus
});




}
/// @nodoc
class __$ClassroomStudentModelCopyWithImpl<$Res>
    implements _$ClassroomStudentModelCopyWith<$Res> {
  __$ClassroomStudentModelCopyWithImpl(this._self, this._then);

  final _ClassroomStudentModel _self;
  final $Res Function(_ClassroomStudentModel) _then;

/// Create a copy of ClassroomStudentModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? studentId = freezed,Object? name = freezed,Object? enrollmentId = freezed,Object? profileImage = freezed,Object? attendanceStatus = freezed,}) {
  return _then(_ClassroomStudentModel(
studentId: freezed == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,enrollmentId: freezed == enrollmentId ? _self.enrollmentId : enrollmentId // ignore: cast_nullable_to_non_nullable
as String?,profileImage: freezed == profileImage ? _self.profileImage : profileImage // ignore: cast_nullable_to_non_nullable
as String?,attendanceStatus: freezed == attendanceStatus ? _self.attendanceStatus : attendanceStatus // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$AttendanceRequestModel {

@JsonKey(name: 'attendance_type') String? get attendanceType;@JsonKey(name: 'class') String? get className;@JsonKey(name: 'section') String? get section;@JsonKey(name: 'date') String? get date;@JsonKey(name: 'present') String? get present;@JsonKey(name: 'absent') String? get absent;@JsonKey(name: 'classroom_id', includeIfNull: false) String? get classroomId;@JsonKey(name: 'period', includeIfNull: false) String? get period;@JsonKey(name: 'time_slot', includeIfNull: false) String? get timeSlot;@JsonKey(name: 'subject', includeIfNull: false) String? get subject;
/// Create a copy of AttendanceRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttendanceRequestModelCopyWith<AttendanceRequestModel> get copyWith => _$AttendanceRequestModelCopyWithImpl<AttendanceRequestModel>(this as AttendanceRequestModel, _$identity);

  /// Serializes this AttendanceRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttendanceRequestModel&&(identical(other.attendanceType, attendanceType) || other.attendanceType == attendanceType)&&(identical(other.className, className) || other.className == className)&&(identical(other.section, section) || other.section == section)&&(identical(other.date, date) || other.date == date)&&(identical(other.present, present) || other.present == present)&&(identical(other.absent, absent) || other.absent == absent)&&(identical(other.classroomId, classroomId) || other.classroomId == classroomId)&&(identical(other.period, period) || other.period == period)&&(identical(other.timeSlot, timeSlot) || other.timeSlot == timeSlot)&&(identical(other.subject, subject) || other.subject == subject));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,attendanceType,className,section,date,present,absent,classroomId,period,timeSlot,subject);

@override
String toString() {
  return 'AttendanceRequestModel(attendanceType: $attendanceType, className: $className, section: $section, date: $date, present: $present, absent: $absent, classroomId: $classroomId, period: $period, timeSlot: $timeSlot, subject: $subject)';
}


}

/// @nodoc
abstract mixin class $AttendanceRequestModelCopyWith<$Res>  {
  factory $AttendanceRequestModelCopyWith(AttendanceRequestModel value, $Res Function(AttendanceRequestModel) _then) = _$AttendanceRequestModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'attendance_type') String? attendanceType,@JsonKey(name: 'class') String? className,@JsonKey(name: 'section') String? section,@JsonKey(name: 'date') String? date,@JsonKey(name: 'present') String? present,@JsonKey(name: 'absent') String? absent,@JsonKey(name: 'classroom_id', includeIfNull: false) String? classroomId,@JsonKey(name: 'period', includeIfNull: false) String? period,@JsonKey(name: 'time_slot', includeIfNull: false) String? timeSlot,@JsonKey(name: 'subject', includeIfNull: false) String? subject
});




}
/// @nodoc
class _$AttendanceRequestModelCopyWithImpl<$Res>
    implements $AttendanceRequestModelCopyWith<$Res> {
  _$AttendanceRequestModelCopyWithImpl(this._self, this._then);

  final AttendanceRequestModel _self;
  final $Res Function(AttendanceRequestModel) _then;

/// Create a copy of AttendanceRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? attendanceType = freezed,Object? className = freezed,Object? section = freezed,Object? date = freezed,Object? present = freezed,Object? absent = freezed,Object? classroomId = freezed,Object? period = freezed,Object? timeSlot = freezed,Object? subject = freezed,}) {
  return _then(AttendanceRequestModel(
attendanceType: freezed == attendanceType ? _self.attendanceType : attendanceType // ignore: cast_nullable_to_non_nullable
as String?,className: freezed == className ? _self.className : className // ignore: cast_nullable_to_non_nullable
as String?,section: freezed == section ? _self.section : section // ignore: cast_nullable_to_non_nullable
as String?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,present: freezed == present ? _self.present : present // ignore: cast_nullable_to_non_nullable
as String?,absent: freezed == absent ? _self.absent : absent // ignore: cast_nullable_to_non_nullable
as String?,classroomId: freezed == classroomId ? _self.classroomId : classroomId // ignore: cast_nullable_to_non_nullable
as String?,period: freezed == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as String?,timeSlot: freezed == timeSlot ? _self.timeSlot : timeSlot // ignore: cast_nullable_to_non_nullable
as String?,subject: freezed == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AttendanceRequestModel].
extension AttendanceRequestModelPatterns on AttendanceRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttendanceRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttendanceRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttendanceRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _AttendanceRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttendanceRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _AttendanceRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'attendance_type')  String? attendanceType, @JsonKey(name: 'class')  String? className, @JsonKey(name: 'section')  String? section, @JsonKey(name: 'date')  String? date, @JsonKey(name: 'present')  String? present, @JsonKey(name: 'absent')  String? absent, @JsonKey(name: 'classroom_id', includeIfNull: false)  String? classroomId, @JsonKey(name: 'period', includeIfNull: false)  String? period, @JsonKey(name: 'time_slot', includeIfNull: false)  String? timeSlot, @JsonKey(name: 'subject', includeIfNull: false)  String? subject)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttendanceRequestModel() when $default != null:
return $default(_that.attendanceType,_that.className,_that.section,_that.date,_that.present,_that.absent,_that.classroomId,_that.period,_that.timeSlot,_that.subject);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'attendance_type')  String? attendanceType, @JsonKey(name: 'class')  String? className, @JsonKey(name: 'section')  String? section, @JsonKey(name: 'date')  String? date, @JsonKey(name: 'present')  String? present, @JsonKey(name: 'absent')  String? absent, @JsonKey(name: 'classroom_id', includeIfNull: false)  String? classroomId, @JsonKey(name: 'period', includeIfNull: false)  String? period, @JsonKey(name: 'time_slot', includeIfNull: false)  String? timeSlot, @JsonKey(name: 'subject', includeIfNull: false)  String? subject)  $default,) {final _that = this;
switch (_that) {
case _AttendanceRequestModel():
return $default(_that.attendanceType,_that.className,_that.section,_that.date,_that.present,_that.absent,_that.classroomId,_that.period,_that.timeSlot,_that.subject);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'attendance_type')  String? attendanceType, @JsonKey(name: 'class')  String? className, @JsonKey(name: 'section')  String? section, @JsonKey(name: 'date')  String? date, @JsonKey(name: 'present')  String? present, @JsonKey(name: 'absent')  String? absent, @JsonKey(name: 'classroom_id', includeIfNull: false)  String? classroomId, @JsonKey(name: 'period', includeIfNull: false)  String? period, @JsonKey(name: 'time_slot', includeIfNull: false)  String? timeSlot, @JsonKey(name: 'subject', includeIfNull: false)  String? subject)?  $default,) {final _that = this;
switch (_that) {
case _AttendanceRequestModel() when $default != null:
return $default(_that.attendanceType,_that.className,_that.section,_that.date,_that.present,_that.absent,_that.classroomId,_that.period,_that.timeSlot,_that.subject);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AttendanceRequestModel implements AttendanceRequestModel {
  const _AttendanceRequestModel({@JsonKey(name: 'attendance_type') this.attendanceType, @JsonKey(name: 'class') this.className, @JsonKey(name: 'section') this.section, @JsonKey(name: 'date') this.date, @JsonKey(name: 'present') this.present, @JsonKey(name: 'absent') this.absent, @JsonKey(name: 'classroom_id', includeIfNull: false) this.classroomId, @JsonKey(name: 'period', includeIfNull: false) this.period, @JsonKey(name: 'time_slot', includeIfNull: false) this.timeSlot, @JsonKey(name: 'subject', includeIfNull: false) this.subject});
  factory _AttendanceRequestModel.fromJson(Map<String, dynamic> json) => _$AttendanceRequestModelFromJson(json);

@override@JsonKey(name: 'attendance_type') final  String? attendanceType;
@override@JsonKey(name: 'class') final  String? className;
@override@JsonKey(name: 'section') final  String? section;
@override@JsonKey(name: 'date') final  String? date;
@override@JsonKey(name: 'present') final  String? present;
@override@JsonKey(name: 'absent') final  String? absent;
@override@JsonKey(name: 'classroom_id', includeIfNull: false) final  String? classroomId;
@override@JsonKey(name: 'period', includeIfNull: false) final  String? period;
@override@JsonKey(name: 'time_slot', includeIfNull: false) final  String? timeSlot;
@override@JsonKey(name: 'subject', includeIfNull: false) final  String? subject;

/// Create a copy of AttendanceRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttendanceRequestModelCopyWith<_AttendanceRequestModel> get copyWith => __$AttendanceRequestModelCopyWithImpl<_AttendanceRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AttendanceRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttendanceRequestModel&&(identical(other.attendanceType, attendanceType) || other.attendanceType == attendanceType)&&(identical(other.className, className) || other.className == className)&&(identical(other.section, section) || other.section == section)&&(identical(other.date, date) || other.date == date)&&(identical(other.present, present) || other.present == present)&&(identical(other.absent, absent) || other.absent == absent)&&(identical(other.classroomId, classroomId) || other.classroomId == classroomId)&&(identical(other.period, period) || other.period == period)&&(identical(other.timeSlot, timeSlot) || other.timeSlot == timeSlot)&&(identical(other.subject, subject) || other.subject == subject));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,attendanceType,className,section,date,present,absent,classroomId,period,timeSlot,subject);

@override
String toString() {
  return 'AttendanceRequestModel(attendanceType: $attendanceType, className: $className, section: $section, date: $date, present: $present, absent: $absent, classroomId: $classroomId, period: $period, timeSlot: $timeSlot, subject: $subject)';
}


}

/// @nodoc
abstract mixin class _$AttendanceRequestModelCopyWith<$Res> implements $AttendanceRequestModelCopyWith<$Res> {
  factory _$AttendanceRequestModelCopyWith(_AttendanceRequestModel value, $Res Function(_AttendanceRequestModel) _then) = __$AttendanceRequestModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'attendance_type') String? attendanceType,@JsonKey(name: 'class') String? className,@JsonKey(name: 'section') String? section,@JsonKey(name: 'date') String? date,@JsonKey(name: 'present') String? present,@JsonKey(name: 'absent') String? absent,@JsonKey(name: 'classroom_id', includeIfNull: false) String? classroomId,@JsonKey(name: 'period', includeIfNull: false) String? period,@JsonKey(name: 'time_slot', includeIfNull: false) String? timeSlot,@JsonKey(name: 'subject', includeIfNull: false) String? subject
});




}
/// @nodoc
class __$AttendanceRequestModelCopyWithImpl<$Res>
    implements _$AttendanceRequestModelCopyWith<$Res> {
  __$AttendanceRequestModelCopyWithImpl(this._self, this._then);

  final _AttendanceRequestModel _self;
  final $Res Function(_AttendanceRequestModel) _then;

/// Create a copy of AttendanceRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? attendanceType = freezed,Object? className = freezed,Object? section = freezed,Object? date = freezed,Object? present = freezed,Object? absent = freezed,Object? classroomId = freezed,Object? period = freezed,Object? timeSlot = freezed,Object? subject = freezed,}) {
  return _then(_AttendanceRequestModel(
attendanceType: freezed == attendanceType ? _self.attendanceType : attendanceType // ignore: cast_nullable_to_non_nullable
as String?,className: freezed == className ? _self.className : className // ignore: cast_nullable_to_non_nullable
as String?,section: freezed == section ? _self.section : section // ignore: cast_nullable_to_non_nullable
as String?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,present: freezed == present ? _self.present : present // ignore: cast_nullable_to_non_nullable
as String?,absent: freezed == absent ? _self.absent : absent // ignore: cast_nullable_to_non_nullable
as String?,classroomId: freezed == classroomId ? _self.classroomId : classroomId // ignore: cast_nullable_to_non_nullable
as String?,period: freezed == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as String?,timeSlot: freezed == timeSlot ? _self.timeSlot : timeSlot // ignore: cast_nullable_to_non_nullable
as String?,subject: freezed == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
