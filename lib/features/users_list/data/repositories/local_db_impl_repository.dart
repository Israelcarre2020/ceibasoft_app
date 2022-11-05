// ignore_for_file: void_checks, avoid_function_literals_in_foreach_calls, import_of_legacy_library_into_null_saf

import '../../domain/entities/post_model.dart';
import '../../domain/repositories/local_db_repository_contract.dart';
import '../data_source/get_local_db_remote_data_source.dart';

class LocalDbRepositoryImpl implements LocalDBRepositoryContract {
  final GetLocalDbRemoteDataSource getLocalDbRemoteDataSource;

  LocalDbRepositoryImpl(this.getLocalDbRemoteDataSource);

  @override
  Future<void> saveAllPosts(List<PostModel> allPosts) async {
    await getLocalDbRemoteDataSource.saveAllPosts(allPosts);
  }

  @override
  Future<List<PostModel>> getAllPosts() async {
    return getLocalDbRemoteDataSource.getAllPosts();
  }
}
