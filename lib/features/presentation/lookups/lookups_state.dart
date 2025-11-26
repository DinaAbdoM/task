// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:task/core/models/city_model.dart';
// import 'package:task/core/error/failures.dart';
// import 'package:task/core/models/sub_category_model.dart'; 

// part 'lookups_state.freezed.dart'; // 💡 يتطلب تشغيل build_runner

// @freezed
// class LookupsState with _$LookupsState {
//   const factory LookupsState.initial() = _Initial;
  
//   const factory LookupsState.loading() = Loading;
  
//   const factory LookupsState.success({
//     required List<CityModel> cities,
//     required List<SubCategoryModel> subcategories,
//   }) = Success;
  
//   const factory LookupsState.error({
//     required Failure failure,
//   }) = Error;
// }