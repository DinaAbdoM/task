import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/core/models/filter_companies_request_model.dart';
import 'package:task/features/domain/usecases/filter_companies_usecase.dart';
import 'package:task/features/presentation/companies/companies_state.dart';

class CompaniesCubit extends Cubit<CompaniesState> {
  CompaniesCubit(this._filterCompaniesUseCase)
    : super(const CompaniesState.initial());
  final FilterCompaniesUseCase _filterCompaniesUseCase;

  Future<void> filterCompanies({String? query}) async {
    emit(const CompaniesState.filterCompaniesLoading());
    final result = await _filterCompaniesUseCase.call(
      FilterCompaniesRequest(search: query),
    );
    result.fold(
      (l) => emit(CompaniesState.filterCompaniesError(l.message)),
      (r) => emit(CompaniesState.filterCompaniesSuccess(r)),
    );
  }






}
