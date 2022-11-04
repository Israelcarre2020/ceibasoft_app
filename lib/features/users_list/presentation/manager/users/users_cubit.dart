import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/user_model.dart';
import '../../../domain/use_cases/get_users_use_case.dart';

part 'users_state.dart';
part 'users_cubit.freezed.dart';

class UsersCubit extends Cubit<UsersState> {
  final GetDataUsersUseCase _getDataUsersUseCase;

  UsersCubit({required GetDataUsersUseCase getDataUsersUseCase})
      : _getDataUsersUseCase = getDataUsersUseCase,
        super(const UsersState.initial());

  List<UserModel> allUsers = [];
  List<UserModel> filterUsers = [];

  Future<void> getAllUsers() async {
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

  void searchData(String value) {
    filterUsers = allUsers
        .where((u) => u.name.toLowerCase().contains(value.toLowerCase()))
        .toList();

    emit(UsersState.allUsers(filterUsers));
  }
}
