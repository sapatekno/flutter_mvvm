// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_net_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PageNetModel<T> _$PageNetModelFromJson<T>(Map<String, dynamic> json) => PageNetModel<T>(
      totalPages: json['total_pages'] as int?,
      data: (json['data'] as List<dynamic>?)?.map((e) => UserNetModel.fromJson(e as Map<String, dynamic>)).toList(),
    );

Map<String, dynamic> _$PageNetModelToJson<T>(PageNetModel<T> instance) => <String, dynamic>{
      'total_pages': instance.totalPages,
      'data': instance.data,
    };
