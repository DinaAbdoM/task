import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task/features/data/models/city_model.dart';
import 'package:task/features/data/models/sub_category_model.dart';

part 'filter_state.freezed.dart';

@freezed
class FilterState with _$FilterState {
  const factory FilterState.initial() = FilterInitial;

  const factory FilterState.loadFiltersLoading() = LoadFiltersLoading;
  const factory FilterState.loadFiltersSuccess({
    required List<CityModel> cities,
    required List<SubCategoryModel> subCategories,
  }) = LoadFiltersSuccess;
  const factory FilterState.loadFiltersError(String error) = LoadFiltersError;

  const factory FilterState.filtersUpdated({
    int? selectedCityId,
    String? search,
    String? providerType,
    @Default([]) List<SubCategoryModel>? subCategoryIds,
  }) = FiltersUpdated;
}

