import 'package:json_annotation/json_annotation.dart';

part 'company_model.g.dart';

@JsonSerializable()
class CompanyModel {
  final int? id;
  final String? name;
  final String? type;
  final String? img;
  final String? desc;
  @JsonKey(name: 'avg_rates')
  final String? avgRates;
  final bool? fav;
  final String? location;

  CompanyModel({
    required this.name,
    required this.img,
    required this.id,
    required this.type,
    required this.desc,
    required this.avgRates,
    required this.fav,
    required this.location,
  });

  factory CompanyModel.fromJson(Map<String, dynamic> json) =>
      _$CompanyModelFromJson(json);
  Map<String, dynamic> toJson() => _$CompanyModelToJson(this);
}
