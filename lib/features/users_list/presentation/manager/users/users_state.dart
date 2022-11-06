part of 'users_cubit.dart';

@freezed
abstract class UsersState with _$UsersState {
  const factory UsersState.loading() = _Loading;
  const factory UsersState.allUsers(List<UserModel> usersList) = AllUsers;
  const factory UsersState.allPosts(List<PostModel> postList) = AllPosts;
  const factory UsersState.savedPosts() = _SavedPosts;
  const factory UsersState.savedUsers() = _SavedUsers;
  const factory UsersState.error(String message) = _Error;
}
