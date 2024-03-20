import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nxt_assessment/features/hotel_check_in/data/models/stay_model.dart';
import 'package:nxt_assessment/features/hotel_check_in/data/models/ticket_model.dart';

part 'reservation_model.g.dart';

@JsonSerializable(createToJson: false)
class ReservationModel {
  final int id;
  @JsonKey(name: "start_date")
  final String startDate;

  @JsonKey(name: "end_date")
  final String endDate;
  final List<StayModel>? stays;

  @JsonKey(name: "user_tickets")
  final List<TicketModel>?userTickets;


  ReservationModel(
    this.id,
    this.startDate,
    this.endDate,
    this.stays,
    this.userTickets,
  );

  factory ReservationModel.fromJson(Map<String, dynamic> json) => _$ReservationModelFromJson(json);
}
