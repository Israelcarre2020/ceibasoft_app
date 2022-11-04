import 'package:dio/dio.dart';

import '../../../../core/http/data/http_proxy_impl.dart';
import '../../domain/entities/post_model.dart';
import '../../domain/entities/user_model.dart';

class GetDataUsersRemoteDatasource {
  final HttpImpl _httpImpl;
  final String _getAllUsersUrl;
  final String _getAllpostsUrl;

  GetDataUsersRemoteDatasource(
      this._httpImpl, this._getAllUsersUrl, this._getAllpostsUrl);

  Future<List<UserModel>> getUsers() async {
    final http = _httpImpl.instance();
    Response response;

    try {
      response = await http.get(_getAllUsersUrl);

      return getUsersListFromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  Future<List<PostModel>> getAllPosts() async {
    final http = _httpImpl.instance();
    Response response;

    try {
      response = await http.get(_getAllpostsUrl);

      return getPostsListFromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }
}
