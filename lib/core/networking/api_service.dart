import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:task/features/data/models/cities_response.dart';
import 'package:task/features/data/models/filter_companies_response.dart';
import 'package:task/features/data/models/subcategories_response.dart';
import 'package:task/core/networking/api_constants.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;
  @GET(ApiConstants.cities)
  Future<CitiesResponse> getCities();

  @GET(ApiConstants.subCategories)
  Future<SubCategoriesResponse> getSubCategories();

  @POST(ApiConstants.filterCompanies)
  @MultiPart()
  Future<FilterCompaniesResponse> filterCompanies(
    @Part() Map<String, dynamic> filter,
  );
}
