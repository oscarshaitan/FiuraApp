import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';

import 'home/widgets/carousel/repository/home_slide_repo.dart';
import 'home/widgets/memories/repository/home_memories_repo.dart';

final sl = GetIt.instance..allowReassignment = true;

init() {
  sl.registerLazySingleton(() => FirebaseFirestore.instance);
  sl.registerLazySingleton(() => HomeSlideRepo(sl()));
  sl.registerLazySingleton(() => HomeMemoriesRepo(sl()));
}
