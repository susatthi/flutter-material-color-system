import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:url_launcher/url_launcher.dart' as url_launcher;

part 'launch_data.freezed.dart';

@freezed
class LaunchData with _$LaunchData {
  const factory LaunchData({
    required Uri url,
    required url_launcher.LaunchMode mode,
  }) = _LaunchData;
}
