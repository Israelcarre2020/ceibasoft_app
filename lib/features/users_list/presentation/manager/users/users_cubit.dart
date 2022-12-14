import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/post_model.dart';
import '../../../domain/entities/user_model.dart';
import '../../../domain/use_cases/get_all_post_remote_use_case.dart';
import '../../../domain/use_cases/get_all_posts_local_bd_use_case.dart';
import '../../../domain/use_cases/get_users_local_db_use_case.dart';
import '../../../domain/use_cases/get_users_remote_use_case.dart';
import '../../../domain/use_cases/save_posts_local_db_use_case.dart';
import '../../../domain/use_cases/save_users_local_db_use_case.dart';

part 'users_state.dart';
part 'users_cubit.freezed.dart';

class UsersCubit extends Cubit<UsersState> {
  final GetDataUsersUseCase _getDataUsersUseCase;
  final GetAllPostsUseCase _getAllPostsUseCase;
  final SavePostsLocalDbUseCase _insertPostsLocalDbUseCase;
  final GetAllPostsLocalDbUseCase _getAllPostsLocalDbUseCase;
  final SaveUsersLocalDbUseCase _saveUsersLocalDbUseCase;
  final GetUsersLocalDbUseCase _getUsersLocalDbUseCase;

  UsersCubit({
    required GetDataUsersUseCase getDataUsersUseCase,
    required GetAllPostsUseCase getAllPostsUseCase,
    required SavePostsLocalDbUseCase insertPostsLocalDbUseCase,
    required GetAllPostsLocalDbUseCase getAllPostsLocalDbUseCase,
    required SaveUsersLocalDbUseCase saveUsersLocalDbUseCase,
    required GetUsersLocalDbUseCase getUsersLocalDbUseCase,
  })  : _getDataUsersUseCase = getDataUsersUseCase,
        _getAllPostsUseCase = getAllPostsUseCase,
        _insertPostsLocalDbUseCase = insertPostsLocalDbUseCase,
        _getAllPostsLocalDbUseCase = getAllPostsLocalDbUseCase,
        _saveUsersLocalDbUseCase = saveUsersLocalDbUseCase,
        _getUsersLocalDbUseCase = getUsersLocalDbUseCase,
        super(const UsersState.loading());

  List<UserModel> allUsers = [];
  List<PostModel> allPosts = [];
  List<UserModel> filterUsers = [];

  Future<void> syncInitialData() async {
    await getAllLocalPosts();
    await getAllLocalUsers();

    if (allUsers.isEmpty) {
      await getAllRemoteUsers();
      await saveUsersLocal();
    }

    if (allPosts.isEmpty) {
      await getAllRemotePosts();
      await savePostsLocal();
    }
    emit(const UsersState.syncFinished());
  }

  Future<void> getAllRemoteUsers() async {
    try {
      emit(const UsersState.loading());
      allUsers = await _getDataUsersUseCase(null);
      emit(UsersState.allUsers(allUsers));
    } on DioError catch (e) {
      emit(UsersState.error(e.error.toString()));
    } catch (e) {
      emit(UsersState.error(e.toString()));
    }
  }

  Future<void> getAllLocalUsers() async {
    try {
      emit(const UsersState.loading());
      allUsers = await _getUsersLocalDbUseCase(null);

      emit(UsersState.allUsers(allUsers));
    } on DioError catch (e) {
      emit(UsersState.error(e.error.toString()));
    } catch (e) {
      emit(UsersState.error(e.toString()));
    }
  }

  Future<void> getAllRemotePosts() async {
    try {
      emit(const UsersState.loading());
      allPosts = await _getAllPostsUseCase(null);
      emit(UsersState.allPosts(allPosts));
    } on DioError catch (e) {
      emit(UsersState.error(e.error.toString()));
    } catch (e) {
      emit(UsersState.error(e.toString()));
    }
  }

  Future<void> savePostsLocal() async {
    try {
      emit(const UsersState.loading());
      await _insertPostsLocalDbUseCase(allPosts);
      emit(const UsersState.savedPosts());
    } catch (e) {
      emit(UsersState.error(e.toString()));
    }
  }

  Future<void> saveUsersLocal() async {
    try {
      emit(const UsersState.loading());
      await _saveUsersLocalDbUseCase(allUsers);
      emit(const UsersState.savedUsers());
    } catch (e) {
      emit(UsersState.error(e.toString()));
    }
  }

  Future<void> getAllLocalPosts() async {
    try {
      emit(const UsersState.loading());
      allPosts = await _getAllPostsLocalDbUseCase(null);
      emit(UsersState.allPosts(allPosts));
    } catch (e) {
      emit(UsersState.error(e.toString()));
    }
  }

  void searchUser(String value) {
    filterUsers = allUsers
        .where((u) => u.name.toLowerCase().contains(value.toLowerCase()))
        .toList();

    emit(UsersState.allUsers(filterUsers));
  }

  List<PostModel> getUserPosts(int id) {
    return allPosts.where((u) => u.userId == id).toList();
  }
}
