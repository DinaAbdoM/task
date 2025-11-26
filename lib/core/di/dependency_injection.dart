import 'package:get_it/get_it.dart';
import 'package:task/core/networking/api_service.dart';
import 'package:task/core/networking/dio_factory.dart';
import 'package:task/features/presentation/companies/companies_cubit.dart';
import 'package:task/features/domain/repositories/filter_repository.dart';
import 'package:task/features/data/repo/filter_repository_impl.dart';
import 'package:task/features/domain/usecases/filter_companies_usecase.dart';

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

  // ---------------------------------------
  // 2. طبقة Repository (Data Layer)
  // ---------------------------------------
  //   getIt.registerLazySingleton<FilterRepository>(
  //     () => FilterRepositoryImpl(getIt<ApiService>()),
  //   );

  //   // ---------------------------------------
  //   // 3. طبقة Use Cases (Domain Layer)
  //   // ---------------------------------------
  //   getIt.registerLazySingleton<GetCitiesUseCase>(
  //     () => GetCitiesUseCase(getIt<FilterRepository>()),
  //   );
  //   // 🔑 تم الإضافة: تسجيل GetSubCategoriesUseCase
  //   getIt.registerLazySingleton<GetSubCategoriesUseCase>(
  //     () => GetSubCategoriesUseCase(getIt<FilterRepository>()),
  //   );
  //   getIt.registerLazySingleton<FilterCompaniesUseCase>(
  //     () => FilterCompaniesUseCase(getIt<FilterRepository>()),
  //   );

  //   // ---------------------------------------
  //   // 4. طبقة Cubits/Blocs (Presentation Layer)
  //   // ---------------------------------------
  //   getIt.registerFactory<LookupsCubit>(
  //     () => LookupsCubit(
  //       getIt<GetCitiesUseCase>(),
  //       getIt<GetSubCategoriesUseCase>(),
  //     ),
  //   );
  //   getIt.registerFactory<FilterCubit>(
  //     () => FilterCubit(getIt<FilterCompaniesUseCase>()),
  //   );
  // }
}
