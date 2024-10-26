// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'color_scheme.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ColorSchemeCollection {
  List<ColorSchemeItem> get items => throw _privateConstructorUsedError;

  /// Create a copy of ColorSchemeCollection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ColorSchemeCollectionCopyWith<ColorSchemeCollection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColorSchemeCollectionCopyWith<$Res> {
  factory $ColorSchemeCollectionCopyWith(ColorSchemeCollection value,
          $Res Function(ColorSchemeCollection) then) =
      _$ColorSchemeCollectionCopyWithImpl<$Res, ColorSchemeCollection>;
  @useResult
  $Res call({List<ColorSchemeItem> items});
}

/// @nodoc
class _$ColorSchemeCollectionCopyWithImpl<$Res,
        $Val extends ColorSchemeCollection>
    implements $ColorSchemeCollectionCopyWith<$Res> {
  _$ColorSchemeCollectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ColorSchemeCollection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ColorSchemeItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ColorSchemeCollectionImplCopyWith<$Res>
    implements $ColorSchemeCollectionCopyWith<$Res> {
  factory _$$ColorSchemeCollectionImplCopyWith(
          _$ColorSchemeCollectionImpl value,
          $Res Function(_$ColorSchemeCollectionImpl) then) =
      __$$ColorSchemeCollectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ColorSchemeItem> items});
}

/// @nodoc
class __$$ColorSchemeCollectionImplCopyWithImpl<$Res>
    extends _$ColorSchemeCollectionCopyWithImpl<$Res,
        _$ColorSchemeCollectionImpl>
    implements _$$ColorSchemeCollectionImplCopyWith<$Res> {
  __$$ColorSchemeCollectionImplCopyWithImpl(_$ColorSchemeCollectionImpl _value,
      $Res Function(_$ColorSchemeCollectionImpl) _then)
      : super(_value, _then);

  /// Create a copy of ColorSchemeCollection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$ColorSchemeCollectionImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ColorSchemeItem>,
    ));
  }
}

/// @nodoc

class _$ColorSchemeCollectionImpl extends _ColorSchemeCollection {
  const _$ColorSchemeCollectionImpl(
      {required final List<ColorSchemeItem> items})
      : _items = items,
        super._();

  final List<ColorSchemeItem> _items;
  @override
  List<ColorSchemeItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'ColorSchemeCollection(items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ColorSchemeCollectionImpl &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  /// Create a copy of ColorSchemeCollection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ColorSchemeCollectionImplCopyWith<_$ColorSchemeCollectionImpl>
      get copyWith => __$$ColorSchemeCollectionImplCopyWithImpl<
          _$ColorSchemeCollectionImpl>(this, _$identity);
}

abstract class _ColorSchemeCollection extends ColorSchemeCollection {
  const factory _ColorSchemeCollection(
          {required final List<ColorSchemeItem> items}) =
      _$ColorSchemeCollectionImpl;
  const _ColorSchemeCollection._() : super._();

  @override
  List<ColorSchemeItem> get items;

  /// Create a copy of ColorSchemeCollection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ColorSchemeCollectionImplCopyWith<_$ColorSchemeCollectionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ColorSchemeItem {
  ColorSchemeKind get kind => throw _privateConstructorUsedError;
  PaletteItem get item => throw _privateConstructorUsedError;

  /// Create a copy of ColorSchemeItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ColorSchemeItemCopyWith<ColorSchemeItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColorSchemeItemCopyWith<$Res> {
  factory $ColorSchemeItemCopyWith(
          ColorSchemeItem value, $Res Function(ColorSchemeItem) then) =
      _$ColorSchemeItemCopyWithImpl<$Res, ColorSchemeItem>;
  @useResult
  $Res call({ColorSchemeKind kind, PaletteItem item});

  $PaletteItemCopyWith<$Res> get item;
}

/// @nodoc
class _$ColorSchemeItemCopyWithImpl<$Res, $Val extends ColorSchemeItem>
    implements $ColorSchemeItemCopyWith<$Res> {
  _$ColorSchemeItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ColorSchemeItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = null,
    Object? item = null,
  }) {
    return _then(_value.copyWith(
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as ColorSchemeKind,
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as PaletteItem,
    ) as $Val);
  }

  /// Create a copy of ColorSchemeItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaletteItemCopyWith<$Res> get item {
    return $PaletteItemCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ColorSchemeItemImplCopyWith<$Res>
    implements $ColorSchemeItemCopyWith<$Res> {
  factory _$$ColorSchemeItemImplCopyWith(_$ColorSchemeItemImpl value,
          $Res Function(_$ColorSchemeItemImpl) then) =
      __$$ColorSchemeItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ColorSchemeKind kind, PaletteItem item});

  @override
  $PaletteItemCopyWith<$Res> get item;
}

/// @nodoc
class __$$ColorSchemeItemImplCopyWithImpl<$Res>
    extends _$ColorSchemeItemCopyWithImpl<$Res, _$ColorSchemeItemImpl>
    implements _$$ColorSchemeItemImplCopyWith<$Res> {
  __$$ColorSchemeItemImplCopyWithImpl(
      _$ColorSchemeItemImpl _value, $Res Function(_$ColorSchemeItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of ColorSchemeItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = null,
    Object? item = null,
  }) {
    return _then(_$ColorSchemeItemImpl(
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as ColorSchemeKind,
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as PaletteItem,
    ));
  }
}

/// @nodoc

class _$ColorSchemeItemImpl implements _ColorSchemeItem {
  const _$ColorSchemeItemImpl({required this.kind, required this.item});

  @override
  final ColorSchemeKind kind;
  @override
  final PaletteItem item;

  @override
  String toString() {
    return 'ColorSchemeItem(kind: $kind, item: $item)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ColorSchemeItemImpl &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.item, item) || other.item == item));
  }

  @override
  int get hashCode => Object.hash(runtimeType, kind, item);

  /// Create a copy of ColorSchemeItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ColorSchemeItemImplCopyWith<_$ColorSchemeItemImpl> get copyWith =>
      __$$ColorSchemeItemImplCopyWithImpl<_$ColorSchemeItemImpl>(
          this, _$identity);
}

abstract class _ColorSchemeItem implements ColorSchemeItem {
  const factory _ColorSchemeItem(
      {required final ColorSchemeKind kind,
      required final PaletteItem item}) = _$ColorSchemeItemImpl;

  @override
  ColorSchemeKind get kind;
  @override
  PaletteItem get item;

  /// Create a copy of ColorSchemeItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ColorSchemeItemImplCopyWith<_$ColorSchemeItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
