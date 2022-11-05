import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di_manager/di_manager.dart';
import '../../../../shared/routes/app_routes.dart';
import '../../domain/entities/post_model.dart';
import '../../domain/entities/user_model.dart';
import '../../domain/use_cases/get_all_post_remote_use_case.dart';
import '../../domain/use_cases/get_all_posts_local_bd_use_case.dart';
import '../../domain/use_cases/get_users_local_db_use_case.dart';
import '../../domain/use_cases/get_users_remote_use_case.dart';
import '../../domain/use_cases/save_posts_local_db_use_case.dart';
import '../../domain/use_cases/save_users_local_db_use_case.dart';
import '../manager/users/users_cubit.dart';
import '../widgets/custom_user_card.dart';

class UsersListPage extends StatelessWidget {
  const UsersListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UsersCubit(
        getDataUsersUseCase: DIManager.getIt<GetDataUsersUseCase>(),
        getAllPostsUseCase: DIManager.getIt<GetAllPostsUseCase>(),
        insertPostsLocalDbUseCase: DIManager.getIt<SavePostsLocalDbUseCase>(),
        getAllPostsLocalDbUseCase: DIManager.getIt<GetAllPostsLocalDbUseCase>(),
        saveUsersLocalDbUseCase: DIManager.getIt<SaveUsersLocalDbUseCase>(),
        getUsersLocalDbUseCase: DIManager.getIt<GetUsersLocalDbUseCase>(),
      ),
      child: const UsersListPageView(),
    );
  }
}

class UsersListPageView extends StatefulWidget {
  const UsersListPageView({super.key});

  @override
  State<UsersListPageView> createState() => _UsersListPageViewState();
}

class _UsersListPageViewState extends State<UsersListPageView> {
  @override
  void initState() {
    context.read<UsersCubit>().syncInitialData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Usuarios'),
          centerTitle: true,
        ),
        body: BlocConsumer<UsersCubit, UsersState>(listener: (_, state) {
          state.maybeWhen(
            error: (message) {
              showDialog(
                  context: context,
                  builder: (_) {
                    return AlertDialog(
                      title: const Text('Error al obtener los datos'),
                      content: Text(message),
                    );
                  });
            },
            orElse: () {},
          );
        }, builder: (_, state) {
          return state.when(
            allUsers: (usersList) {
              return Column(
                children: [
                  searchField(usersList, context),
                  if (usersList.isEmpty)
                    Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: Column(
                          children: [
                            Text(
                              'List is empty',
                              style: theme.textTheme.caption,
                            ),
                            const Icon(Icons.data_array)
                          ],
                        ))
                  else
                    Expanded(
                      child: ListView.builder(
                          itemCount: usersList.length,
                          itemBuilder: (context, index) {
                            return CustomUserCard(
                              user: usersList[index],
                              onPress: (userId) {
                                final userPosts = context
                                    .read<UsersCubit>()
                                    .getUserPosts(userId);

                                _goToUserDetails(userPosts, usersList[index]);
                              },
                            );
                          }),
                    )
                ],
              );
            },
            loading: () {
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
            error: (error) {
              return _loadButton(context);
            },
          );
        }));
  }

  Future<void> _goToUserDetails(
      List<PostModel> userPosts, UserModel user) async {
    await Navigator.pushNamed(context, AppRoutes.detailUser,
        arguments: {'posts': userPosts, 'user': user});
  }

  Future<void> getAllUsers(BuildContext context) async {
    await context.read<UsersCubit>().getAllRemoteUsers();
  }

  Widget _loadButton(BuildContext context) {
    return Center(
      child: TextButton(
          onPressed: () async => getAllUsers(context),
          child: const Text('Cargar Nuevamente')),
    );
  }

  Widget searchField(List<UserModel> users, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextField(
        decoration: const InputDecoration(
          prefixIcon: Icon(Icons.search),
          border: OutlineInputBorder(),
          contentPadding: EdgeInsets.all(5),
          hintText: 'Filtrar',
        ),
        onChanged: (value) {
          context.read<UsersCubit>().searchUser(value);
        },
      ),
    );
  }
}
