import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fiura/home/widgets/memories/repository/home_memories_repo.dart';

import 'memories_state.dart';

class MemoriesCubit extends Cubit<MemoriesState> {
  final HomeMemoriesRepo repo;

  late StreamSubscription _subscription;

  MemoriesCubit(this.repo) : super(Init()) {
    _init();
  }

  _init() {
    _subscription = repo.getMemoriesItems().listen((event) {
      emit(Loaded(event));
    });
  }

  @override
  Future<void> close() {
    _subscription.cancel();
    return super.close();
  }
}
