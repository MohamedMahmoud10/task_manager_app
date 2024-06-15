import 'package:injectable/injectable.dart';
import 'package:multiple_result/src/result.dart';
import 'package:task_manager_app/core/base/base_use_case.dart';
import 'package:task_manager_app/core/error_handling/failure.dart';
import 'package:task_manager_app/features/task_management/get_all_tasks/domain/base_repo/get_all_tasks_base_repo.dart';
import 'package:task_manager_app/features/task_management/get_all_tasks/domain/entites/tasks_reponse_entity.dart';

@lazySingleton
class GetAllTasksUseCase
    implements BaseUseCase<List<TasksResponseEntity>, Params> {
  final GetAllTasksBaseRepo _baseRepo;

  GetAllTasksUseCase(this._baseRepo);

  @override
  Future<Result<List<TasksResponseEntity>, Failure>> call(Params params) {
    return _baseRepo.getAllTasks(skip: params.skip, limit: params.limit);
  }
}

class Params {
  final int skip;
  final int limit;

  Params(this.skip, this.limit);
}
