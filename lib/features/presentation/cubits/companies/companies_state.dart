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

