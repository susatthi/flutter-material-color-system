abstract class AppException implements Exception {
  const AppException(this.message);

  final Object message;
}
