import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nxt_assessment/features/hotel_check_in/data/models/room_model.dart';

part 'stay_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class StayModel {
  final String name;
  final String? description;
  final String? lat;
  final String? lng;
  final String? address;
  final String? checkIn;
  final String? checkOut;
  final double? stars;
  final List<String>? stayImages;
  final String? amenities;
  final List<RoomModel>? rooms;

  StayModel(
    this.name,
    this.description,
    this.lat,
    this.lng,
    this.address,
    this.checkIn,
    this.checkOut,
    this.stars,
    this.stayImages,
    this.amenities,
    this.rooms,
  );

  factory StayModel.fromJson(Map<String, dynamic> json) => _$StayModelFromJson(json);

  Map<String, dynamic> toJson() => _$StayModelToJson(this);
}
