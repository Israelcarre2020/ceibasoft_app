import 'package:ceibasoft_app/features/users_list/domain/entities/post_model.dart';
import 'package:ceibasoft_app/features/users_list/domain/use_cases/get_all_posts_local_bd_use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../../test_utils/fake_responses/users_post_fake_responses.dart';
import '../../../../../test_utils/mocks/users_and_posts_mocks.dart';

void main() {
  late LocalDBRepositoryContractMock repository;
  late GetAllPostsLocalDbUseCase useCase;

  setUp(() {
    repository = LocalDBRepositoryContractMock();
    useCase = GetAllPostsLocalDbUseCase(repository);
  });

  test('Obtener todos los posts', () async {
    when(() => repository.getAllPosts())
        .thenAnswer((_) async => getPostsListFromJson(allPostsFakeResponse));

    final response = await useCase(null);

    expect(response[0], isA<PostModel>());
  });
}
