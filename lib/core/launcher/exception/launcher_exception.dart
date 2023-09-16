import '../../exception/app_exception.dart';
import '../entity/launch_data.dart';

class LauncherException extends AppException {
  const LauncherException(
    this.data, [
    this.details,
    this.stacktrace,
  ]) : super('Launcher exception');

  /// 起動データ
  final LaunchData data;

  /// 例外
  final dynamic details;

  /// スタックトレース
  final StackTrace? stacktrace;

  @override
  String toString() => 'LauncherException: $message, '
      '$data, details = $details';
}
