// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remember_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RememberItem _$_$_RememberItemFromJson(Map<String, dynamic> json) {
  return _$_RememberItem(
    title: json['title'] as String,
    imagesUrls:
        (json['imagesUrls'] as List<dynamic>).map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$_$_RememberItemToJson(_$_RememberItem instance) =>
    <String, dynamic>{
      'title': instance.title,
      'imagesUrls': instance.imagesUrls,
    };
