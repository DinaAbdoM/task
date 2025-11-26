import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/core/error/failures.dart';
import 'package:task/core/models/city_model.dart';
import 'package:task/core/models/filter_companies_request_model.dart';
import 'package:task/core/models/sub_category_model.dart';
import 'package:task/features/domain/entities/filter_companies_entity.dart';
import 'package:task/features/domain/repositories/filter_repository.dart';
import 'package:task/features/presentation/cubits/filter_state.dart';


class FilterCubit extends Cubit<FilterState> {
  final CompanyRepository _repository;

  FilterCubit(this._repository) : super(const FilterState());

  Future<void> loadInitialData() async {
    emit(state.copyWith(isLoading: true, errorMessage: null));

    final citiesResult = await _repository.getCities();
    final subsResult = await _repository.getSubCategories();

    Failure? failure;
    List<CityModel> cities = [];
    List<SubCategoryModel> subs = [];

    citiesResult.fold(
      (f) => failure = f,
      (res) => cities = res.data ?? [],
    );

    subsResult.fold(
      (f) => failure = f,
      (res) => subs = res.data ?? [],
    );

    if (failure != null) {
      emit(
        state.copyWith(
          isLoading: false,
          errorMessage: failure!.message,
        ),
      );
      return;
    }

    emit(
      state.copyWith(
        isLoading: false,
        cities: cities,
        subCategories: subs,
      ),
    );
  }

  void changeCity(int? id) {
    emit(state.copyWith(selectedCityId: id));
  }

  void changeProviderType(ProviderType? type) {
    emit(state.copyWith(selectedProviderType: type));
  }

  void changeSearch(String value) {
    emit(state.copyWith(searchText: value));
  }

  void toggleSubCategory(int id) {
    final current = [...state.selectedSubCategoryIds];
    current.contains(id) ? current.remove(id) : current.add(id);
    emit(state.copyWith(selectedSubCategoryIds: current));
  }

  void clearFilters() {
    emit(
      state.copyWith(
        selectedCityId: null,
        selectedProviderType: null,
        selectedSubCategoryIds: [],
        searchText: '',
        result: null,
      ),
    );
  }

  Future<void> applyFilter({int page = 1}) async {
    emit(state.copyWith(isFiltering: true, errorMessage: null));

    final request = FilterCompaniesRequest(
      cityId: state.selectedCityId,
      subCategories: state.selectedSubCategoryIds,
      type: _mapType(state.selectedProviderType),
      search: state.searchText.isEmpty ? null : state.searchText,
      page: page,
    );

    final result = await _repository.filterCompanies(request);

    result.fold(
      (Failure f) {
        emit(
          state.copyWith(
            isFiltering: false,
            errorMessage: f.message,
          ),
        );
      },
      (data) {
        emit(
          state.copyWith(
            isFiltering: false,
            result: data,
          ),
        );
      },
    );
  }

  String? _mapType(ProviderType? t) {
    switch (t) {
      case ProviderType.person:
        return 'person';
      case ProviderType.office:
        return 'office';
      default:
        return null;
    }
  }
}
