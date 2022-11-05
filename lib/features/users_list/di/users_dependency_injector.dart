import '../../../core/config/remote_api_constants.dart';
import '../../../core/db/initLocalDB.dart';
import '../../../core/db/stores_db.dart';
import '../../../core/di_manager/di_manager.dart';
import '../../../core/http/data/http_proxy_impl.dart';
import '../data/data_source/get_data_users_remote_data_source.dart';
import '../data/data_source/get_local_db_data_source.dart';
import '../data/repositories/get_remote_data_users_impl_repository.dart';
import '../data/repositories/local_db_impl_repository.dart';
import '../domain/repositories/get_data_remote_users_repository_contract.dart';
import '../domain/repositories/local_db_repository_contract.dart';
import '../domain/use_cases/get_all_post_remote_use_case.dart';
import '../domain/use_cases/get_all_posts_local_bd_use_case.dart';
import '../domain/use_cases/get_users_local_db_use_case.dart';
import '../domain/use_cases/get_users_remote_use_case.dart';
import '../domain/use_cases/save_posts_local_db_use_case.dart';
import '../domain/use_cases/save_users_local_db_use_case.dart';
import '../presentation/manager/users/users_cubit.dart';

abstract class UsersDependencyInjector {
  static bool _alreadyInit = false;

  static Future<void> initializeDependencies() async {
    if (_alreadyInit) return;

    DIManager.getIt.registerSingleton(HttpImpl());

    DIManager.getIt.registerSingleton(InitLocalDb());

    DIManager.getIt.registerSingleton(GetDataUsersRemoteDatasource(
        DIManager.getIt<HttpImpl>(),
        RemoteApiConstants.getAllUsersEndpoint,
        RemoteApiConstants.getAllPostsEndpoint));

    DIManager.getIt.registerSingleton(GetLocalDbDataSource(
        DIManager.getIt<InitLocalDb>(),
        StoresDB.getPostsDB,
        StoresDB.getUsersDB));

    DIManager.getIt.registerSingleton<GetDataUsersContract>(
      GetDataUsersImplRepository(
        DIManager.getIt<GetDataUsersRemoteDatasource>(),
      ),
    );

    DIManager.getIt.registerSingleton<LocalDBRepositoryContract>(
      LocalDbRepositoryImpl(
        DIManager.getIt<GetLocalDbDataSource>(),
      ),
    );

    DIManager.getIt.registerSingleton(
      GetDataUsersUseCase(
        DIManager.getIt<GetDataUsersContract>(),
      ),
    );

    DIManager.getIt.registerSingleton(
      GetAllPostsUseCase(
        DIManager.getIt<GetDataUsersContract>(),
      ),
    );

    DIManager.getIt.registerSingleton(
      SavePostsLocalDbUseCase(
        DIManager.getIt<LocalDBRepositoryContract>(),
      ),
    );

    DIManager.getIt.registerSingleton(
      SaveUsersLocalDbUseCase(
        DIManager.getIt<LocalDBRepositoryContract>(),
      ),
    );

    DIManager.getIt.registerSingleton(
      GetAllPostsLocalDbUseCase(
        DIManager.getIt<LocalDBRepositoryContract>(),
      ),
    );

    DIManager.getIt.registerSingleton(
      GetUsersLocalDbUseCase(
        DIManager.getIt<LocalDBRepositoryContract>(),
      ),
    );

    DIManager.getIt.registerFactory(
      () => UsersCubit(
        getUsersLocalDbUseCase: DIManager.getIt<GetUsersLocalDbUseCase>(),
        getDataUsersUseCase: DIManager.getIt<GetDataUsersUseCase>(),
        getAllPostsUseCase: DIManager.getIt<GetAllPostsUseCase>(),
        insertPostsLocalDbUseCase: DIManager.getIt<SavePostsLocalDbUseCase>(),
        getAllPostsLocalDbUseCase: DIManager.getIt<GetAllPostsLocalDbUseCase>(),
        saveUsersLocalDbUseCase: DIManager.getIt<SaveUsersLocalDbUseCase>(),
      ),
    );

    _alreadyInit = true;
  }
}
