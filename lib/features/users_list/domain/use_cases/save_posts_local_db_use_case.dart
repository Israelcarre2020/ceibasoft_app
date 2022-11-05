import '../../../../core/use_case/use_case.dart';
import '../entities/post_model.dart';
import '../repositories/local_db_repository_contract.dart';

class SavePostsLocalDbUseCase
    implements UseCase<Future<void>, List<PostModel>> {
  SavePostsLocalDbUseCase(this.repository);

  final LocalDBRepositoryContract repository;

  @override
  Future<void> call(List<PostModel> posts) async {
    return repository.saveAllPosts(posts);
  }
}
