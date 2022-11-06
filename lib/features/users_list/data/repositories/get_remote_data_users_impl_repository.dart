import '../../domain/entities/post_model.dart';
import '../../domain/entities/user_model.dart';
import '../../domain/repositories/get_data_remote_users_repository_contract.dart';
import '../data_source/get_data_users_remote_data_source.dart';

class GetDataUsersImplRepository implements GetDataUsersContract {
  final GetDataUsersRemoteDatasource _getDataUsersRemoteDatasource;

  GetDataUsersImplRepository(this._getDataUsersRemoteDatasource);

  @override
  Future<List<UserModel>> getAllUsers() async {
    return _getDataUsersRemoteDatasource.getUsers();
  }

  @override
  Future<List<PostModel>> getAllposts() {
    return _getDataUsersRemoteDatasource.getAllPosts();
  }
}
