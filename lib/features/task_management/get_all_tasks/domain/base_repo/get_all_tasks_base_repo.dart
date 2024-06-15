import 'package:multiple_result/multiple_result.dart';
import 'package:task_manager_app/core/error_handling/failure.dart';
import 'package:task_manager_app/features/task_management/get_all_tasks/domain/entites/tasks_reponse_entity.dart';

abstract interface class GetAllTasksBaseRepo {
  Future<Result<List<TasksResponseEntity>,Failure>>getAllTasks({required int skip, required int limit});
}