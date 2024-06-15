import 'package:injectable/injectable.dart';
import 'package:multiple_result/src/result.dart';
import 'package:task_manager_app/core/base/base_use_case.dart';
import 'package:task_manager_app/core/error_handling/failure.dart';
import 'package:task_manager_app/features/task_management/update_task/domain/base_repo/update_task_base_repo.dart';
import 'package:task_manager_app/features/task_management/update_task/domain/entites/update_task_request_entity.dart';
import 'package:task_manager_app/features/task_management/update_task/domain/entites/update_task_response_entity.dart';

@lazySingleton
class UpdateNewTaskUseCase
    implements BaseUseCase<UpdateTaskResponseEntity, UpdateTaskRequestEntity> {
  final UpdateTaskBaseRepo _baseRepo;

  UpdateNewTaskUseCase(this._baseRepo);

  @override
  Future<Result<UpdateTaskResponseEntity, Failure>> call(
      UpdateTaskRequestEntity params) {
    return _baseRepo.updateTask(requestEntity: params);
  }
}
