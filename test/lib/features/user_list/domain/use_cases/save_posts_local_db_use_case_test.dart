import 'package:ceibasoft_app/features/users_list/domain/entities/post_model.dart';
import 'package:ceibasoft_app/features/users_list/domain/use_cases/save_posts_local_db_use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../../test_utils/fake_responses/users_post_fake_responses.dart';
import '../../../../../test_utils/mocks/users_and_posts_mocks.dart';

void main() {
  late LocalDBRepositoryContractMock repository;
  late SavePostsLocalDbUseCase useCase;

  final posts = getPostsListFromJson(allPostsFakeResponse);

  setUp(() {
    repository = LocalDBRepositoryContractMock();
    useCase = SavePostsLocalDbUseCase(repository);
  });

  test('Guardar todos los posts en local', () async {
    when(() => repository.saveAllPosts(posts))
        .thenAnswer((_) async => getPostsListFromJson(allPostsFakeResponse));

    await useCase(posts);

    verify(() => repository.saveAllPosts(posts)).called(1);
  });
}
