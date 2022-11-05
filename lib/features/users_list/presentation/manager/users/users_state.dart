part of 'users_cubit.dart';

@freezed
abstract class UsersState with _$UsersState {
  const factory UsersState.loading() = _Loading;
  const factory UsersState.allUsers(List<UserModel> usersList) = AllUsers;
  const factory UsersState.error(String message) = _Error;
}
