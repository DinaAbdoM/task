import 'package:get_it/get_it.dart';
import 'package:task/core/networking/api_service.dart';
import 'package:task/core/networking/dio_factory.dart';
import 'package:task/features/presentation/companies/companies_cubit.dart';
import 'package:task/features/domain/repositories/filter_repository.dart';
import 'package:task/features/data/repo/filter_repository_impl.dart';
import 'package:task/features/domain/usecases/filter_companies_usecase.dart';
import 'package:task/features/presentation/filter/filter_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  getIt.registerLazySingleton<DioFactory>(() => DioFactory());

  getIt.registerLazySingleton<ApiService>(
    () => ApiService(getIt<DioFactory>().create()),
  );

  getIt.registerLazySingleton<CompanyRepository>(
    () => CompanyRepositoryImpl(getIt<ApiService>()),
  );

  getIt.registerLazySingleton<FilterCompaniesUseCase>(
    () => FilterCompaniesUseCase(getIt<CompanyRepository>()),
  );

  getIt.registerFactory<CompaniesCubit>(
    () => CompaniesCubit(getIt<FilterCompaniesUseCase>()),
  );
  getIt.registerFactory<FilterCubit>(
    () => FilterCubit(getIt<CompanyRepository>()),
  );

}
