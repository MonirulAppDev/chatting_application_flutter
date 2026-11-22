import 'package:chatting_application_practice/core/error/exceptions/app_exception.dart';

class NetworkException extends AppException {
  const NetworkException({
    super.code,
    super.statusCode,
    required super.message,
  });
}
