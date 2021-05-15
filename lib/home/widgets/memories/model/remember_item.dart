import 'package:fiura/_core/errors/exceptions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'remember_item.freezed.dart';

part 'remember_item.g.dart';

@freezed
class RememberItem with _$RememberItem {
  const factory RememberItem({
    required String title,
    required List<String> imagesUrls,
  }) = _RememberItem;

  factory RememberItem.fromJson(Map<String, dynamic>? json) => json != null
      ? _$RememberItemFromJson(json)
      : throw NullModelInitFailException(error: 'Error creating RememberItem');
}
