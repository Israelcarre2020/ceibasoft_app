// ignore_for_file: import_of_legacy_library_into_null_safe, void_checks, avoid_function_literals_in_foreach_calls

import 'dart:convert';

import 'package:sembast/sembast.dart';

import '../../../../core/db/init_local_db.dart';
import '../../domain/entities/post_model.dart';
import '../../domain/entities/user_model.dart';

class GetLocalDbDataSource {
  final InitLocalDb localDB;

  final StoreRef storePosts;
  final StoreRef storeUsers;

  GetLocalDbDataSource(this.localDB, this.storePosts, this.storeUsers);

  Future<List<PostModel>> getAllPosts() async {
    final database = await localDB.initSembast();
    final snapshots = await storePosts.find(database);

    return snapshots
        .map((snapshot) => PostModel.fromJson(snapshot.value))
        .toList(growable: false);
  }

  Future<void> saveAllPosts(List<PostModel> allPosts) async {
    final database = await localDB.initSembast();
    allPosts.forEach((element) async {
      await storePosts.add(database, element.toJson());
    });
  }

  Future<void> saveAllDataUsers(List<UserModel> users) async {
    final database = await localDB.initSembast();

    users.forEach((element) async {
      await storeUsers.add(database, element.toString());
    });
  }

  Future<List<UserModel>> getAllUsers() async {
    final database = await localDB.initSembast();
    final snapshots = await storeUsers.find(database);
    return snapshots
        .map((snapshot) => UserModel.fromJson(jsonDecode(snapshot.value)))
        .toList(growable: false);
  }
}
