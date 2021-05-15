import 'package:fiura/_core/errors/exceptions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'carousel_item.freezed.dart';

part 'carousel_item.g.dart';

@freezed
class CarouselItem with _$CarouselItem {
  const factory CarouselItem({
    required String imageUrl,
    @Default(null) String? linkUrl,
  }) = _CarrouselItem;

  factory CarouselItem.fromJson(Map<String, dynamic>? json) => json != null
      ? _$CarouselItemFromJson(json)
      : throw NullModelInitFailException(error: 'Error creating CarrouselItem');
}
