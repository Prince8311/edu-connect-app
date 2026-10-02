// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'time_slot_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TimeSlotModel {

@JsonKey(name: 'id') String? get id;@JsonKey(name: 'inst_id') String? get instId;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'start') String? get start;@JsonKey(name: 'end') String? get end;
/// Create a copy of TimeSlotModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TimeSlotModelCopyWith<TimeSlotModel> get copyWith => _$TimeSlotModelCopyWithImpl<TimeSlotModel>(this as TimeSlotModel, _$identity);

  /// Serializes this TimeSlotModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TimeSlotModel&&(identical(other.id, id) || other.id == id)&&(identical(other.instId, instId) || other.instId == instId)&&(identical(other.name, name) || other.name == name)&&(identical(other.start, start) || other.start == start)&&(identical(other.end, end) || other.end == end));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,instId,name,start,end);

@override
String toString() {
  return 'TimeSlotModel(id: $id, instId: $instId, name: $name, start: $start, end: $end)';
}


}

/// @nodoc
abstract mixin class $TimeSlotModelCopyWith<$Res>  {
  factory $TimeSlotModelCopyWith(TimeSlotModel value, $Res Function(TimeSlotModel) _then) = _$TimeSlotModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String? id,@JsonKey(name: 'inst_id') String? instId,@JsonKey(name: 'name') String? name,@JsonKey(name: 'start') String? start,@JsonKey(name: 'end') String? end
});




}
/// @nodoc
class _$TimeSlotModelCopyWithImpl<$Res>
    implements $TimeSlotModelCopyWith<$Res> {
  _$TimeSlotModelCopyWithImpl(this._self, this._then);

  final TimeSlotModel _self;
  final $Res Function(TimeSlotModel) _then;

/// Create a copy of TimeSlotModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? instId = freezed,Object? name = freezed,Object? start = freezed,Object? end = freezed,}) {
  return _then(TimeSlotModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,instId: freezed == instId ? _self.instId : instId // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,start: freezed == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as String?,end: freezed == end ? _self.end : end // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TimeSlotModel].
extension TimeSlotModelPatterns on TimeSlotModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TimeSlotModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TimeSlotModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TimeSlotModel value)  $default,){
final _that = this;
switch (_that) {
case _TimeSlotModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TimeSlotModel value)?  $default,){
final _that = this;
switch (_that) {
case _TimeSlotModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String? id, @JsonKey(name: 'inst_id')  String? instId, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'start')  String? start, @JsonKey(name: 'end')  String? end)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TimeSlotModel() when $default != null:
return $default(_that.id,_that.instId,_that.name,_that.start,_that.end);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String? id, @JsonKey(name: 'inst_id')  String? instId, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'start')  String? start, @JsonKey(name: 'end')  String? end)  $default,) {final _that = this;
switch (_that) {
case _TimeSlotModel():
return $default(_that.id,_that.instId,_that.name,_that.start,_that.end);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String? id, @JsonKey(name: 'inst_id')  String? instId, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'start')  String? start, @JsonKey(name: 'end')  String? end)?  $default,) {final _that = this;
switch (_that) {
case _TimeSlotModel() when $default != null:
return $default(_that.id,_that.instId,_that.name,_that.start,_that.end);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TimeSlotModel implements TimeSlotModel {
  const _TimeSlotModel({@JsonKey(name: 'id') this.id, @JsonKey(name: 'inst_id') this.instId, @JsonKey(name: 'name') this.name, @JsonKey(name: 'start') this.start, @JsonKey(name: 'end') this.end});
  factory _TimeSlotModel.fromJson(Map<String, dynamic> json) => _$TimeSlotModelFromJson(json);

@override@JsonKey(name: 'id') final  String? id;
@override@JsonKey(name: 'inst_id') final  String? instId;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'start') final  String? start;
@override@JsonKey(name: 'end') final  String? end;

/// Create a copy of TimeSlotModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TimeSlotModelCopyWith<_TimeSlotModel> get copyWith => __$TimeSlotModelCopyWithImpl<_TimeSlotModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TimeSlotModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TimeSlotModel&&(identical(other.id, id) || other.id == id)&&(identical(other.instId, instId) || other.instId == instId)&&(identical(other.name, name) || other.name == name)&&(identical(other.start, start) || other.start == start)&&(identical(other.end, end) || other.end == end));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,instId,name,start,end);

@override
String toString() {
  return 'TimeSlotModel(id: $id, instId: $instId, name: $name, start: $start, end: $end)';
}


}

/// @nodoc
abstract mixin class _$TimeSlotModelCopyWith<$Res> implements $TimeSlotModelCopyWith<$Res> {
  factory _$TimeSlotModelCopyWith(_TimeSlotModel value, $Res Function(_TimeSlotModel) _then) = __$TimeSlotModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String? id,@JsonKey(name: 'inst_id') String? instId,@JsonKey(name: 'name') String? name,@JsonKey(name: 'start') String? start,@JsonKey(name: 'end') String? end
});




}
/// @nodoc
class __$TimeSlotModelCopyWithImpl<$Res>
    implements _$TimeSlotModelCopyWith<$Res> {
  __$TimeSlotModelCopyWithImpl(this._self, this._then);

  final _TimeSlotModel _self;
  final $Res Function(_TimeSlotModel) _then;

/// Create a copy of TimeSlotModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? instId = freezed,Object? name = freezed,Object? start = freezed,Object? end = freezed,}) {
  return _then(_TimeSlotModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,instId: freezed == instId ? _self.instId : instId // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,start: freezed == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as String?,end: freezed == end ? _self.end : end // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
