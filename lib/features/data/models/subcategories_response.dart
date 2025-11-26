import 'package:json_annotation/json_annotation.dart';
import 'package:task/features/data/models/sub_category_model.dart';

part 'subcategories_response.g.dart';

@JsonSerializable()
class SubCategoriesResponse {
  final bool status;
  final String message;
  final List<SubCategoryModel> data;

  SubCategoriesResponse({required this.status, required this.message, required this.data});

  factory SubCategoriesResponse.fromJson(Map<String, dynamic> json) => _$SubCategoriesResponseFromJson(json);
  Map<String, dynamic> toJson() => _$SubCategoriesResponseToJson(this);
}