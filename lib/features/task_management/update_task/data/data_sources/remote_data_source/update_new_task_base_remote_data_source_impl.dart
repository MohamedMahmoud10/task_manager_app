import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';
import 'package:task_manager_app/core/config/app_constant_strings.dart';
import 'package:task_manager_app/core/infrastructure/network/api_consumer.dart';
import 'package:task_manager_app/features/task_management/update_task/data/data_sources/remote_data_source/update_new_task_base_remote_data_source.dart';
import 'package:task_manager_app/features/task_management/update_task/data/models/update_task_request_model.dart';
import 'package:task_manager_app/features/task_management/update_task/data/models/update_task_response_model.dart';
import 'package:task_manager_app/features/task_management/update_task/domain/entites/update_task_request_entity.dart';

@LazySingleton(as: UpdateNewTaskBaseRemoteDataSource)
class UpdateNewTaskBaseRemoteDataSourceImpl
    implements UpdateNewTaskBaseRemoteDataSource {
  final ApiConsumer _apiClient;

  UpdateNewTaskBaseRemoteDataSourceImpl(this._apiClient);

  @override
  Future<UpdateTaskResponseModel> updateNewTask(
      {required UpdateTaskRequestEntity requestEntity}) async {
    try {
      final response = await _apiClient.post(
        path: '${dotenv.get(AppConstantStrings.updateTodo)}',
        body: UpdateTaskRequestModel(
          todoName: requestEntity.todoName,
          isCompleted: requestEntity.isCompleted,
          userId: requestEntity.userId,
        ).toJson(),
      );
      return UpdateTaskResponseModel.fromJson(response as Map<String, dynamic>);
    } catch (error) {
      rethrow;
    }
  }
}
