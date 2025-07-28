import 'package:freezed_annotation/freezed_annotation.dart';

part 'guest_model.g.dart';

@JsonSerializable()
class GuestModel {
  @JsonKey(name: "first_name")
  final String firstName;

  @JsonKey(name: "last_name")
  final String lastName;

  final String? avatar;

  GuestModel(this.firstName, this.lastName, this.avatar);

  factory GuestModel.fromJson(Map<String, dynamic> json) => _$GuestModelFromJson(json);

  Map<String, dynamic> toJson() => _$GuestModelToJson(this);
}
