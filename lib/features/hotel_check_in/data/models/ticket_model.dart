import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket_model.g.dart';

@JsonSerializable()
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

  Map<String, dynamic> toJson() => _$TicketModelToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class TicketUserModel {
  final String firstName;
  final String lastName;
  final String? avatar;
  final bool isUser;

  TicketUserModel(
    this.firstName,
    this.lastName,
    this.avatar,
    this.isUser,
  );

  factory TicketUserModel.fromJson(Map<String, dynamic> json) => _$TicketUserModelFromJson(json);

  Map<String, dynamic> toJson() => _$TicketUserModelToJson(this);
}
