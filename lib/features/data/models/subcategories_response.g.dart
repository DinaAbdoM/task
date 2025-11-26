// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subcategories_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubCategoriesResponse _$SubCategoriesResponseFromJson(
  Map<String, dynamic> json,
) => SubCategoriesResponse(
  status: json['status'] as bool,
  message: json['message'] as String,
  data: (json['data'] as List<dynamic>)
      .map((e) => SubCategoryModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$SubCategoriesResponseToJson(
  SubCategoriesResponse instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': instance.message,
  'data': instance.data,
};
