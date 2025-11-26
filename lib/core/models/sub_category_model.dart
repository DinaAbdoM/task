import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sub_category_model.g.dart';
@JsonSerializable()
class SubCategoryModel extends Equatable {
  final int id;
  @JsonKey(includeToJson: false)
  final String name;
  @JsonKey(includeToJson: false)
  final String img;

  const SubCategoryModel({
    required this.id,
    required this.name,
    required this.img,
  });

  factory SubCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$SubCategoryModelFromJson(json);
  Map<String, dynamic> toJson() => _$SubCategoryModelToJson(this);

  @override
  List<Object?> get props => [id];
}
