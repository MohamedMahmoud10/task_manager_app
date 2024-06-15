import 'package:multiple_result/multiple_result.dart';
import 'package:task_manager_app/core/error_handling/failure.dart';
import 'package:task_manager_app/features/task_management/update_task/domain/entites/update_task_request_entity.dart';
import 'package:task_manager_app/features/task_management/update_task/domain/entites/update_task_response_entity.dart';

abstract interface class UpdateTaskBaseRepo{
  Future<Result<UpdateTaskResponseEntity,Failure>>updateTask({required UpdateTaskRequestEntity requestEntity});
}