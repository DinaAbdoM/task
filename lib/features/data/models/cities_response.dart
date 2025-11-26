import 'package:json_annotation/json_annotation.dart';
import 'package:task/features/data/models/city_model.dart';

part 'cities_response.g.dart';

@JsonSerializable()
class CitiesResponse {
  final bool status;
  final String message;
  final List<CityModel> data;

  CitiesResponse({required this.status, required this.message, required this.data});

  factory CitiesResponse.fromJson(Map<String, dynamic> json) => _$CitiesResponseFromJson(json);
  Map<String, dynamic> toJson() => _$CitiesResponseToJson(this);
}