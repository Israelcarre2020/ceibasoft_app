import '../entities/post_model.dart';

abstract class LocalDBRepositoryContract {
  Future<void> saveAllPosts(List<PostModel> allPosts);
  Future<List<PostModel>> getAllPosts();
}
