import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nxt_assessment/features/hotel_check_in/data/models/room_model.dart';

part 'stay_model.g.dart';

@JsonSerializable(createToJson: false)
class StayModel {
  final String name;
  final String? description;
  final String? lat;
  final String? lng;
  final String? address;
  @JsonKey(name: "check_in")
  final String? checkIn;
  @JsonKey(name: "check_out")
  final String? checkOut;
  final double? stars;
  @JsonKey(name: "stay_images")
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
}
