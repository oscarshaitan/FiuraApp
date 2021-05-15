// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'carousel_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CarouselItem _$CarouselItemFromJson(Map<String, dynamic> json) {
  return _CarrouselItem.fromJson(json);
}

/// @nodoc
class _$CarouselItemTearOff {
  const _$CarouselItemTearOff();

  _CarrouselItem call({required String imageUrl, String? linkUrl = null}) {
    return _CarrouselItem(
      imageUrl: imageUrl,
      linkUrl: linkUrl,
    );
  }

  CarouselItem fromJson(Map<String, Object> json) {
    return CarouselItem.fromJson(json);
  }
}

/// @nodoc
const $CarouselItem = _$CarouselItemTearOff();

/// @nodoc
mixin _$CarouselItem {
  String get imageUrl => throw _privateConstructorUsedError;
  String? get linkUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CarouselItemCopyWith<CarouselItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarouselItemCopyWith<$Res> {
  factory $CarouselItemCopyWith(
          CarouselItem value, $Res Function(CarouselItem) then) =
      _$CarouselItemCopyWithImpl<$Res>;
  $Res call({String imageUrl, String? linkUrl});
}

/// @nodoc
class _$CarouselItemCopyWithImpl<$Res> implements $CarouselItemCopyWith<$Res> {
  _$CarouselItemCopyWithImpl(this._value, this._then);

  final CarouselItem _value;
  // ignore: unused_field
  final $Res Function(CarouselItem) _then;

  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? linkUrl = freezed,
  }) {
    return _then(_value.copyWith(
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      linkUrl: linkUrl == freezed
          ? _value.linkUrl
          : linkUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$CarrouselItemCopyWith<$Res>
    implements $CarouselItemCopyWith<$Res> {
  factory _$CarrouselItemCopyWith(
          _CarrouselItem value, $Res Function(_CarrouselItem) then) =
      __$CarrouselItemCopyWithImpl<$Res>;
  @override
  $Res call({String imageUrl, String? linkUrl});
}

/// @nodoc
class __$CarrouselItemCopyWithImpl<$Res>
    extends _$CarouselItemCopyWithImpl<$Res>
    implements _$CarrouselItemCopyWith<$Res> {
  __$CarrouselItemCopyWithImpl(
      _CarrouselItem _value, $Res Function(_CarrouselItem) _then)
      : super(_value, (v) => _then(v as _CarrouselItem));

  @override
  _CarrouselItem get _value => super._value as _CarrouselItem;

  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? linkUrl = freezed,
  }) {
    return _then(_CarrouselItem(
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      linkUrl: linkUrl == freezed
          ? _value.linkUrl
          : linkUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CarrouselItem implements _CarrouselItem {
  const _$_CarrouselItem({required this.imageUrl, this.linkUrl = null});

  factory _$_CarrouselItem.fromJson(Map<String, dynamic> json) =>
      _$_$_CarrouselItemFromJson(json);

  @override
  final String imageUrl;
  @JsonKey(defaultValue: null)
  @override
  final String? linkUrl;

  @override
  String toString() {
    return 'CarouselItem(imageUrl: $imageUrl, linkUrl: $linkUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CarrouselItem &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.linkUrl, linkUrl) ||
                const DeepCollectionEquality().equals(other.linkUrl, linkUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(linkUrl);

  @JsonKey(ignore: true)
  @override
  _$CarrouselItemCopyWith<_CarrouselItem> get copyWith =>
      __$CarrouselItemCopyWithImpl<_CarrouselItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CarrouselItemToJson(this);
  }
}

abstract class _CarrouselItem implements CarouselItem {
  const factory _CarrouselItem({required String imageUrl, String? linkUrl}) =
      _$_CarrouselItem;

  factory _CarrouselItem.fromJson(Map<String, dynamic> json) =
      _$_CarrouselItem.fromJson;

  @override
  String get imageUrl => throw _privateConstructorUsedError;
  @override
  String? get linkUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CarrouselItemCopyWith<_CarrouselItem> get copyWith =>
      throw _privateConstructorUsedError;
}
