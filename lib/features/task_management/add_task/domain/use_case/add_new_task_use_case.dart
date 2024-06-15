import 'package:injectable/injectable.dart';
import 'package:multiple_result/src/result.dart';
import 'package:task_manager_app/core/base/base_use_case.dart';
import 'package:task_manager_app/core/error_handling/failure.dart';
import 'package:task_manager_app/features/task_management/add_task/domain/base_repo/add_task_base_repo.dart';
import 'package:task_manager_app/features/task_management/add_task/domain/entites/add_task_request_entity.dart';
import 'package:task_manager_app/features/task_management/add_task/domain/entites/add_task_response_entity.dart';
@lazySingleton
class AddNewTaskUseCase
    implements BaseUseCase<AddTaskResponseEntity, AddTaskRequestEntity> {
  final AddNewTaskBaseRepo _baseRepo;

  AddNewTaskUseCase(this._baseRepo);

  @override
  Future<Result<AddTaskResponseEntity, Failure>> call(
      AddTaskRequestEntity params) {
    return _baseRepo.addNewTask(requestEntity: params);
  }
}
