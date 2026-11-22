class AppException implements Exception {
  final int? statusCode;
  final String message;
  final String? code;

  const AppException({this.statusCode, this.code, required this.message});

  @override
  String toString() {
    return "AppException(status_code: $statusCode, code: $code, message: $message)";
  }
}
