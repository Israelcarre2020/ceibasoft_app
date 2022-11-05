import 'package:ceibasoft_app/features/users_list/domain/entities/post_model.dart';
import 'package:ceibasoft_app/features/users_list/domain/entities/user_model.dart';
import 'package:ceibasoft_app/features/users_list/domain/use_cases/get_all_post_remote_use_case.dart';
import 'package:ceibasoft_app/features/users_list/domain/use_cases/get_all_posts_local_bd_use_case.dart';
import 'package:ceibasoft_app/features/users_list/domain/use_cases/save_posts_local_db_use_case.dart';
import 'package:ceibasoft_app/features/users_list/domain/use_cases/save_users_local_db_use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../../test_utils/fake_responses/users_post_fake_responses.dart';
import '../../../../../test_utils/mocks/users_and_posts_mocks.dart';

void main() {
  late LocalDBRepositoryContractMock repository;
  late SaveUsersLocalDbUseCase useCase;

  final users = getUsersListFromJson(allUsersFakeResponse);

  setUp(() {
    repository = LocalDBRepositoryContractMock();
    useCase = SaveUsersLocalDbUseCase(repository);
  });

  test('Guardar todos los posts en local', () async {
    when(() => repository.saveAllDataUsers(users))
        .thenAnswer((_) async => getPostsListFromJson(allPostsFakeResponse));

    await useCase(users);

    verify(() => repository.saveAllDataUsers(users)).called(1);
  });
}
