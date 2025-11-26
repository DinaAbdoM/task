// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubCategoryModel _$SubCategoryModelFromJson(Map<String, dynamic> json) =>
    SubCategoryModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      img: json['img'] as String,
    );

Map<String, dynamic> _$SubCategoryModelToJson(SubCategoryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'img': instance.img,
    };
