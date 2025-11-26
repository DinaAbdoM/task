import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task/core/models/city_model.dart';
import 'package:task/core/models/sub_category_model.dart';
import 'package:task/features/domain/entities/filter_companies_entity.dart';
part 'filter_state.freezed.dart';

enum ProviderType { person, office }

@freezed
sealed class FilterState with _$FilterState {
  const factory FilterState({
    @Default(false) bool isLoading,
    @Default(false) bool isFiltering,

    @Default([]) List<CityModel> cities,
    @Default([]) List<SubCategoryModel> subCategories,

    int? selectedCityId,
    @Default([]) List<int> selectedSubCategoryIds,
    ProviderType? selectedProviderType,

    @Default('') String searchText,

    FilterCompaniesEntity? result,

    String? errorMessage,
  }) = _FilterState;
}
