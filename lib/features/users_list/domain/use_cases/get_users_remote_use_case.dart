import '../../../../core/use_case/use_case.dart';
import '../entities/user_model.dart';
import '../repositories/get_data_remote_users_repository_contract.dart';

class GetDataUsersUseCase implements UseCase<Future<List<UserModel>>, void> {
  GetDataUsersUseCase(this.repository);

  final GetDataUsersContract repository;

  @override
  Future<List<UserModel>> call(_) async {
    return repository.getAllUsers();
  }
}
