
import 'package:fiura/home/widgets/carousel/models/carousel_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'carousel_home_state.freezed.dart';

@freezed
class CarouselHomeState with _$CarouselHomeState {
  const factory CarouselHomeState.init() = Init;

  const factory CarouselHomeState.loaded(List<CarouselItem> items) = Loaded;
}
