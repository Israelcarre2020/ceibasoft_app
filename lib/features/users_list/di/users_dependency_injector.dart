// ignore_for_file: omit_local_variable_types, import_of_legacy_library_into_null_safe

import 'package:sembast/sembast.dart';

import '../../../core/config/remote_api_constants.dart';
import '../../../core/db/initLocalDB.dart';
import '../../../core/di_manager/di_manager.dart';
import '../../../core/http/data/http_proxy_impl.dart';
import '../data/data_source/get_data_users_remote_data_source.dart';
import '../data/data_source/get_local_db_remote_data_source.dart';
import '../data/repositories/get_data_users_impl_repository.dart';
import '../data/repositories/local_db_impl_repository.dart';
import '../domain/repositories/get_data_users_repository_contract.dart';
import '../domain/repositories/local_db_repository_contract.dart';
import '../domain/use_cases/get_all_post_use_case.dart';
import '../domain/use_cases/get_all_posts_local_bd_use_case.dart';
import '../domain/use_cases/get_users_use_case.dart';
import '../domain/use_cases/insert_posts_local_bd_use_case.dart';
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

    DIManager.getIt.registerSingleton(GetLocalDbRemoteDataSource(
        DIManager.getIt<InitLocalDb>(), intMapStoreFactory.store('ceiba_db')));

    DIManager.getIt.registerSingleton<GetDataUsersContract>(
      GetDataUsersImplRepository(
        DIManager.getIt<GetDataUsersRemoteDatasource>(),
      ),
    );

    DIManager.getIt.registerSingleton<LocalDBRepositoryContract>(
      LocalDbRepositoryImpl(
        DIManager.getIt<GetLocalDbRemoteDataSource>(),
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
      InsertPostsLocalDbUseCase(
        DIManager.getIt<LocalDBRepositoryContract>(),
      ),
    );
    DIManager.getIt.registerSingleton(
      GetAllPostsLocalDbUseCase(
        DIManager.getIt<LocalDBRepositoryContract>(),
      ),
    );

    DIManager.getIt.registerFactory(
      () => UsersCubit(
        getDataUsersUseCase: DIManager.getIt<GetDataUsersUseCase>(),
        getAllPostsUseCase: DIManager.getIt<GetAllPostsUseCase>(),
        insertPostsLocalDbUseCase: DIManager.getIt<InsertPostsLocalDbUseCase>(),
        getAllPostsLocalDbUseCase: DIManager.getIt<GetAllPostsLocalDbUseCase>(),
      ),
    );

    _alreadyInit = true;
  }
}
