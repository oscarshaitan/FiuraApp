import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fiura/home/widgets/carousel/repository/home_slide_repo.dart';

import 'carousel_home_state.dart';

class CarouselHomeCubit extends Cubit<CarouselHomeState> {
  final HomeSlideRepo repo;

  late StreamSubscription _subscription;

  CarouselHomeCubit(this.repo) : super(Init()) {
    _init();
  }

  _init() async {
    _subscription = repo.getCarouselItems().listen((event) {
      emit(Loaded(event));
    });
  }

  @override
  Future<void> close() {
    _subscription.cancel();
    return super.close();
  }
}
