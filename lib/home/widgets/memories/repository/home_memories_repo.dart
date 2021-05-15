import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fiura/home/widgets/memories/model/remember_item.dart';

class HomeMemoriesRepo {
  final FirebaseFirestore fireStore;

  HomeMemoriesRepo(this.fireStore);

  Stream<List<RememberItem>> getMemoriesItems() {
    return fireStore.collection('RememberWeb').limit(3).snapshots().map(
        (event) => event.docs
            .map((document) => RememberItem.fromJson(document.data()))
            .toList());
  }
}
