extension IntEx on int {
  /// 大文字、2桁の16進数の文字列に変換する
  String toHexString() => toRadixString(16).padLeft(2, '0').toUpperCase();
}
