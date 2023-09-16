// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'launch_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LaunchData {
  Uri get url => throw _privateConstructorUsedError;
  url_launcher.LaunchMode get mode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LaunchDataCopyWith<LaunchData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LaunchDataCopyWith<$Res> {
  factory $LaunchDataCopyWith(
          LaunchData value, $Res Function(LaunchData) then) =
      _$LaunchDataCopyWithImpl<$Res, LaunchData>;
  @useResult
  $Res call({Uri url, url_launcher.LaunchMode mode});
}

/// @nodoc
class _$LaunchDataCopyWithImpl<$Res, $Val extends LaunchData>
    implements $LaunchDataCopyWith<$Res> {
  _$LaunchDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? mode = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as Uri,
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as url_launcher.LaunchMode,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LaunchDataCopyWith<$Res>
    implements $LaunchDataCopyWith<$Res> {
  factory _$$_LaunchDataCopyWith(
          _$_LaunchData value, $Res Function(_$_LaunchData) then) =
      __$$_LaunchDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Uri url, url_launcher.LaunchMode mode});
}

/// @nodoc
class __$$_LaunchDataCopyWithImpl<$Res>
    extends _$LaunchDataCopyWithImpl<$Res, _$_LaunchData>
    implements _$$_LaunchDataCopyWith<$Res> {
  __$$_LaunchDataCopyWithImpl(
      _$_LaunchData _value, $Res Function(_$_LaunchData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? mode = null,
  }) {
    return _then(_$_LaunchData(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as Uri,
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as url_launcher.LaunchMode,
    ));
  }
}

/// @nodoc

class _$_LaunchData implements _LaunchData {
  const _$_LaunchData({required this.url, required this.mode});

  @override
  final Uri url;
  @override
  final url_launcher.LaunchMode mode;

  @override
  String toString() {
    return 'LaunchData(url: $url, mode: $mode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LaunchData &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.mode, mode) || other.mode == mode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url, mode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LaunchDataCopyWith<_$_LaunchData> get copyWith =>
      __$$_LaunchDataCopyWithImpl<_$_LaunchData>(this, _$identity);
}

abstract class _LaunchData implements LaunchData {
  const factory _LaunchData(
      {required final Uri url,
      required final url_launcher.LaunchMode mode}) = _$_LaunchData;

  @override
  Uri get url;
  @override
  url_launcher.LaunchMode get mode;
  @override
  @JsonKey(ignore: true)
  _$$_LaunchDataCopyWith<_$_LaunchData> get copyWith =>
      throw _privateConstructorUsedError;
}
