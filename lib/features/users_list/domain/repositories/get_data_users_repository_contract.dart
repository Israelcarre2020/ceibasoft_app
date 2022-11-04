import '../entities/user_model.dart';

abstract class GetDataUsersContract {
  Future<List<UserModel>> getAllUsers();
}
