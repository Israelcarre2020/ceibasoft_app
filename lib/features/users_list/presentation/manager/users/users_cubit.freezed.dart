// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'users_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UsersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<UserModel> usersList) allUsers,
    required TResult Function(List<PostModel> postList) allPosts,
    required TResult Function() savedPosts,
    required TResult Function() savedUsers,
    required TResult Function() syncFinished,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<UserModel> usersList)? allUsers,
    TResult? Function(List<PostModel> postList)? allPosts,
    TResult? Function()? savedPosts,
    TResult? Function()? savedUsers,
    TResult? Function()? syncFinished,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<UserModel> usersList)? allUsers,
    TResult Function(List<PostModel> postList)? allPosts,
    TResult Function()? savedPosts,
    TResult Function()? savedUsers,
    TResult Function()? syncFinished,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(AllUsers value) allUsers,
    required TResult Function(AllPosts value) allPosts,
    required TResult Function(_SavedPosts value) savedPosts,
    required TResult Function(_SavedUsers value) savedUsers,
    required TResult Function(_SyncFinished value) syncFinished,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(AllUsers value)? allUsers,
    TResult? Function(AllPosts value)? allPosts,
    TResult? Function(_SavedPosts value)? savedPosts,
    TResult? Function(_SavedUsers value)? savedUsers,
    TResult? Function(_SyncFinished value)? syncFinished,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(AllUsers value)? allUsers,
    TResult Function(AllPosts value)? allPosts,
    TResult Function(_SavedPosts value)? savedPosts,
    TResult Function(_SavedUsers value)? savedUsers,
    TResult Function(_SyncFinished value)? syncFinished,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersStateCopyWith<$Res> {
  factory $UsersStateCopyWith(
          UsersState value, $Res Function(UsersState) then) =
      _$UsersStateCopyWithImpl<$Res, UsersState>;
}

/// @nodoc
class _$UsersStateCopyWithImpl<$Res, $Val extends UsersState>
    implements $UsersStateCopyWith<$Res> {
  _$UsersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$UsersStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'UsersState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<UserModel> usersList) allUsers,
    required TResult Function(List<PostModel> postList) allPosts,
    required TResult Function() savedPosts,
    required TResult Function() savedUsers,
    required TResult Function() syncFinished,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<UserModel> usersList)? allUsers,
    TResult? Function(List<PostModel> postList)? allPosts,
    TResult? Function()? savedPosts,
    TResult? Function()? savedUsers,
    TResult? Function()? syncFinished,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<UserModel> usersList)? allUsers,
    TResult Function(List<PostModel> postList)? allPosts,
    TResult Function()? savedPosts,
    TResult Function()? savedUsers,
    TResult Function()? syncFinished,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(AllUsers value) allUsers,
    required TResult Function(AllPosts value) allPosts,
    required TResult Function(_SavedPosts value) savedPosts,
    required TResult Function(_SavedUsers value) savedUsers,
    required TResult Function(_SyncFinished value) syncFinished,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(AllUsers value)? allUsers,
    TResult? Function(AllPosts value)? allPosts,
    TResult? Function(_SavedPosts value)? savedPosts,
    TResult? Function(_SavedUsers value)? savedUsers,
    TResult? Function(_SyncFinished value)? syncFinished,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(AllUsers value)? allUsers,
    TResult Function(AllPosts value)? allPosts,
    TResult Function(_SavedPosts value)? savedPosts,
    TResult Function(_SavedUsers value)? savedUsers,
    TResult Function(_SyncFinished value)? syncFinished,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements UsersState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$AllUsersCopyWith<$Res> {
  factory _$$AllUsersCopyWith(
          _$AllUsers value, $Res Function(_$AllUsers) then) =
      __$$AllUsersCopyWithImpl<$Res>;
  @useResult
  $Res call({List<UserModel> usersList});
}

/// @nodoc
class __$$AllUsersCopyWithImpl<$Res>
    extends _$UsersStateCopyWithImpl<$Res, _$AllUsers>
    implements _$$AllUsersCopyWith<$Res> {
  __$$AllUsersCopyWithImpl(_$AllUsers _value, $Res Function(_$AllUsers) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usersList = null,
  }) {
    return _then(_$AllUsers(
      null == usersList
          ? _value._usersList
          : usersList // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
    ));
  }
}

/// @nodoc

class _$AllUsers implements AllUsers {
  const _$AllUsers(final List<UserModel> usersList) : _usersList = usersList;

  final List<UserModel> _usersList;
  @override
  List<UserModel> get usersList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_usersList);
  }

  @override
  String toString() {
    return 'UsersState.allUsers(usersList: $usersList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllUsers &&
            const DeepCollectionEquality()
                .equals(other._usersList, _usersList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_usersList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AllUsersCopyWith<_$AllUsers> get copyWith =>
      __$$AllUsersCopyWithImpl<_$AllUsers>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<UserModel> usersList) allUsers,
    required TResult Function(List<PostModel> postList) allPosts,
    required TResult Function() savedPosts,
    required TResult Function() savedUsers,
    required TResult Function() syncFinished,
    required TResult Function(String message) error,
  }) {
    return allUsers(usersList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<UserModel> usersList)? allUsers,
    TResult? Function(List<PostModel> postList)? allPosts,
    TResult? Function()? savedPosts,
    TResult? Function()? savedUsers,
    TResult? Function()? syncFinished,
    TResult? Function(String message)? error,
  }) {
    return allUsers?.call(usersList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<UserModel> usersList)? allUsers,
    TResult Function(List<PostModel> postList)? allPosts,
    TResult Function()? savedPosts,
    TResult Function()? savedUsers,
    TResult Function()? syncFinished,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (allUsers != null) {
      return allUsers(usersList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(AllUsers value) allUsers,
    required TResult Function(AllPosts value) allPosts,
    required TResult Function(_SavedPosts value) savedPosts,
    required TResult Function(_SavedUsers value) savedUsers,
    required TResult Function(_SyncFinished value) syncFinished,
    required TResult Function(_Error value) error,
  }) {
    return allUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(AllUsers value)? allUsers,
    TResult? Function(AllPosts value)? allPosts,
    TResult? Function(_SavedPosts value)? savedPosts,
    TResult? Function(_SavedUsers value)? savedUsers,
    TResult? Function(_SyncFinished value)? syncFinished,
    TResult? Function(_Error value)? error,
  }) {
    return allUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(AllUsers value)? allUsers,
    TResult Function(AllPosts value)? allPosts,
    TResult Function(_SavedPosts value)? savedPosts,
    TResult Function(_SavedUsers value)? savedUsers,
    TResult Function(_SyncFinished value)? syncFinished,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (allUsers != null) {
      return allUsers(this);
    }
    return orElse();
  }
}

abstract class AllUsers implements UsersState {
  const factory AllUsers(final List<UserModel> usersList) = _$AllUsers;

  List<UserModel> get usersList;
  @JsonKey(ignore: true)
  _$$AllUsersCopyWith<_$AllUsers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AllPostsCopyWith<$Res> {
  factory _$$AllPostsCopyWith(
          _$AllPosts value, $Res Function(_$AllPosts) then) =
      __$$AllPostsCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PostModel> postList});
}

/// @nodoc
class __$$AllPostsCopyWithImpl<$Res>
    extends _$UsersStateCopyWithImpl<$Res, _$AllPosts>
    implements _$$AllPostsCopyWith<$Res> {
  __$$AllPostsCopyWithImpl(_$AllPosts _value, $Res Function(_$AllPosts) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postList = null,
  }) {
    return _then(_$AllPosts(
      null == postList
          ? _value._postList
          : postList // ignore: cast_nullable_to_non_nullable
              as List<PostModel>,
    ));
  }
}

/// @nodoc

class _$AllPosts implements AllPosts {
  const _$AllPosts(final List<PostModel> postList) : _postList = postList;

  final List<PostModel> _postList;
  @override
  List<PostModel> get postList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_postList);
  }

  @override
  String toString() {
    return 'UsersState.allPosts(postList: $postList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllPosts &&
            const DeepCollectionEquality().equals(other._postList, _postList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_postList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AllPostsCopyWith<_$AllPosts> get copyWith =>
      __$$AllPostsCopyWithImpl<_$AllPosts>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<UserModel> usersList) allUsers,
    required TResult Function(List<PostModel> postList) allPosts,
    required TResult Function() savedPosts,
    required TResult Function() savedUsers,
    required TResult Function() syncFinished,
    required TResult Function(String message) error,
  }) {
    return allPosts(postList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<UserModel> usersList)? allUsers,
    TResult? Function(List<PostModel> postList)? allPosts,
    TResult? Function()? savedPosts,
    TResult? Function()? savedUsers,
    TResult? Function()? syncFinished,
    TResult? Function(String message)? error,
  }) {
    return allPosts?.call(postList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<UserModel> usersList)? allUsers,
    TResult Function(List<PostModel> postList)? allPosts,
    TResult Function()? savedPosts,
    TResult Function()? savedUsers,
    TResult Function()? syncFinished,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (allPosts != null) {
      return allPosts(postList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(AllUsers value) allUsers,
    required TResult Function(AllPosts value) allPosts,
    required TResult Function(_SavedPosts value) savedPosts,
    required TResult Function(_SavedUsers value) savedUsers,
    required TResult Function(_SyncFinished value) syncFinished,
    required TResult Function(_Error value) error,
  }) {
    return allPosts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(AllUsers value)? allUsers,
    TResult? Function(AllPosts value)? allPosts,
    TResult? Function(_SavedPosts value)? savedPosts,
    TResult? Function(_SavedUsers value)? savedUsers,
    TResult? Function(_SyncFinished value)? syncFinished,
    TResult? Function(_Error value)? error,
  }) {
    return allPosts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(AllUsers value)? allUsers,
    TResult Function(AllPosts value)? allPosts,
    TResult Function(_SavedPosts value)? savedPosts,
    TResult Function(_SavedUsers value)? savedUsers,
    TResult Function(_SyncFinished value)? syncFinished,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (allPosts != null) {
      return allPosts(this);
    }
    return orElse();
  }
}

abstract class AllPosts implements UsersState {
  const factory AllPosts(final List<PostModel> postList) = _$AllPosts;

  List<PostModel> get postList;
  @JsonKey(ignore: true)
  _$$AllPostsCopyWith<_$AllPosts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SavedPostsCopyWith<$Res> {
  factory _$$_SavedPostsCopyWith(
          _$_SavedPosts value, $Res Function(_$_SavedPosts) then) =
      __$$_SavedPostsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SavedPostsCopyWithImpl<$Res>
    extends _$UsersStateCopyWithImpl<$Res, _$_SavedPosts>
    implements _$$_SavedPostsCopyWith<$Res> {
  __$$_SavedPostsCopyWithImpl(
      _$_SavedPosts _value, $Res Function(_$_SavedPosts) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SavedPosts implements _SavedPosts {
  const _$_SavedPosts();

  @override
  String toString() {
    return 'UsersState.savedPosts()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SavedPosts);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<UserModel> usersList) allUsers,
    required TResult Function(List<PostModel> postList) allPosts,
    required TResult Function() savedPosts,
    required TResult Function() savedUsers,
    required TResult Function() syncFinished,
    required TResult Function(String message) error,
  }) {
    return savedPosts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<UserModel> usersList)? allUsers,
    TResult? Function(List<PostModel> postList)? allPosts,
    TResult? Function()? savedPosts,
    TResult? Function()? savedUsers,
    TResult? Function()? syncFinished,
    TResult? Function(String message)? error,
  }) {
    return savedPosts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<UserModel> usersList)? allUsers,
    TResult Function(List<PostModel> postList)? allPosts,
    TResult Function()? savedPosts,
    TResult Function()? savedUsers,
    TResult Function()? syncFinished,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (savedPosts != null) {
      return savedPosts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(AllUsers value) allUsers,
    required TResult Function(AllPosts value) allPosts,
    required TResult Function(_SavedPosts value) savedPosts,
    required TResult Function(_SavedUsers value) savedUsers,
    required TResult Function(_SyncFinished value) syncFinished,
    required TResult Function(_Error value) error,
  }) {
    return savedPosts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(AllUsers value)? allUsers,
    TResult? Function(AllPosts value)? allPosts,
    TResult? Function(_SavedPosts value)? savedPosts,
    TResult? Function(_SavedUsers value)? savedUsers,
    TResult? Function(_SyncFinished value)? syncFinished,
    TResult? Function(_Error value)? error,
  }) {
    return savedPosts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(AllUsers value)? allUsers,
    TResult Function(AllPosts value)? allPosts,
    TResult Function(_SavedPosts value)? savedPosts,
    TResult Function(_SavedUsers value)? savedUsers,
    TResult Function(_SyncFinished value)? syncFinished,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (savedPosts != null) {
      return savedPosts(this);
    }
    return orElse();
  }
}

abstract class _SavedPosts implements UsersState {
  const factory _SavedPosts() = _$_SavedPosts;
}

/// @nodoc
abstract class _$$_SavedUsersCopyWith<$Res> {
  factory _$$_SavedUsersCopyWith(
          _$_SavedUsers value, $Res Function(_$_SavedUsers) then) =
      __$$_SavedUsersCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SavedUsersCopyWithImpl<$Res>
    extends _$UsersStateCopyWithImpl<$Res, _$_SavedUsers>
    implements _$$_SavedUsersCopyWith<$Res> {
  __$$_SavedUsersCopyWithImpl(
      _$_SavedUsers _value, $Res Function(_$_SavedUsers) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SavedUsers implements _SavedUsers {
  const _$_SavedUsers();

  @override
  String toString() {
    return 'UsersState.savedUsers()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SavedUsers);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<UserModel> usersList) allUsers,
    required TResult Function(List<PostModel> postList) allPosts,
    required TResult Function() savedPosts,
    required TResult Function() savedUsers,
    required TResult Function() syncFinished,
    required TResult Function(String message) error,
  }) {
    return savedUsers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<UserModel> usersList)? allUsers,
    TResult? Function(List<PostModel> postList)? allPosts,
    TResult? Function()? savedPosts,
    TResult? Function()? savedUsers,
    TResult? Function()? syncFinished,
    TResult? Function(String message)? error,
  }) {
    return savedUsers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<UserModel> usersList)? allUsers,
    TResult Function(List<PostModel> postList)? allPosts,
    TResult Function()? savedPosts,
    TResult Function()? savedUsers,
    TResult Function()? syncFinished,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (savedUsers != null) {
      return savedUsers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(AllUsers value) allUsers,
    required TResult Function(AllPosts value) allPosts,
    required TResult Function(_SavedPosts value) savedPosts,
    required TResult Function(_SavedUsers value) savedUsers,
    required TResult Function(_SyncFinished value) syncFinished,
    required TResult Function(_Error value) error,
  }) {
    return savedUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(AllUsers value)? allUsers,
    TResult? Function(AllPosts value)? allPosts,
    TResult? Function(_SavedPosts value)? savedPosts,
    TResult? Function(_SavedUsers value)? savedUsers,
    TResult? Function(_SyncFinished value)? syncFinished,
    TResult? Function(_Error value)? error,
  }) {
    return savedUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(AllUsers value)? allUsers,
    TResult Function(AllPosts value)? allPosts,
    TResult Function(_SavedPosts value)? savedPosts,
    TResult Function(_SavedUsers value)? savedUsers,
    TResult Function(_SyncFinished value)? syncFinished,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (savedUsers != null) {
      return savedUsers(this);
    }
    return orElse();
  }
}

abstract class _SavedUsers implements UsersState {
  const factory _SavedUsers() = _$_SavedUsers;
}

/// @nodoc
abstract class _$$_SyncFinishedCopyWith<$Res> {
  factory _$$_SyncFinishedCopyWith(
          _$_SyncFinished value, $Res Function(_$_SyncFinished) then) =
      __$$_SyncFinishedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SyncFinishedCopyWithImpl<$Res>
    extends _$UsersStateCopyWithImpl<$Res, _$_SyncFinished>
    implements _$$_SyncFinishedCopyWith<$Res> {
  __$$_SyncFinishedCopyWithImpl(
      _$_SyncFinished _value, $Res Function(_$_SyncFinished) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SyncFinished implements _SyncFinished {
  const _$_SyncFinished();

  @override
  String toString() {
    return 'UsersState.syncFinished()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SyncFinished);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<UserModel> usersList) allUsers,
    required TResult Function(List<PostModel> postList) allPosts,
    required TResult Function() savedPosts,
    required TResult Function() savedUsers,
    required TResult Function() syncFinished,
    required TResult Function(String message) error,
  }) {
    return syncFinished();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<UserModel> usersList)? allUsers,
    TResult? Function(List<PostModel> postList)? allPosts,
    TResult? Function()? savedPosts,
    TResult? Function()? savedUsers,
    TResult? Function()? syncFinished,
    TResult? Function(String message)? error,
  }) {
    return syncFinished?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<UserModel> usersList)? allUsers,
    TResult Function(List<PostModel> postList)? allPosts,
    TResult Function()? savedPosts,
    TResult Function()? savedUsers,
    TResult Function()? syncFinished,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (syncFinished != null) {
      return syncFinished();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(AllUsers value) allUsers,
    required TResult Function(AllPosts value) allPosts,
    required TResult Function(_SavedPosts value) savedPosts,
    required TResult Function(_SavedUsers value) savedUsers,
    required TResult Function(_SyncFinished value) syncFinished,
    required TResult Function(_Error value) error,
  }) {
    return syncFinished(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(AllUsers value)? allUsers,
    TResult? Function(AllPosts value)? allPosts,
    TResult? Function(_SavedPosts value)? savedPosts,
    TResult? Function(_SavedUsers value)? savedUsers,
    TResult? Function(_SyncFinished value)? syncFinished,
    TResult? Function(_Error value)? error,
  }) {
    return syncFinished?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(AllUsers value)? allUsers,
    TResult Function(AllPosts value)? allPosts,
    TResult Function(_SavedPosts value)? savedPosts,
    TResult Function(_SavedUsers value)? savedUsers,
    TResult Function(_SyncFinished value)? syncFinished,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (syncFinished != null) {
      return syncFinished(this);
    }
    return orElse();
  }
}

abstract class _SyncFinished implements UsersState {
  const factory _SyncFinished() = _$_SyncFinished;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$UsersStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_Error(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'UsersState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<UserModel> usersList) allUsers,
    required TResult Function(List<PostModel> postList) allPosts,
    required TResult Function() savedPosts,
    required TResult Function() savedUsers,
    required TResult Function() syncFinished,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<UserModel> usersList)? allUsers,
    TResult? Function(List<PostModel> postList)? allPosts,
    TResult? Function()? savedPosts,
    TResult? Function()? savedUsers,
    TResult? Function()? syncFinished,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<UserModel> usersList)? allUsers,
    TResult Function(List<PostModel> postList)? allPosts,
    TResult Function()? savedPosts,
    TResult Function()? savedUsers,
    TResult Function()? syncFinished,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(AllUsers value) allUsers,
    required TResult Function(AllPosts value) allPosts,
    required TResult Function(_SavedPosts value) savedPosts,
    required TResult Function(_SavedUsers value) savedUsers,
    required TResult Function(_SyncFinished value) syncFinished,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(AllUsers value)? allUsers,
    TResult? Function(AllPosts value)? allPosts,
    TResult? Function(_SavedPosts value)? savedPosts,
    TResult? Function(_SavedUsers value)? savedUsers,
    TResult? Function(_SyncFinished value)? syncFinished,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(AllUsers value)? allUsers,
    TResult Function(AllPosts value)? allPosts,
    TResult Function(_SavedPosts value)? savedPosts,
    TResult Function(_SavedUsers value)? savedUsers,
    TResult Function(_SyncFinished value)? syncFinished,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements UsersState {
  const factory _Error(final String message) = _$_Error;

  String get message;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}
