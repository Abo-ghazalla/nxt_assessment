import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nxt_assessment/features/hotel_check_in/data/models/stay_model.dart';
import 'package:nxt_assessment/features/hotel_check_in/data/models/ticket_model.dart';

part 'reservation_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class ReservationModel {
  final int id;
  final String startDate;
  final String endDate;
  final List<StayModel>? stays;
  final List<TicketModel>?userTickets;


  ReservationModel(
    this.id,
    this.startDate,
    this.endDate,
    this.stays,
    this.userTickets,
  );

  factory ReservationModel.fromJson(Map<String, dynamic> json) => _$ReservationModelFromJson(json);

  Map<String, dynamic> toJson() => _$ReservationModelToJson(this);
}
