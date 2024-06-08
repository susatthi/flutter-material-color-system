// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tonal_palette.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TonalPaletteCollection {
  TonalPaletteKind get kind => throw _privateConstructorUsedError;
  List<TonalPaletteItem> get items => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TonalPaletteCollectionCopyWith<TonalPaletteCollection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TonalPaletteCollectionCopyWith<$Res> {
  factory $TonalPaletteCollectionCopyWith(TonalPaletteCollection value,
          $Res Function(TonalPaletteCollection) then) =
      _$TonalPaletteCollectionCopyWithImpl<$Res, TonalPaletteCollection>;
  @useResult
  $Res call({TonalPaletteKind kind, List<TonalPaletteItem> items});
}

/// @nodoc
class _$TonalPaletteCollectionCopyWithImpl<$Res,
        $Val extends TonalPaletteCollection>
    implements $TonalPaletteCollectionCopyWith<$Res> {
  _$TonalPaletteCollectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as TonalPaletteKind,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<TonalPaletteItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TonalPaletteCollectionImplCopyWith<$Res>
    implements $TonalPaletteCollectionCopyWith<$Res> {
  factory _$$TonalPaletteCollectionImplCopyWith(
          _$TonalPaletteCollectionImpl value,
          $Res Function(_$TonalPaletteCollectionImpl) then) =
      __$$TonalPaletteCollectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TonalPaletteKind kind, List<TonalPaletteItem> items});
}

/// @nodoc
class __$$TonalPaletteCollectionImplCopyWithImpl<$Res>
    extends _$TonalPaletteCollectionCopyWithImpl<$Res,
        _$TonalPaletteCollectionImpl>
    implements _$$TonalPaletteCollectionImplCopyWith<$Res> {
  __$$TonalPaletteCollectionImplCopyWithImpl(
      _$TonalPaletteCollectionImpl _value,
      $Res Function(_$TonalPaletteCollectionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = null,
    Object? items = null,
  }) {
    return _then(_$TonalPaletteCollectionImpl(
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as TonalPaletteKind,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<TonalPaletteItem>,
    ));
  }
}

/// @nodoc

class _$TonalPaletteCollectionImpl extends _TonalPaletteCollection {
  const _$TonalPaletteCollectionImpl(
      {required this.kind, required final List<TonalPaletteItem> items})
      : _items = items,
        super._();

  @override
  final TonalPaletteKind kind;
  final List<TonalPaletteItem> _items;
  @override
  List<TonalPaletteItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'TonalPaletteCollection(kind: $kind, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TonalPaletteCollectionImpl &&
            (identical(other.kind, kind) || other.kind == kind) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, kind, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TonalPaletteCollectionImplCopyWith<_$TonalPaletteCollectionImpl>
      get copyWith => __$$TonalPaletteCollectionImplCopyWithImpl<
          _$TonalPaletteCollectionImpl>(this, _$identity);
}

abstract class _TonalPaletteCollection extends TonalPaletteCollection {
  const factory _TonalPaletteCollection(
          {required final TonalPaletteKind kind,
          required final List<TonalPaletteItem> items}) =
      _$TonalPaletteCollectionImpl;
  const _TonalPaletteCollection._() : super._();

  @override
  TonalPaletteKind get kind;
  @override
  List<TonalPaletteItem> get items;
  @override
  @JsonKey(ignore: true)
  _$$TonalPaletteCollectionImplCopyWith<_$TonalPaletteCollectionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TonalPaletteItem {
  TonalPaletteKind get kind => throw _privateConstructorUsedError;
  TonalPaletteShade get shade => throw _privateConstructorUsedError;
  PaletteItem get item => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TonalPaletteItemCopyWith<TonalPaletteItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TonalPaletteItemCopyWith<$Res> {
  factory $TonalPaletteItemCopyWith(
          TonalPaletteItem value, $Res Function(TonalPaletteItem) then) =
      _$TonalPaletteItemCopyWithImpl<$Res, TonalPaletteItem>;
  @useResult
  $Res call({TonalPaletteKind kind, TonalPaletteShade shade, PaletteItem item});

  $PaletteItemCopyWith<$Res> get item;
}

/// @nodoc
class _$TonalPaletteItemCopyWithImpl<$Res, $Val extends TonalPaletteItem>
    implements $TonalPaletteItemCopyWith<$Res> {
  _$TonalPaletteItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = null,
    Object? shade = null,
    Object? item = null,
  }) {
    return _then(_value.copyWith(
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as TonalPaletteKind,
      shade: null == shade
          ? _value.shade
          : shade // ignore: cast_nullable_to_non_nullable
              as TonalPaletteShade,
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as PaletteItem,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaletteItemCopyWith<$Res> get item {
    return $PaletteItemCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TonalPaletteItemImplCopyWith<$Res>
    implements $TonalPaletteItemCopyWith<$Res> {
  factory _$$TonalPaletteItemImplCopyWith(_$TonalPaletteItemImpl value,
          $Res Function(_$TonalPaletteItemImpl) then) =
      __$$TonalPaletteItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TonalPaletteKind kind, TonalPaletteShade shade, PaletteItem item});

  @override
  $PaletteItemCopyWith<$Res> get item;
}

/// @nodoc
class __$$TonalPaletteItemImplCopyWithImpl<$Res>
    extends _$TonalPaletteItemCopyWithImpl<$Res, _$TonalPaletteItemImpl>
    implements _$$TonalPaletteItemImplCopyWith<$Res> {
  __$$TonalPaletteItemImplCopyWithImpl(_$TonalPaletteItemImpl _value,
      $Res Function(_$TonalPaletteItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = null,
    Object? shade = null,
    Object? item = null,
  }) {
    return _then(_$TonalPaletteItemImpl(
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as TonalPaletteKind,
      shade: null == shade
          ? _value.shade
          : shade // ignore: cast_nullable_to_non_nullable
              as TonalPaletteShade,
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as PaletteItem,
    ));
  }
}

/// @nodoc

class _$TonalPaletteItemImpl implements _TonalPaletteItem {
  const _$TonalPaletteItemImpl(
      {required this.kind, required this.shade, required this.item});

  @override
  final TonalPaletteKind kind;
  @override
  final TonalPaletteShade shade;
  @override
  final PaletteItem item;

  @override
  String toString() {
    return 'TonalPaletteItem(kind: $kind, shade: $shade, item: $item)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TonalPaletteItemImpl &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.shade, shade) || other.shade == shade) &&
            (identical(other.item, item) || other.item == item));
  }

  @override
  int get hashCode => Object.hash(runtimeType, kind, shade, item);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TonalPaletteItemImplCopyWith<_$TonalPaletteItemImpl> get copyWith =>
      __$$TonalPaletteItemImplCopyWithImpl<_$TonalPaletteItemImpl>(
          this, _$identity);
}

abstract class _TonalPaletteItem implements TonalPaletteItem {
  const factory _TonalPaletteItem(
      {required final TonalPaletteKind kind,
      required final TonalPaletteShade shade,
      required final PaletteItem item}) = _$TonalPaletteItemImpl;

  @override
  TonalPaletteKind get kind;
  @override
  TonalPaletteShade get shade;
  @override
  PaletteItem get item;
  @override
  @JsonKey(ignore: true)
  _$$TonalPaletteItemImplCopyWith<_$TonalPaletteItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
