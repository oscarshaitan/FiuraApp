import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fiura/home/widgets/memories/model/remember_item.dart';

part 'memories_state.freezed.dart';

@freezed
class MemoriesState with _$MemoriesState {
  const factory MemoriesState.init() = Init;
  const factory MemoriesState.loaded(List<RememberItem> items) = Loaded;
}


