import '../../../../core/use_case/use_case.dart';
import '../entities/post_model.dart';
import '../repositories/local_db_repository_contract.dart';

class GetAllPostsLocalDbUseCase
    implements UseCase<Future<List<PostModel>>, void> {
  GetAllPostsLocalDbUseCase(this.repository);

  final LocalDBRepositoryContract repository;

  @override
  Future<List<PostModel>> call(_) async {
    return repository.getAllPosts();
  }
}
