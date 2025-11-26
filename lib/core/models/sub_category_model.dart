import 'package:json_annotation/json_annotation.dart';

part 'sub_category_model.g.dart';

@JsonSerializable()
class SubCategoryModel {
  final int id;
  final String name;
  final String img;

  SubCategoryModel({required this.id, required this.name, required this.img});

  factory SubCategoryModel.fromJson(Map<String, dynamic> json) => _$SubCategoryModelFromJson(json);
  Map<String, dynamic> toJson() => _$SubCategoryModelToJson(this);
}