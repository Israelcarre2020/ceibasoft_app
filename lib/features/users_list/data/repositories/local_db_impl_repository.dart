// ignore_for_file: void_checks, avoid_function_literals_in_foreach_calls, import_of_legacy_library_into_null_saf

import '../../domain/entities/post_model.dart';
import '../../domain/entities/user_model.dart';
import '../../domain/repositories/local_db_repository_contract.dart';
import '../data_source/get_local_db_data_source.dart';

class LocalDbRepositoryImpl implements LocalDBRepositoryContract {
  final GetLocalDbDataSource getLocalDbDataSource;

  LocalDbRepositoryImpl(this.getLocalDbDataSource);

  @override
  Future<void> saveAllPosts(List<PostModel> allPosts) async {
    await getLocalDbDataSource.saveAllPosts(allPosts);
  }

  @override
  Future<List<PostModel>> getAllPosts() async {
    return getLocalDbDataSource.getAllPosts();
  }

  @override
  Future<void> saveAllDataUsers(List<UserModel> users) async {
    await getLocalDbDataSource.saveAllDataUsers(users);
  }

  @override
  Future<List<UserModel>> getAllUsers() async {
    return getLocalDbDataSource.getAllUsers();
  }
}
