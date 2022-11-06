// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:ceibasoft_app/core/db/init_local_db.dart';
import 'package:ceibasoft_app/core/db/stores_db.dart';
import 'package:ceibasoft_app/features/users_list/data/data_source/get_data_users_remote_data_source.dart';
import 'package:ceibasoft_app/features/users_list/data/data_source/get_local_db_data_source.dart';
import 'package:ceibasoft_app/features/users_list/domain/repositories/get_data_remote_users_repository_contract.dart';
import 'package:ceibasoft_app/features/users_list/domain/repositories/local_db_repository_contract.dart';
import 'package:ceibasoft_app/features/users_list/domain/use_cases/get_all_post_remote_use_case.dart';
import 'package:ceibasoft_app/features/users_list/domain/use_cases/get_all_posts_local_bd_use_case.dart';
import 'package:ceibasoft_app/features/users_list/domain/use_cases/get_users_local_db_use_case.dart';
import 'package:ceibasoft_app/features/users_list/domain/use_cases/get_users_remote_use_case.dart';
import 'package:ceibasoft_app/features/users_list/domain/use_cases/save_posts_local_db_use_case.dart';
import 'package:ceibasoft_app/features/users_list/domain/use_cases/save_users_local_db_use_case.dart';
import 'package:mocktail/mocktail.dart';

class InitLocalDbMock extends Mock implements InitLocalDb {}

class StoreRefMock extends Mock implements StoresDB {}

class GetDataUsersRemoteDatasourceMock extends Mock
    implements GetDataUsersRemoteDatasource {}

class GetLocalDbDataSourceMock extends Mock implements GetLocalDbDataSource {}

class GetDataUsersContractMock extends Mock implements GetDataUsersContract {}

class LocalDBRepositoryContractMock extends Mock
    implements LocalDBRepositoryContract {}

class GetAllPostsUseCaseMock extends Mock implements GetAllPostsUseCase {}

class GetAllPostsLocalDbUseCaseMock extends Mock
    implements GetAllPostsLocalDbUseCase {}

class GetUsersLocalDbUseCaseMock extends Mock
    implements GetUsersLocalDbUseCase {}

class GetDataUsersUseCaseMock extends Mock implements GetDataUsersUseCase {}

class SavePostsLocalDbUseCaseMock extends Mock
    implements SavePostsLocalDbUseCase {}

class SaveUsersLocalDbUseCaseMock extends Mock
    implements SaveUsersLocalDbUseCase {}
