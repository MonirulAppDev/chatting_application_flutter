import 'package:chatting_application_practice/core/error/failure.dart';

class NetworkFailure extends Failure {
  const NetworkFailure({super.message = "Network Failed"});
}
