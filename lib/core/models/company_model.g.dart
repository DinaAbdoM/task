// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompanyModel _$CompanyModelFromJson(Map<String, dynamic> json) => CompanyModel(
  name: json['name'] as String?,
  img: json['img'] as String?,
  id: (json['id'] as num?)?.toInt(),
  type: json['type'] as String?,
  desc: json['desc'] as String?,
  avgRates: json['avg_rates'] as String?,
  fav: json['fav'] as bool?,
  location: json['location'] as String?,
);

Map<String, dynamic> _$CompanyModelToJson(CompanyModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'img': instance.img,
      'desc': instance.desc,
      'avg_rates': instance.avgRates,
      'fav': instance.fav,
      'location': instance.location,
    };
