import 'package:chatting_application_practice/core/error/exceptions/app_exception.dart';

class ServerException extends AppException {
  const ServerException({super.code, super.statusCode, required super.message});
}
