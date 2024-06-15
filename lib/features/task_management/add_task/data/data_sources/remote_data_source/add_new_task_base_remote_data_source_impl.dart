import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';
import 'package:task_manager_app/core/config/app_constant_strings.dart';
import 'package:task_manager_app/core/infrastructure/network/api_consumer.dart';
import 'package:task_manager_app/features/task_management/add_task/data/data_sources/remote_data_source/add_new_task_base_remote_data_source.dart';
import 'package:task_manager_app/features/task_management/add_task/data/models/add_task_request_model.dart';
import 'package:task_manager_app/features/task_management/add_task/data/models/add_task_response_model.dart';
import 'package:task_manager_app/features/task_management/add_task/domain/entites/add_task_request_entity.dart';

@LazySingleton(as: AddNewTaskBaseRemoteDataSource)
class AddNewTaskBaseRemoteDataSourceImpl
    implements AddNewTaskBaseRemoteDataSource {
  final ApiConsumer _apiClient;

  AddNewTaskBaseRemoteDataSourceImpl(this._apiClient);

  @override
  Future<AddTaskResponseModel> addNewTask(
      {required AddTaskRequestEntity requestEntity}) async {
    try {
      final response = await _apiClient.post(
        path: '${dotenv.get(AppConstantStrings.addTodo)}',
        body: AddTaskRequestModel(
          todoName: requestEntity.todoName,
          isCompleted: requestEntity.isCompleted,
          userId: requestEntity.userId,
        ).toJson(),
      );
      return AddTaskResponseModel.fromJson(response as Map<String, dynamic>);
    } catch (error) {
      rethrow;
    }
  }
}
