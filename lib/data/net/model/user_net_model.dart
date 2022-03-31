import 'package:json_annotation/json_annotation.dart';

part 'user_net_model.g.dart';

@JsonSerializable()
class UserNetModel {
  int? id;
  String? email;
  @JsonKey(name: 'first_name')
  String? firstName;
  @JsonKey(name: 'last_name')
  String? lastName;
  String? avatar;

  UserNetModel({
    this.id,
    this.email,
    this.firstName,
    this.lastName,
    this.avatar,
  });

  factory UserNetModel.fromJson(Map<String, dynamic> json) => _$UserNetModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserNetModelToJson(this);
}
