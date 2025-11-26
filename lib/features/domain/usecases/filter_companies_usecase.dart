import 'package:dartz/dartz.dart';
import 'package:task/core/error/failures.dart';
import 'package:task/core/helpers/base_use_case.dart';
import 'package:task/core/models/filter_companies_request_model.dart';
import 'package:task/features/domain/entities/filter_companies_entity.dart';
import 'package:task/features/domain/repositories/filter_repository.dart';

class FilterCompaniesUseCase
    extends BaseUseCase<FilterCompaniesEntity, FilterCompaniesRequest> {
  final CompanyRepository repository;

  FilterCompaniesUseCase(this.repository);

  @override
  Future<Either<Failure, FilterCompaniesEntity>> call(
    FilterCompaniesRequest params,
  ) {
    return repository.filterCompanies(params);
  }
}
