import 'package:json_annotation/json_annotation.dart';
import 'package:sapatekno_mvvm/data/net/model/user_net_model.dart';

part 'page_net_model.g.dart';

@JsonSerializable()
class PageNetModel<T> {
  @JsonKey(name: 'total_pages')
  int? totalPages;
  List<UserNetModel>? data;

  PageNetModel({this.totalPages, this.data});

  factory PageNetModel.fromJson(Map<String, dynamic> json) => _$PageNetModelFromJson(json);

  Map<String, dynamic> toJson() => _$PageNetModelToJson(this);
}
