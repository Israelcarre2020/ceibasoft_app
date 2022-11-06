import 'package:ceibasoft_app/features/users_list/data/repositories/get_remote_data_users_impl_repository.dart';
import 'package:ceibasoft_app/features/users_list/domain/entities/post_model.dart';
import 'package:ceibasoft_app/features/users_list/domain/entities/user_model.dart';
import 'package:ceibasoft_app/features/users_list/domain/repositories/get_data_remote_users_repository_contract.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../../test_utils/fake_responses/users_post_fake_responses.dart';
import '../../../../../test_utils/mocks/users_and_posts_mocks.dart';

void main() {
  late GetDataUsersContract repository;
  late GetDataUsersRemoteDatasourceMock remoteDataSource;

  setUp(() {
    remoteDataSource = GetDataUsersRemoteDatasourceMock();
    repository = GetDataUsersImplRepository(remoteDataSource);
  });

  group('Obtener datos remotos - Sin excepciones', () {
    test('Obtener todos los posts', () async {
      when(() => remoteDataSource.getAllPosts())
          .thenAnswer((_) async => getPostsListFromJson(allPostsFakeResponse));

      final response = await repository.getAllposts();

      expect(response[0], isA<PostModel>());
    });

    test('Obtener todos los usuarios', () async {
      when(() => remoteDataSource.getUsers())
          .thenAnswer((_) async => getUsersListFromJson(allUsersFakeResponse));

      final response = await repository.getAllUsers();

      expect(response[0], isA<UserModel>());
    });
  });

  group('Obtener datos remotos - Con excepciones', () {
    test('Obtener todos los posts, maneja excepción', () async {
      when(() => remoteDataSource.getAllPosts()).thenAnswer((_) async =>
          throw DioError(requestOptions: RequestOptions(path: '')));

      try {
        await remoteDataSource.getAllPosts();
      } catch (e) {
        expect(
          e,
          isA<DioError>(),
        );
      }
    });

    test('Obtener todos los users, maneja excepción', () async {
      when(() => remoteDataSource.getUsers()).thenAnswer((_) async =>
          throw DioError(requestOptions: RequestOptions(path: '')));

      try {
        await remoteDataSource.getUsers();
      } catch (e) {
        expect(
          e,
          isA<DioError>(),
        );
      }
    });
  });
}
