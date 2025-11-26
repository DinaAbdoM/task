import 'package:json_annotation/json_annotation.dart';
import 'package:task/core/models/company_model.dart';
import 'package:task/core/models/pagination_model.dart';

part 'filter_response_model.g.dart';

@JsonSerializable(createToJson: false)
class FilterDataModel {
  @JsonKey(name: 'data')
  final List<CompanyModel>? companies;

  final PaginationModel? pagination;

  FilterDataModel({required this.companies, required this.pagination});

  factory FilterDataModel.fromJson(Map<String, dynamic> json) =>
      _$FilterDataModelFromJson(json);
}
