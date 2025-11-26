import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/features/data/models/sub_category_model.dart';
import 'package:task/features/presentation/cubits/filter/filter_state.dart';
import 'package:task/features/domain/repositories/filter_repository.dart';

class FilterCubit extends Cubit<FilterState> {
  final CompanyRepository repository;

  FilterCubit(this.repository) : super(const FilterState.initial());

  Future<void> loadFilters() async {
    emit(const FilterState.loadFiltersLoading());

    final citiesResult = await repository.getCities();
    final subsResult = await repository.getSubCategories();
    citiesResult.fold(
      (failure) => emit(FilterState.loadFiltersError(failure.message)),
      (citiesResponse) {
        subsResult.fold(
          (failure) => emit(FilterState.loadFiltersError(failure.message)),
          (subsResponse) {
            emit(
              FilterState.loadFiltersSuccess(
                cities: citiesResponse.data,
                subCategories: subsResponse.data,
              ),
            );
          },
        );
      },
    );
  }

  void updateFilters({
    int? selectedCityId,
    String? search,
    String? providerType,
    List<SubCategoryModel>? subCategoryIds,
  }) {
    emit(
      FilterState.filtersUpdated(
        selectedCityId: selectedCityId,
        search: search,
        providerType: providerType,
        subCategoryIds: subCategoryIds,
      ),
    );
  }
}
