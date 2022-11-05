import '../../features/users_list/di/users_dependency_injector.dart';

Future<void> injectionDependencies() async {
  await UsersDependencyInjector.initializeDependencies();
}
