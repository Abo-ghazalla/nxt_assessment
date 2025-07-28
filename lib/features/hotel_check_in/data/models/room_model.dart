import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nxt_assessment/features/hotel_check_in/data/models/guest_model.dart';

part 'room_model.g.dart';

@JsonSerializable()
class RoomModel {
  @JsonKey(name: "room_number")
  final String? roomNumber;

  @JsonKey(name: "room_capacity")
  final int? roomCapacity;

  @JsonKey(name: "room_type_name")
  final String? roomTypeName;

  @JsonKey(name: "stay_name")
  final String? stayName;
  final List<GuestModel>? guests;

  RoomModel(
    this.roomNumber,
    this.roomCapacity,
    this.roomTypeName,
    this.stayName,
    this.guests,
  );

  factory RoomModel.fromJson(Map<String, dynamic> json) => _$RoomModelFromJson(json);

  Map<String, dynamic> toJson() => _$RoomModelToJson(this);
}
