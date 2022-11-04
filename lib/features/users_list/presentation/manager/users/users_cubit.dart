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

  Future<void> getAllUsers(List<UserModel> signUp) async {
    try {
      await _getDataUsersUseCase('');
    } catch (e) {
      //TODO: aJUSTAR CAPTURA DEL ERROR
      emit(UsersState.error(e.toString()));
    }
  }
}
