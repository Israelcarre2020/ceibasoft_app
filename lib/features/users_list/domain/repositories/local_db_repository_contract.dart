import '../entities/post_model.dart';
import '../entities/user_model.dart';

abstract class LocalDBRepositoryContract {
  Future<void> saveAllPosts(List<PostModel> allPosts);
  Future<List<PostModel>> getAllPosts();
  Future<List<UserModel>> getAllUsers();
  Future<void> saveAllDataUsers(List<UserModel> users);
}
