// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'remember_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RememberItem _$RememberItemFromJson(Map<String, dynamic> json) {
  return _RememberItem.fromJson(json);
}

/// @nodoc
class _$RememberItemTearOff {
  const _$RememberItemTearOff();

  _RememberItem call(
      {required String title, required List<String> imagesUrls}) {
    return _RememberItem(
      title: title,
      imagesUrls: imagesUrls,
    );
  }

  RememberItem fromJson(Map<String, Object> json) {
    return RememberItem.fromJson(json);
  }
}

/// @nodoc
const $RememberItem = _$RememberItemTearOff();

/// @nodoc
mixin _$RememberItem {
  String get title => throw _privateConstructorUsedError;
  List<String> get imagesUrls => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RememberItemCopyWith<RememberItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RememberItemCopyWith<$Res> {
  factory $RememberItemCopyWith(
          RememberItem value, $Res Function(RememberItem) then) =
      _$RememberItemCopyWithImpl<$Res>;
  $Res call({String title, List<String> imagesUrls});
}

/// @nodoc
class _$RememberItemCopyWithImpl<$Res> implements $RememberItemCopyWith<$Res> {
  _$RememberItemCopyWithImpl(this._value, this._then);

  final RememberItem _value;
  // ignore: unused_field
  final $Res Function(RememberItem) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? imagesUrls = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imagesUrls: imagesUrls == freezed
          ? _value.imagesUrls
          : imagesUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$RememberItemCopyWith<$Res>
    implements $RememberItemCopyWith<$Res> {
  factory _$RememberItemCopyWith(
          _RememberItem value, $Res Function(_RememberItem) then) =
      __$RememberItemCopyWithImpl<$Res>;
  @override
  $Res call({String title, List<String> imagesUrls});
}

/// @nodoc
class __$RememberItemCopyWithImpl<$Res> extends _$RememberItemCopyWithImpl<$Res>
    implements _$RememberItemCopyWith<$Res> {
  __$RememberItemCopyWithImpl(
      _RememberItem _value, $Res Function(_RememberItem) _then)
      : super(_value, (v) => _then(v as _RememberItem));

  @override
  _RememberItem get _value => super._value as _RememberItem;

  @override
  $Res call({
    Object? title = freezed,
    Object? imagesUrls = freezed,
  }) {
    return _then(_RememberItem(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imagesUrls: imagesUrls == freezed
          ? _value.imagesUrls
          : imagesUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RememberItem implements _RememberItem {
  const _$_RememberItem({required this.title, required this.imagesUrls});

  factory _$_RememberItem.fromJson(Map<String, dynamic> json) =>
      _$_$_RememberItemFromJson(json);

  @override
  final String title;
  @override
  final List<String> imagesUrls;

  @override
  String toString() {
    return 'RememberItem(title: $title, imagesUrls: $imagesUrls)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RememberItem &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.imagesUrls, imagesUrls) ||
                const DeepCollectionEquality()
                    .equals(other.imagesUrls, imagesUrls)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(imagesUrls);

  @JsonKey(ignore: true)
  @override
  _$RememberItemCopyWith<_RememberItem> get copyWith =>
      __$RememberItemCopyWithImpl<_RememberItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RememberItemToJson(this);
  }
}

abstract class _RememberItem implements RememberItem {
  const factory _RememberItem(
      {required String title,
      required List<String> imagesUrls}) = _$_RememberItem;

  factory _RememberItem.fromJson(Map<String, dynamic> json) =
      _$_RememberItem.fromJson;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  List<String> get imagesUrls => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RememberItemCopyWith<_RememberItem> get copyWith =>
      throw _privateConstructorUsedError;
}
