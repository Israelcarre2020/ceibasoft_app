import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di_manager/di_manager.dart';
import '../../../../shared/routes/app_routes.dart';
import '../../domain/entities/post_model.dart';
import '../../domain/entities/user_model.dart';
import '../../domain/use_cases/get_all_post_use_case.dart';
import '../../domain/use_cases/get_users_use_case.dart';
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
    context.read<UsersCubit>().getAllUsers();
    context.read<UsersCubit>().getAllPosts();
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

                                Navigator.pushNamed(
                                    context, AppRoutes.detailUser, arguments: {
                                  'posts': userPosts,
                                  'user': usersList[index]
                                });
                              },
                            );
                          }),
                    )
                ],
              );
            },
            initial: () {
              return _loadButton(context);
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

  Future<void> getAllUsers(BuildContext context) async {
    await context.read<UsersCubit>().getAllUsers();
  }

  Widget _loadButton(BuildContext context) {
    return TextButton(
        onPressed: () async => getAllUsers(context),
        child: const Text('Load Data'));
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
