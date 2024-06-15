import 'package:injectable/injectable.dart';
import 'package:task_manager_app/core/const/database_constants.dart';
import 'package:task_manager_app/core/infrastructure/local_data_base/base_local_data_base.dart';
import 'package:task_manager_app/features/task_management/add_task/data/data_sources/loca_data_source/add_new_task_base_local_data_source.dart';
import 'package:task_manager_app/features/task_management/add_task/data/models/add_task_response_model.dart';
@LazySingleton(as:AddNewTaskBaseLocalDataSource )
class AddNewTaskBaseLocalDataSourceImpl
    implements AddNewTaskBaseLocalDataSource {
  final BaseDatabase _dbClient;

  AddNewTaskBaseLocalDataSourceImpl(this._dbClient);

  @override
  Future<void> addNewTaskLocally(AddTaskResponseModel task) async {
    await _dbClient.add(tableName: DatabaseConstants.tasksBoxKey, data: task); // Assuming task.toJson() returns Map<String, dynamic>
  }
}
