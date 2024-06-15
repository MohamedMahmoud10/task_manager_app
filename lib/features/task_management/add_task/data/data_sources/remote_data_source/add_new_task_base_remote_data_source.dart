import 'package:task_manager_app/features/task_management/add_task/data/models/add_task_response_model.dart';
import 'package:task_manager_app/features/task_management/add_task/domain/entites/add_task_request_entity.dart';

abstract interface class AddNewTaskBaseRemoteDataSource{
  Future<AddTaskResponseModel>addNewTask({required AddTaskRequestEntity requestEntity});
}