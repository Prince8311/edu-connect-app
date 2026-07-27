import 'package:freezed_annotation/freezed_annotation.dart';

part 'time_slot_model.freezed.dart';
part 'time_slot_model.g.dart';

@freezed
class TimeSlotModel with _$TimeSlotModel {
  const factory TimeSlotModel({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'inst_id') String? instId,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'start') String? start,
    @JsonKey(name: 'end') String? end,
  }) = _TimeSlotModel;

  factory TimeSlotModel.fromJson(Map<String, dynamic> json) =>
      _$TimeSlotModelFromJson(json);
}
