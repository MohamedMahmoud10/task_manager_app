import 'package:multiple_result/multiple_result.dart';
import 'package:task_manager_app/core/error_handling/failure.dart';
import 'package:task_manager_app/features/task_management/add_task/domain/entites/add_task_request_entity.dart';
import 'package:task_manager_app/features/task_management/add_task/domain/entites/add_task_response_entity.dart';

abstract interface class AddNewTaskBaseRepo{
  Future<Result<AddTaskResponseEntity,Failure>>addNewTask({required AddTaskRequestEntity requestEntity});
}