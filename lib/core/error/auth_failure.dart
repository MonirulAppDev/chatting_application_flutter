import 'package:chatting_application_practice/core/error/failure.dart';

class AuthFailure extends Failure {
  const AuthFailure({super.message = "Authentication Failed"});
}
