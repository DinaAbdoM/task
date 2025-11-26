// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_companies_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FilterCompaniesResponse _$FilterCompaniesResponseFromJson(
  Map<String, dynamic> json,
) => FilterCompaniesResponse(
  json['status'] as bool? ?? false,
  json['message'] as String?,
  data: json['data'] == null
      ? null
      : FilterDataModel.fromJson(json['data'] as Map<String, dynamic>),
);
