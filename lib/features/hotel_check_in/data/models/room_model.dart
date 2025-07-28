import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nxt_assessment/features/hotel_check_in/data/models/guest_model.dart';

part 'room_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class RoomModel {
  final String? roomNumber;
  final int? roomCapacity;
  final String? roomTypeName;
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
