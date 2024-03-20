import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket_model.g.dart';

@JsonSerializable(createToJson: false)
class TicketModel {
  @JsonKey(name: "ticket_id")
  final int ticketId;
  final String? seat;
  @JsonKey(name: "ticket_system_id")
  final String? ticketSystemId;
  @JsonKey(name: "ticket_type_name")
  final String? ticketTypeName;
  final String? gate;
  @JsonKey(name: "ticket_user_data")
  final TicketUserModel? ticketUserData;

  TicketModel(
    this.ticketId,
    this.seat,
    this.ticketSystemId,
    this.ticketTypeName,
    this.gate,
    this.ticketUserData,
  );

  factory TicketModel.fromJson(Map<String, dynamic> json) => _$TicketModelFromJson(json);
}

@JsonSerializable(createToJson: false)
class TicketUserModel {
  @JsonKey(name: "first_name")
  final String firstName;
  @JsonKey(name: "last_name")
  final String lastName;
  final String? avatar;

  @JsonKey(name: "is_user")
  final bool isUser;

  TicketUserModel(
    this.firstName,
    this.lastName,
    this.avatar,
    this.isUser,
  );

  factory TicketUserModel.fromJson(Map<String, dynamic> json) => _$TicketUserModelFromJson(json);
}
