import 'package:task_manager_app/features/task_management/add_task/data/models/add_task_response_model.dart';

abstract class AddNewTaskBaseLocalDataSource {
  Future<void> addNewTaskLocally(AddTaskResponseModel task);
}
