// import 'package:dartz/dartz.dart';
// import 'package:task/core/error/failures.dart';
// import 'package:task/core/models/city_model.dart';
// import 'package:task/features/domain/repositories/filter_repository.dart';

// // يتم تعريف واجهة UseCase عامة هنا (اختياري لكن احترافي)
// abstract class BaseUseCase<In, Out> {
//   Future<Either<Failure, Out>> call(In input);
// }

// // الـ Use Case لجلب المدن لا يحتاج إلى معامل إدخال، لذا استخدمنا void
// class GetCitiesUseCase implements BaseUseCase<void, List<CityModel>> {
//   final FilterRepository _repository;

//   GetCitiesUseCase(this._repository);

//   // يتم استخدام دالة call لجعل استدعاء الـ UseCase يبدو مثل دالة
//   @override
//   Future<Either<Failure, List<CityModel>>> call(void input) async {
//     return await _repository.getCities();
//   }
// }