import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task/features/domain/entities/filter_companies_entity.dart';

part 'companies_state.freezed.dart';


@freezed
class CompaniesState with _$CompaniesState {
  const factory CompaniesState.initial() = _Initial;
  const factory CompaniesState.filterCompaniesLoading() = FilterCompaniesLoading;
  const factory CompaniesState.filterCompaniesSuccess(FilterCompaniesEntity filterEntity) = FilterCompaniesSuccess;
  const factory CompaniesState.filterCompaniesError(String error) = FilterCompaniesError;
}

// @freezed
// class CompaniesState with _$CompaniesState {
//   const factory CompaniesState.initial() = _Initial;

//   // حالات جلب المدن
//   const factory CompaniesState.citiesLoading() = CitiesLoading;
//   const factory CompaniesState.citiesSuccess(List<CityModel> cities) = CitiesSuccess;
//   const factory CompaniesState.citiesError(String error) = CitiesError;

//   // حالات جلب الأقسام الفرعية
//   const factory CompaniesState.subCategoriesLoading() = SubCategoriesLoading;
//   const factory CompaniesState.subCategoriesSuccess(List<SubCategoryModel> subCategories) = SubCategoriesSuccess;
//   const factory CompaniesState.subCategoriesError(String error) = SubCategoriesError;

//   // حالات فلترة الشركات
//   const factory CompaniesState.filterCompaniesLoading() = FilterCompaniesLoading;
//   const factory CompaniesState.filterCompaniesSuccess({
//     required List<CompanyModel> companies,
//     required PaginationModel pagination,
//   }) = FilterCompaniesSuccess;
//   const factory CompaniesState.filterCompaniesError(String error) = FilterCompaniesError;

//   // حالة تحميل المزيد من الصفحات
//   const factory CompaniesState.loadMoreLoading() = LoadMoreLoading;
//   const factory CompaniesState.loadMoreSuccess({
//     required List<CompanyModel> companies,
//     required PaginationModel pagination,
//   }) = LoadMoreSuccess;
//   const factory CompaniesState.loadMoreError(String error) = LoadMoreError;
// }