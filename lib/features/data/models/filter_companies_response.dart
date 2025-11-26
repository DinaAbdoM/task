import 'package:json_annotation/json_annotation.dart';
import 'package:task/features/data/models/base_response.dart';
import 'package:task/features/data/models/filter_response_model.dart';

part 'filter_companies_response.g.dart';

@JsonSerializable(createToJson: false)
class FilterCompaniesResponse extends BaseResponse {
  final FilterDataModel? data;

  FilterCompaniesResponse(super.status, super.message, {required this.data});

  factory FilterCompaniesResponse.fromJson(Map<String, dynamic> json) =>
      _$FilterCompaniesResponseFromJson(json);
}
