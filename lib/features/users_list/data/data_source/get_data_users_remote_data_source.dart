import 'package:dio/dio.dart';

import '../../../../core/http/data/http_proxy_impl.dart';
import '../../domain/entities/user_model.dart';

class GetDataUsersRemoteDatasource {
  final HttpImpl _httpImpl;
  final String _baseUrl;

  GetDataUsersRemoteDatasource(this._httpImpl, this._baseUrl);

  Future<List<UserModel>> getUsers() async {
    final http = _httpImpl.instance();
    Response response;

    try {
      response = await http.get(_baseUrl);

      return getUsersListFromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }
}
