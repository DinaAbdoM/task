import 'package:dartz/dartz.dart';
import 'package:task/core/error/failures.dart';
import 'package:task/features/data/models/cities_response.dart';
import 'package:task/features/data/models/subcategories_response.dart';
import 'package:task/features/data/models/filter_companies_request_model.dart';
import 'package:task/core/networking/api_error_handler.dart';
import 'package:task/core/networking/api_service.dart';
import 'package:task/features/domain/entities/filter_companies_entity.dart';
import 'package:task/features/domain/repositories/filter_repository.dart';
import 'package:task/features/data/mapper/mapper.dart';

class CompanyRepositoryImpl implements CompanyRepository {
  final ApiService _api;

  CompanyRepositoryImpl(this._api);

  @override
  Future<Either<Failure, CitiesResponse>> getCities() async {
    try {
      final res = await _api.getCities();
      return Right(res);
    } catch (e) {
      return Left(ErrorHandler.handle(e).failure);
    }
  }

  @override
  Future<Either<Failure, SubCategoriesResponse>> getSubCategories() async {
    try {
      final res = await _api.getSubCategories();
      return Right(res);
    } catch (e) {
      return Left(ErrorHandler.handle(e).failure);
    }
  }

  @override
  Future<Either<Failure, FilterCompaniesEntity>> filterCompanies(
    FilterCompaniesRequest request,
  ) async {
    try {
      final res = await _api.filterCompanies(request.toJson());

      if (res.data == null) {
        return Left(Failure.apiInternalError(res.message));
      }

      return Right(res.data!.toEntity());
    } catch (e) {
      return Left(ErrorHandler.handle(e).failure);
    }
  }

}
