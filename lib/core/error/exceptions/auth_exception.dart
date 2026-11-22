import 'package:chatting_application_practice/core/error/exceptions/app_exception.dart';

class AuthException extends AppException {
  const AuthException({super.code, super.statusCode, required super.message});
}
