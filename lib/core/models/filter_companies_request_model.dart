import 'package:json_annotation/json_annotation.dart';

part 'filter_companies_request_model.g.dart';

@JsonSerializable(createFactory: false)
class FilterCompaniesRequest {
  @JsonKey(name: "page")
  final int? page;

  @JsonKey(name: "search")
  final String? search;

  @JsonKey(name: "city_id")
  final int? cityId;

  @JsonKey(name: "type")
  final String? type;

  @JsonKey(name: "sub_categories")
  final List<int>? subCategories;

  FilterCompaniesRequest({
    this.page,
    this.search,
    this.cityId,
    this.type,
    this.subCategories,
  });


  Map<String, dynamic> toJson() => _$FilterCompaniesRequestToJson(this);
}
