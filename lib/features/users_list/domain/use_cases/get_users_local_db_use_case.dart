import '../../../../core/use_case_generic/use_case.dart';

import '../entities/user_model.dart';
import '../repositories/local_db_repository_contract.dart';

class GetUsersLocalDbUseCase implements UseCase<Future<List<UserModel>>, void> {
  GetUsersLocalDbUseCase(this.repository);

  final LocalDBRepositoryContract repository;

  @override
  Future<List<UserModel>> call(_) async {
    return repository.getAllUsers();
  }
}
