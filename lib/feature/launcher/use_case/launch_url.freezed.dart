// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'launch_url.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LaunchUrlUseCaseState {
  Uri get url => throw _privateConstructorUsedError;
  url_launcher.LaunchMode get mode => throw _privateConstructorUsedError;

  /// Create a copy of LaunchUrlUseCaseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LaunchUrlUseCaseStateCopyWith<LaunchUrlUseCaseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LaunchUrlUseCaseStateCopyWith<$Res> {
  factory $LaunchUrlUseCaseStateCopyWith(LaunchUrlUseCaseState value,
          $Res Function(LaunchUrlUseCaseState) then) =
      _$LaunchUrlUseCaseStateCopyWithImpl<$Res, LaunchUrlUseCaseState>;
  @useResult
  $Res call({Uri url, url_launcher.LaunchMode mode});
}

/// @nodoc
class _$LaunchUrlUseCaseStateCopyWithImpl<$Res,
        $Val extends LaunchUrlUseCaseState>
    implements $LaunchUrlUseCaseStateCopyWith<$Res> {
  _$LaunchUrlUseCaseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LaunchUrlUseCaseState
  /// with the given fields replaced by the non-null parameter values.
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
abstract class _$$LaunchUrlUseCaseStateImplCopyWith<$Res>
    implements $LaunchUrlUseCaseStateCopyWith<$Res> {
  factory _$$LaunchUrlUseCaseStateImplCopyWith(
          _$LaunchUrlUseCaseStateImpl value,
          $Res Function(_$LaunchUrlUseCaseStateImpl) then) =
      __$$LaunchUrlUseCaseStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Uri url, url_launcher.LaunchMode mode});
}

/// @nodoc
class __$$LaunchUrlUseCaseStateImplCopyWithImpl<$Res>
    extends _$LaunchUrlUseCaseStateCopyWithImpl<$Res,
        _$LaunchUrlUseCaseStateImpl>
    implements _$$LaunchUrlUseCaseStateImplCopyWith<$Res> {
  __$$LaunchUrlUseCaseStateImplCopyWithImpl(_$LaunchUrlUseCaseStateImpl _value,
      $Res Function(_$LaunchUrlUseCaseStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LaunchUrlUseCaseState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? mode = null,
  }) {
    return _then(_$LaunchUrlUseCaseStateImpl(
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

class _$LaunchUrlUseCaseStateImpl implements _LaunchUrlUseCaseState {
  const _$LaunchUrlUseCaseStateImpl({required this.url, required this.mode});

  @override
  final Uri url;
  @override
  final url_launcher.LaunchMode mode;

  @override
  String toString() {
    return 'LaunchUrlUseCaseState(url: $url, mode: $mode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LaunchUrlUseCaseStateImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.mode, mode) || other.mode == mode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url, mode);

  /// Create a copy of LaunchUrlUseCaseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LaunchUrlUseCaseStateImplCopyWith<_$LaunchUrlUseCaseStateImpl>
      get copyWith => __$$LaunchUrlUseCaseStateImplCopyWithImpl<
          _$LaunchUrlUseCaseStateImpl>(this, _$identity);
}

abstract class _LaunchUrlUseCaseState implements LaunchUrlUseCaseState {
  const factory _LaunchUrlUseCaseState(
          {required final Uri url,
          required final url_launcher.LaunchMode mode}) =
      _$LaunchUrlUseCaseStateImpl;

  @override
  Uri get url;
  @override
  url_launcher.LaunchMode get mode;

  /// Create a copy of LaunchUrlUseCaseState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LaunchUrlUseCaseStateImplCopyWith<_$LaunchUrlUseCaseStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
