import '../entities/post_model.dart';
import '../entities/user_model.dart';

abstract class GetDataUsersContract {
  Future<List<UserModel>> getAllUsers();
  Future<List<PostModel>> getAllposts();
}
