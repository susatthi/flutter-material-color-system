import 'package:flutter/material.dart';

extension ColorEx on Color {
  /// HEX型の文字列に変換する
  String toHexString() {
    return '${red.toHexString()}'
        '${green.toHexString()}'
        '${blue.toHexString()}';
  }
}

extension IntEx on int {
  /// 大文字、2桁の16進数の文字列に変換する
  String toHexString() => toRadixString(16).padLeft(2, '0').toUpperCase();
}
