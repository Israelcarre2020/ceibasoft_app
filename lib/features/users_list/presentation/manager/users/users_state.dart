part of 'users_cubit.dart';

//TODO: AGREGAR LOS DEMÁS ESTADOS
@freezed
abstract class UsersState with _$UsersState {
  const factory UsersState.initial() = _Initial;
  const factory UsersState.loading() = _Loading;
  const factory UsersState.error(String message) = _Error;
  const factory UsersState.success(int newNumber) = _Success;
}
