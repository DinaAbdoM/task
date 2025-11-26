import 'package:dartz/dartz.dart';
import 'package:task/core/error/failures.dart';

abstract class BaseUseCase<Out, Params> {
  Future<Either<Failure, Out>> call(Params params);
}
