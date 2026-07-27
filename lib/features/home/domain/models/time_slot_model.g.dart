// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_slot_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TimeSlotModelImpl _$$TimeSlotModelImplFromJson(Map<String, dynamic> json) =>
    _$TimeSlotModelImpl(
      id: json['id'] as String?,
      instId: json['inst_id'] as String?,
      name: json['name'] as String?,
      start: json['start'] as String?,
      end: json['end'] as String?,
    );

Map<String, dynamic> _$$TimeSlotModelImplToJson(_$TimeSlotModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'inst_id': instance.instId,
      'name': instance.name,
      'start': instance.start,
      'end': instance.end,
    };
