import '../../../../core/use_case/use_case.dart';
import '../entities/post_model.dart';
import '../repositories/get_data_remote_users_repository_contract.dart';

class GetAllPostsUseCase implements UseCase<Future<List<PostModel>>, void> {
  GetAllPostsUseCase(this.repository);

  final GetDataUsersContract repository;

  @override
  Future<List<PostModel>> call(_) async {
    return repository.getAllposts();
  }
}
