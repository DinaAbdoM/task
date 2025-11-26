// import 'package:dartz/dartz.dart';
// import 'package:task/core/error/failures.dart';
// import 'package:task/core/models/sub_category_model.dart';
// import 'package:task/features/domain/repositories/filter_repository.dart';
// import 'package:task/features/domain/usecases/get_cities_usecase.dart';

// class GetSubCategoriesUseCase implements BaseUseCase<void, List<SubCategoryModel>> {
//   final FilterRepository _repository;

//   GetSubCategoriesUseCase(this._repository);

//   @override
//   Future<Either<Failure, List<SubCategoryModel>>> call(void input) async {
//     return await _repository.getAllSubCategories();
//   }
// }