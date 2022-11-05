import '../../../../core/use_case/use_case.dart';
import '../entities/user_model.dart';
import '../repositories/local_db_repository_contract.dart';

class SaveUsersLocalDbUseCase
    implements UseCase<Future<void>, List<UserModel>> {
  SaveUsersLocalDbUseCase(this.repository);

  final LocalDBRepositoryContract repository;

  @override
  Future<void> call(List<UserModel> users) async {
    return repository.saveAllDataUsers(users);
  }
}
