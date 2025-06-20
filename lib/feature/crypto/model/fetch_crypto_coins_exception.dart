import 'package:test_project/common/core/project_exception.dart';

class FetchCryptoCoinsException implements ProjectException {
  FetchCryptoCoinsException(
    this.message, {
    this.originalError,
    this.stackTrace,
  });

  final Object? originalError;
  final StackTrace? stackTrace;

  @override
  final String message;

  @override
  String toString() =>
      'FetchCryptoCoinsException(message: $message, Original error: $originalError, Stack trace: $stackTrace';
}
