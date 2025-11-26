// import 'package:dartz/dartz.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:task/core/error/failures.dart';
// import 'package:task/core/models/city_model.dart';
// import 'package:task/core/models/sub_category_model.dart';
// import 'package:task/features/domain/usecases/get_cities_usecase.dart';
// import 'package:task/features/domain/usecases/get_subcategories_usecase.dart';
// import 'lookups_state.dart';

// class LookupsCubit extends Cubit<LookupsState> {
//   final GetCitiesUseCase _citiesUseCase;
//   final GetSubCategoriesUseCase _subcategoriesUseCase;

//   LookupsCubit(this._citiesUseCase, this._subcategoriesUseCase)
//       : super(const LookupsState.initial());

//   // ✅ تغيير اسم الدالة ليتوافق مع HomeView
//   Future<void> fetchLookupsData() async {
//     emit(const LookupsState.loading());

//     final citiesFuture = _citiesUseCase.call(null);
//     final subcategoriesFuture = _subcategoriesUseCase.call(null);

//     // تحديد النوع الصريح لـ Future.wait
//     final results = await Future.wait<Either<Failure, dynamic>>([
//       citiesFuture,
//       subcategoriesFuture
//     ]);

//     // استخدام as لتحديد النوع بشكل آمن
//     final citiesEither = results[0] as Either<Failure, List<CityModel>>;
//     final subcategoriesEither = results[1] as Either<Failure, List<SubCategoryModel>>;

//     // معالجة الفشل
//     if (citiesEither.isLeft()) {
//       return citiesEither.fold(
//         (failure) => emit(LookupsState.error(failure: failure)),
//         (_) => null,
//       );
//     }
//     if (subcategoriesEither.isLeft()) {
//       return subcategoriesEither.fold(
//         (failure) => emit(LookupsState.error(failure: failure)),
//         (_) => null,
//       );
//     }

//     // النجاح
//     citiesEither.fold((_) => null, (cities) {
//       subcategoriesEither.fold((_) => null, (subcategories) {
//         emit(
//           LookupsState.success(cities: cities, subcategories: subcategories),
//         );
//       });
//     });
//   }
// }