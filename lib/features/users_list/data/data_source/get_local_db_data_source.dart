// ignore_for_file: import_of_legacy_library_into_null_safe, void_checks, avoid_function_literals_in_foreach_calls

import 'package:sembast/sembast.dart';

import '../../../../core/db/initLocalDB.dart';
import '../../domain/entities/post_model.dart';

class GetLocalDbDataSource {
  final InitLocalDb localDB;

  final StoreRef store;

  GetLocalDbDataSource(this.localDB, this.store);

  Future<List<PostModel>> getAllPosts() async {
    final database = await localDB.initSembast();
    final snapshots = await store.find(database);
    return snapshots
        .map((snapshot) => PostModel.fromJson(snapshot.value))
        .toList(growable: false);
  }

  Future<void> saveAllPosts(List<PostModel> allPosts) async {
    final database = await localDB.initSembast();
    allPosts.forEach((element) async {
      await store.add(database, element.toJson());
    });
  }
}
