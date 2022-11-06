import 'package:ceibasoft_app/core/di_manager/di_manager.dart';
import 'package:ceibasoft_app/features/users_list/domain/use_cases/get_all_post_remote_use_case.dart';
import 'package:ceibasoft_app/features/users_list/domain/use_cases/get_all_posts_local_bd_use_case.dart';
import 'package:ceibasoft_app/features/users_list/domain/use_cases/get_users_local_db_use_case.dart';
import 'package:ceibasoft_app/features/users_list/domain/use_cases/get_users_remote_use_case.dart';
import 'package:ceibasoft_app/features/users_list/domain/use_cases/save_posts_local_db_use_case.dart';
import 'package:ceibasoft_app/features/users_list/domain/use_cases/save_users_local_db_use_case.dart';
import 'package:ceibasoft_app/features/users_list/presentation/manager/users/users_cubit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../test_utils/constants.dart';
import '../../../test_utils/mocks/users_and_posts_mocks.dart';

void main() {
  getMocksUseCases();

  test('Obtener todos los Usuarios de remoto', () async {
    await cubit.getAllRemoteUsers();
    expect(cubit.state, const UsersState.allUsers(allUsersListFake));
  });

  test('Obtener todos los Post de remoto', () async {
    await cubit.getAllRemotePosts();
    expect(cubit.state, const UsersState.allPosts(allPostsListFake));
  });

  test('Obtener todos los Post de local', () async {
    await cubit.getAllLocalPosts();
    expect(cubit.state, const UsersState.allPosts(allPostsListFake));
  });

  test('Obtener todos los USers de local', () async {
    await cubit.getAllLocalUsers();
    expect(cubit.state, const UsersState.allUsers(allUsersListFake));
  });

  test('Guardar los posts En local', () async {
    await cubit.savePostsLocal();
    expect(cubit.state, const UsersState.savedPosts());
  });

  test('Guardar los usuarios En local', () async {
    await cubit.saveUsersLocal();
    expect(cubit.state, const UsersState.savedUsers());
  });
}

void getMocksUseCases() {
  late GetAllPostsUseCase getAllPostUseCase;
  final GetAllPostsLocalDbUseCase getAllPostsLocalDbUseCase;
  late GetDataUsersUseCase getDataUsersUseCase;
  late GetUsersLocalDbUseCase getUsersLocalDbUseCase;
  late SavePostsLocalDbUseCase insertPostsLocalDbUseCase;
  late SaveUsersLocalDbUseCase saveUsersLocalDbUseCase;

  final repository = GetDataUsersContractMock();
  final repositoryLocal = LocalDBRepositoryContractMock();
  getAllPostUseCase = GetAllPostsUseCase(repository);
  getDataUsersUseCase = GetDataUsersUseCase(repository);
  getAllPostsLocalDbUseCase = GetAllPostsLocalDbUseCase(repositoryLocal);
  getUsersLocalDbUseCase = GetUsersLocalDbUseCase(repositoryLocal);
  insertPostsLocalDbUseCase = SavePostsLocalDbUseCase(repositoryLocal);
  saveUsersLocalDbUseCase = SaveUsersLocalDbUseCase(repositoryLocal);

  when(() => getAllPostUseCase(null)).thenAnswer((_) async => allPostsListFake);
  when(() => saveUsersLocalDbUseCase(allUsersListFake))
      .thenAnswer((_) async => {});
  when(() => insertPostsLocalDbUseCase(allPostsListFake))
      .thenAnswer((_) async => {});
  when(() => getUsersLocalDbUseCase(null))
      .thenAnswer((_) async => allUsersListFake);
  when(() => getAllPostsLocalDbUseCase(null))
      .thenAnswer((_) async => allPostsListFake);
  when(() => getDataUsersUseCase(null))
      .thenAnswer((_) async => allUsersListFake);
  DIManager.getIt.registerFactory<GetAllPostsUseCase>(() => getAllPostUseCase);
  DIManager.getIt.registerFactory<GetAllPostsLocalDbUseCase>(
      () => getAllPostsLocalDbUseCase);
  DIManager.getIt
      .registerFactory<GetDataUsersUseCase>(() => getDataUsersUseCase);
  DIManager.getIt
      .registerFactory<GetUsersLocalDbUseCase>(() => getUsersLocalDbUseCase);
  DIManager.getIt.registerFactory<SavePostsLocalDbUseCase>(
      () => insertPostsLocalDbUseCase);
  DIManager.getIt
      .registerFactory<SaveUsersLocalDbUseCase>(() => saveUsersLocalDbUseCase);
}

final cubit = UsersCubit(
  getAllPostsUseCase: DIManager.getIt.get<GetAllPostsUseCase>(),
  getAllPostsLocalDbUseCase: DIManager.getIt.get<GetAllPostsLocalDbUseCase>(),
  getDataUsersUseCase: DIManager.getIt.get<GetDataUsersUseCase>(),
  getUsersLocalDbUseCase: DIManager.getIt.get<GetUsersLocalDbUseCase>(),
  insertPostsLocalDbUseCase: DIManager.getIt.get<SavePostsLocalDbUseCase>(),
  saveUsersLocalDbUseCase: DIManager.getIt.get<SaveUsersLocalDbUseCase>(),
);
