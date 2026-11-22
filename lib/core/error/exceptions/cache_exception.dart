import 'package:chatting_application_practice/core/error/exceptions/app_exception.dart';

class CacheException extends AppException {
  const CacheException({super.code, super.statusCode, required super.message});
}
