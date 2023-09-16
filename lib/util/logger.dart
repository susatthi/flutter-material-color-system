import 'package:roggle/roggle.dart';

const _loggerName = '[APP]';

final logger = Roggle(
  printer: SinglePrettyPrinter(
    loggerName: _loggerName,
    // error 以上のときはスタックトレースを出力する
    stackTraceLevel: Level.error,
    // ログが長くなるので非表示
    printCaller: false,
  ),
);
