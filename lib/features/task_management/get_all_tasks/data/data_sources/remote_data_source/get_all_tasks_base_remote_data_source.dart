import 'package:task_manager_app/features/task_management/get_all_tasks/data/models/tasks_reponse_model.dart';

abstract interface class GetAllTasksBaseRemoteDataSource{
  Future<List<TasksResponseModel>>getAllTask({required int skip, required int limit});
}