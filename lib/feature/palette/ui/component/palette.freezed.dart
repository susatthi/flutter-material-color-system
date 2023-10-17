// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'palette.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaletteItem {
  Color get backgroundColor => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  String? get subText => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaletteItemCopyWith<PaletteItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaletteItemCopyWith<$Res> {
  factory $PaletteItemCopyWith(
          PaletteItem value, $Res Function(PaletteItem) then) =
      _$PaletteItemCopyWithImpl<$Res, PaletteItem>;
  @useResult
  $Res call({Color backgroundColor, String? text, String? subText});
}

/// @nodoc
class _$PaletteItemCopyWithImpl<$Res, $Val extends PaletteItem>
    implements $PaletteItemCopyWith<$Res> {
  _$PaletteItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backgroundColor = null,
    Object? text = freezed,
    Object? subText = freezed,
  }) {
    return _then(_value.copyWith(
      backgroundColor: null == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as Color,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      subText: freezed == subText
          ? _value.subText
          : subText // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaletteItemImplCopyWith<$Res>
    implements $PaletteItemCopyWith<$Res> {
  factory _$$PaletteItemImplCopyWith(
          _$PaletteItemImpl value, $Res Function(_$PaletteItemImpl) then) =
      __$$PaletteItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Color backgroundColor, String? text, String? subText});
}

/// @nodoc
class __$$PaletteItemImplCopyWithImpl<$Res>
    extends _$PaletteItemCopyWithImpl<$Res, _$PaletteItemImpl>
    implements _$$PaletteItemImplCopyWith<$Res> {
  __$$PaletteItemImplCopyWithImpl(
      _$PaletteItemImpl _value, $Res Function(_$PaletteItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backgroundColor = null,
    Object? text = freezed,
    Object? subText = freezed,
  }) {
    return _then(_$PaletteItemImpl(
      backgroundColor: null == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as Color,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      subText: freezed == subText
          ? _value.subText
          : subText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PaletteItemImpl implements _PaletteItem {
  const _$PaletteItemImpl(
      {required this.backgroundColor, this.text, this.subText});

  @override
  final Color backgroundColor;
  @override
  final String? text;
  @override
  final String? subText;

  @override
  String toString() {
    return 'PaletteItem(backgroundColor: $backgroundColor, text: $text, subText: $subText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaletteItemImpl &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.subText, subText) || other.subText == subText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, backgroundColor, text, subText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaletteItemImplCopyWith<_$PaletteItemImpl> get copyWith =>
      __$$PaletteItemImplCopyWithImpl<_$PaletteItemImpl>(this, _$identity);
}

abstract class _PaletteItem implements PaletteItem {
  const factory _PaletteItem(
      {required final Color backgroundColor,
      final String? text,
      final String? subText}) = _$PaletteItemImpl;

  @override
  Color get backgroundColor;
  @override
  String? get text;
  @override
  String? get subText;
  @override
  @JsonKey(ignore: true)
  _$$PaletteItemImplCopyWith<_$PaletteItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
