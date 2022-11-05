import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/post_model.dart';
import '../../../domain/entities/user_model.dart';
import '../../../domain/use_cases/get_all_post_remote_use_case.dart';
import '../../../domain/use_cases/get_all_posts_local_bd_use_case.dart';
import '../../../domain/use_cases/get_users_remote_use_case.dart';
import '../../../domain/use_cases/save_posts_local_bd_use_case.dart';

part 'users_state.dart';
part 'users_cubit.freezed.dart';

class UsersCubit extends Cubit<UsersState> {
  final GetDataUsersUseCase _getDataUsersUseCase;
  final GetAllPostsUseCase _getAllPostsUseCase;
  final InsertPostsLocalDbUseCase _insertPostsLocalDbUseCase;
  final GetAllPostsLocalDbUseCase _getAllPostsLocalDbUseCase;

  UsersCubit({
    required GetDataUsersUseCase getDataUsersUseCase,
    required GetAllPostsUseCase getAllPostsUseCase,
    required InsertPostsLocalDbUseCase insertPostsLocalDbUseCase,
    required GetAllPostsLocalDbUseCase getAllPostsLocalDbUseCase,
  })  : _getDataUsersUseCase = getDataUsersUseCase,
        _getAllPostsUseCase = getAllPostsUseCase,
        _insertPostsLocalDbUseCase = insertPostsLocalDbUseCase,
        _getAllPostsLocalDbUseCase = getAllPostsLocalDbUseCase,
        super(const UsersState.loading());

  List<UserModel> allUsers = [];
  List<PostModel> allPosts = [];
  List<UserModel> filterUsers = [];

  Future<void> syncInitialData() async {
    await getAllLocalPosts();
    if (allPosts.isEmpty) {
      await getAllRemotePosts();
      await savePostsLocal();
    }
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

  Future<void> getAllRemotePosts() async {
    try {
      emit(const UsersState.loading());
      allPosts = await _getAllPostsUseCase(null);
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
      emit(UsersState.allUsers(allUsers));
    } catch (e) {
      emit(UsersState.error(e.toString()));
    }
  }

  Future<void> getAllLocalPosts() async {
    try {
      emit(const UsersState.loading());
      allPosts = await _getAllPostsLocalDbUseCase(null);
      emit(UsersState.allUsers(allUsers));
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
