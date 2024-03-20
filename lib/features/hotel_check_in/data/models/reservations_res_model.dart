import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nxt_assessment/core/model/base_model.dart';
import 'package:nxt_assessment/features/hotel_check_in/data/models/reservation_model.dart';

part 'reservations_res_model.g.dart';

@JsonSerializable(createToJson: false)
class ReservationsResponseModel extends BaseModel {
  final List<ReservationModel>? reservations;

  ReservationsResponseModel({this.reservations});

  factory ReservationsResponseModel.fromJson(Map<String, dynamic> json) => _$ReservationsResponseModelFromJson(json);

  @override
  ReservationsResponseModel fromJson(Map<String, dynamic> json) {
    return ReservationsResponseModel.fromJson(json);
  }
}
