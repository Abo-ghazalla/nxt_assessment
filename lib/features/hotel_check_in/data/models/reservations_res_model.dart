import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nxt_assessment/core/model/base_model.dart';
import 'package:nxt_assessment/features/hotel_check_in/data/models/reservation_model.dart';

part 'reservations_res_model.g.dart';

@JsonSerializable(explicitToJson: true)
class ReservationsResponseModel extends BaseModel {
  final List<ReservationModel>? reservations;

  ReservationsResponseModel({this.reservations});

  factory ReservationsResponseModel.fromJson(Map<String, dynamic> json) => _$ReservationsResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$ReservationsResponseModelToJson(this);

  @override
  ReservationsResponseModel fromJson(Map<String, dynamic> json) {
    return ReservationsResponseModel.fromJson(json);
  }
}
