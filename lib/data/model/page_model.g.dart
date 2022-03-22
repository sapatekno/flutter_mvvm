// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PageModel<T> _$PageModelFromJson<T>(Map<String, dynamic> json) => PageModel<T>(
      totalPages: json['total_pages'] as int?,
      data: (json['data'] as List<dynamic>?)?.map((e) => UserModel.fromJson(e as Map<String, dynamic>)).toList(),
    );

Map<String, dynamic> _$PageModelToJson<T>(PageModel<T> instance) => <String, dynamic>{
      'total_pages': instance.totalPages,
      'data': instance.data,
    };
