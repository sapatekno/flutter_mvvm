import 'package:json_annotation/json_annotation.dart';
import 'package:sapatekno_mvvm/data/model/user_model.dart';

part 'page_model.g.dart';

@JsonSerializable()
class PageModel<T> {
  @JsonKey(name: 'total_pages')
  int? totalPages;
  List<UserModel>? data;

  PageModel({this.totalPages, this.data});

  factory PageModel.fromJson(Map<String, dynamic> json) => _$PageModelFromJson(json);

  Map<String, dynamic> toJson() => _$PageModelToJson(this);
}
