import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fiura/home/widgets/carousel/models/carousel_item.dart';

class HomeSlideRepo {
  final FirebaseFirestore fireStore;

  HomeSlideRepo(this.fireStore);

  Stream<List<CarouselItem>> getCarouselItems() {
    return fireStore.collection('HomeSlideWeb').snapshots().map((event) => event
        .docs
        .map((document) => CarouselItem.fromJson(document.data()))
        .toList());
  }
}
