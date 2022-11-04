import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di_manager/di_manager.dart';
import '../../domain/use_cases/get_users_use_case.dart';
import '../manager/users/users_cubit.dart';

class UsersListPage extends StatelessWidget {
  const UsersListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UsersCubit(
        getDataUsersUseCase: DIManager.getIt<GetDataUsersUseCase>(),
      ),
      child: const UsersListPageView(),
    );
  }
}

class UsersListPageView extends StatelessWidget {
  const UsersListPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Users List'),
          centerTitle: true,
        ),
        body: BlocConsumer<UsersCubit, UsersState>(listener: (_, state) {
          state.when(
              allUsers: (usersList) {},
              success: (usersList) {},
              initial: () {},
              loading: () {},
              error: (error) {
                showDialog(
                  context: context,
                  builder: (_) {
                    return AlertDialog(
                      title: const Text('Error al obtener los datos'),
                      content: Text(error),
                    );
                  },
                );
              });
        }, builder: (_, state) {
          return state.when(allUsers: (usersList) {
            return ListView.builder(
                itemCount: usersList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(usersList[index].name),
                  );
                });
          }, success: (usersList) {
            return ListView.builder(
                itemCount: usersList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(usersList[index].name),
                  );
                });
          }, initial: () {
            return _loadButton(context);
          }, loading: () {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }, error: (error) {
            return _loadButton(context);
          });
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
}
