import 'package:task/core/error/failures.dart';
import 'package:task/features/data/models/cities_response.dart';
import 'package:task/features/data/models/subcategories_response.dart';
import 'package:task/features/data/models/filter_companies_request_model.dart';
import 'package:dartz/dartz.dart';
import 'package:task/features/domain/entities/filter_companies_entity.dart';

abstract class CompanyRepository {
  Future<Either<Failure, CitiesResponse>> getCities();
  Future<Either<Failure, SubCategoriesResponse>> getSubCategories();
  Future<Either<Failure, FilterCompaniesEntity>> filterCompanies(
    FilterCompaniesRequest request,
  );
}
