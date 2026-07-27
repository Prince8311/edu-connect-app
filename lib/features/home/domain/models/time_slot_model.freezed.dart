// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'time_slot_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TimeSlotModel _$TimeSlotModelFromJson(Map<String, dynamic> json) {
  return _TimeSlotModel.fromJson(json);
}

/// @nodoc
mixin _$TimeSlotModel {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'inst_id')
  String? get instId => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'start')
  String? get start => throw _privateConstructorUsedError;
  @JsonKey(name: 'end')
  String? get end => throw _privateConstructorUsedError;

  /// Serializes this TimeSlotModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TimeSlotModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TimeSlotModelCopyWith<TimeSlotModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeSlotModelCopyWith<$Res> {
  factory $TimeSlotModelCopyWith(
          TimeSlotModel value, $Res Function(TimeSlotModel) then) =
      _$TimeSlotModelCopyWithImpl<$Res, TimeSlotModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'inst_id') String? instId,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'start') String? start,
      @JsonKey(name: 'end') String? end});
}

/// @nodoc
class _$TimeSlotModelCopyWithImpl<$Res, $Val extends TimeSlotModel>
    implements $TimeSlotModelCopyWith<$Res> {
  _$TimeSlotModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TimeSlotModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? instId = freezed,
    Object? name = freezed,
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      instId: freezed == instId
          ? _value.instId
          : instId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as String?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimeSlotModelImplCopyWith<$Res>
    implements $TimeSlotModelCopyWith<$Res> {
  factory _$$TimeSlotModelImplCopyWith(
          _$TimeSlotModelImpl value, $Res Function(_$TimeSlotModelImpl) then) =
      __$$TimeSlotModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'inst_id') String? instId,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'start') String? start,
      @JsonKey(name: 'end') String? end});
}

/// @nodoc
class __$$TimeSlotModelImplCopyWithImpl<$Res>
    extends _$TimeSlotModelCopyWithImpl<$Res, _$TimeSlotModelImpl>
    implements _$$TimeSlotModelImplCopyWith<$Res> {
  __$$TimeSlotModelImplCopyWithImpl(
      _$TimeSlotModelImpl _value, $Res Function(_$TimeSlotModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimeSlotModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? instId = freezed,
    Object? name = freezed,
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(_$TimeSlotModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      instId: freezed == instId
          ? _value.instId
          : instId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as String?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimeSlotModelImpl implements _TimeSlotModel {
  const _$TimeSlotModelImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'inst_id') this.instId,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'start') this.start,
      @JsonKey(name: 'end') this.end});

  factory _$TimeSlotModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimeSlotModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'inst_id')
  final String? instId;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'start')
  final String? start;
  @override
  @JsonKey(name: 'end')
  final String? end;

  @override
  String toString() {
    return 'TimeSlotModel(id: $id, instId: $instId, name: $name, start: $start, end: $end)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeSlotModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.instId, instId) || other.instId == instId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, instId, name, start, end);

  /// Create a copy of TimeSlotModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeSlotModelImplCopyWith<_$TimeSlotModelImpl> get copyWith =>
      __$$TimeSlotModelImplCopyWithImpl<_$TimeSlotModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimeSlotModelImplToJson(
      this,
    );
  }
}

abstract class _TimeSlotModel implements TimeSlotModel {
  const factory _TimeSlotModel(
      {@JsonKey(name: 'id') final String? id,
      @JsonKey(name: 'inst_id') final String? instId,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'start') final String? start,
      @JsonKey(name: 'end') final String? end}) = _$TimeSlotModelImpl;

  factory _TimeSlotModel.fromJson(Map<String, dynamic> json) =
      _$TimeSlotModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'inst_id')
  String? get instId;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'start')
  String? get start;
  @override
  @JsonKey(name: 'end')
  String? get end;

  /// Create a copy of TimeSlotModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimeSlotModelImplCopyWith<_$TimeSlotModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
