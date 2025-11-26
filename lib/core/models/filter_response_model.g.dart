// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FilterDataModel _$FilterDataModelFromJson(Map<String, dynamic> json) =>
    FilterDataModel(
      companies: (json['data'] as List<dynamic>?)
          ?.map((e) => CompanyModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] == null
          ? null
          : PaginationModel.fromJson(
              json['pagination'] as Map<String, dynamic>,
            ),
    );
