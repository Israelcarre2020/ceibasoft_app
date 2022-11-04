import '../../../core/di_manager/di_manager.dart';
import '../../../core/http/data/config/remote_api_constants.dart';
import '../../../core/http/data/http_proxy_impl.dart';
import '../data/data_source/get_data_users_remote_data_source.dart';
import '../data/repositories/get_data_users_impl_repository.dart';
import '../domain/repositories/get_data_users_repository_contract.dart';
import '../domain/use_cases/get_users_use_case.dart';
import '../presentation/manager/users/users_cubit.dart';

abstract class UsersDependencyInjector {
  static bool _alreadyInit = false;

  static Future<void> initializeDependencies() async {
    if (_alreadyInit) return;

    DIManager.getIt.registerSingleton(HttpImpl());

    DIManager.getIt.registerSingleton(GetDataUsersRemoteDatasource(
        DIManager.getIt<HttpImpl>(), RemoteApiConstants.baseUrl));

    DIManager.getIt.registerSingleton<GetDataUsersContract>(
      GetDataUsersImplRepository(
        DIManager.getIt<GetDataUsersRemoteDatasource>(),
      ),
    );

    DIManager.getIt.registerSingleton(
      GetDataUsersUseCase(
        DIManager.getIt<GetDataUsersContract>(),
      ),
    );

    DIManager.getIt.registerFactory(
      () => UsersCubit(
        getDataUsersUseCase: DIManager.getIt<GetDataUsersUseCase>(),
      ),
    );

    _alreadyInit = true;
  }
}
