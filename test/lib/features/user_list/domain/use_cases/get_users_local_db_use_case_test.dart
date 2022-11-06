import 'package:ceibasoft_app/features/users_list/domain/entities/user_model.dart';
import 'package:ceibasoft_app/features/users_list/domain/use_cases/get_users_local_db_use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../../test_utils/fake_responses/users_post_fake_responses.dart';
import '../../../../../test_utils/mocks/users_and_posts_mocks.dart';

void main() {
  late LocalDBRepositoryContractMock repository;
  late GetUsersLocalDbUseCase useCase;

  setUp(() {
    repository = LocalDBRepositoryContractMock();
    useCase = GetUsersLocalDbUseCase(repository);
  });

  test('Obtener todos los posts', () async {
    when(() => repository.getAllUsers())
        .thenAnswer((_) async => getUsersListFromJson(allUsersFakeResponse));

    final response = await useCase(null);

    expect(response[0], isA<UserModel>());
  });
}
