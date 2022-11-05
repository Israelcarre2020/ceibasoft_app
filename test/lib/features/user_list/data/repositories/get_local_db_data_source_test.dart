import 'package:ceibasoft_app/features/users_list/data/repositories/local_db_impl_repository.dart';
import 'package:ceibasoft_app/features/users_list/domain/entities/post_model.dart';
import 'package:ceibasoft_app/features/users_list/domain/entities/user_model.dart';
import 'package:ceibasoft_app/features/users_list/domain/repositories/local_db_repository_contract.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../../test_utils/fake_responses/users_post_fake_responses.dart';
import '../../../../../test_utils/mocks/users_and_posts_mocks.dart';

void main() {
  late LocalDBRepositoryContract repository;

  late GetLocalDbDataSourceMock localDataSource;

  final users = getUsersListFromJson(allUsersFakeResponse);

  final posts = getPostsListFromJson(allPostsFakeResponse);

  setUp(() {
    localDataSource = GetLocalDbDataSourceMock();
    repository = LocalDbRepositoryImpl(localDataSource);
  });

  group('Prueba de repositorio de data local - Sin excepciones', () {
    test('Obtener todos los posts', () async {
      when(() => localDataSource.getAllPosts())
          .thenAnswer((_) async => getPostsListFromJson(allPostsFakeResponse));

      final response = await repository.getAllPosts();

      expect(response[0], isA<PostModel>());
    });

    test('Obtener todos los users', () async {
      when(() => localDataSource.getAllUsers())
          .thenAnswer((_) async => getUsersListFromJson(allUsersFakeResponse));

      final response = await repository.getAllUsers();

      expect(response[0], isA<UserModel>());
    });

    test('Guardar Todos los Usuarios', () async {
      when(() => localDataSource.saveAllDataUsers(users))
          .thenAnswer((_) async => {});

      await repository.saveAllDataUsers(users);

      verify(() => localDataSource.saveAllDataUsers(users)).called(1);
    });

    test('Guardar Todos los Posts', () async {
      when(() => localDataSource.saveAllPosts(posts))
          .thenAnswer((_) async => {});

      await repository.saveAllPosts(posts);

      verify(() => localDataSource.saveAllPosts(posts)).called(1);
    });
  });
}
