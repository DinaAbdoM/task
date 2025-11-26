import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/features/data/models/filter_companies_request_model.dart';
import 'package:task/features/data/models/sub_category_model.dart';
import 'package:task/features/domain/usecases/filter_companies_usecase.dart';
import 'package:task/features/presentation/cubits/companies/companies_state.dart';

class CompaniesCubit extends Cubit<CompaniesState> {
  CompaniesCubit(this._filterCompaniesUseCase)
    : super(const CompaniesState.initial());
  final FilterCompaniesUseCase _filterCompaniesUseCase;

  Future<void> filterCompanies({
    String? query,
    int? cityId,
    String? type,
    List<SubCategoryModel>? model,
  }) async {
    emit(const CompaniesState.filterCompaniesLoading());
    model?.forEach((e) => log("${e.toJson()}"));

    final result = await _filterCompaniesUseCase.call(
      FilterCompaniesRequest(
        search: query,
        cityId: cityId,
        type: type,
        subCategories: model,
      ),
    );
    result.fold(
      (l) => emit(CompaniesState.filterCompaniesError(l.message)),
      (r) => emit(CompaniesState.filterCompaniesSuccess(r)),
    );
  }
}
