import 'package:task/core/networking/api_error_handler.dart';
import 'package:task/core/networking/api_error_messages.dart';
import 'package:task/core/networking/api_error_model.dart';

class Failure {
  final String message;
  final int code;

  Failure({required this.message, required this.code});

  factory Failure.apiInternalError(String? message) => Failure(
    message: message ?? ApiErrorMessages.unknownError,
    code: ApiInternalStatus.failure,
  );
}

extension ApiErrorModelExtention on ApiErrorModel {
  Failure toFailure() =>
      Failure(message: message, code: code ?? ApiInternalStatus.failure);
}
