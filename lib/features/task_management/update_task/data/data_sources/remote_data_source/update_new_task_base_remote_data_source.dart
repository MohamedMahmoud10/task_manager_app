
import 'package:task_manager_app/features/task_management/update_task/domain/entites/update_task_request_entity.dart';
import 'package:task_manager_app/features/task_management/update_task/data/models/update_task_response_model.dart';

abstract interface class UpdateNewTaskBaseRemoteDataSource{
  Future<UpdateTaskResponseModel>updateNewTask({required UpdateTaskRequestEntity requestEntity});
}