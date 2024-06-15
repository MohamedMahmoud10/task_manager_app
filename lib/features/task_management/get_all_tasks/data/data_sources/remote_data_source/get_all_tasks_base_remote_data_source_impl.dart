import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';
import 'package:task_manager_app/core/config/app_constant_strings.dart';
import 'package:task_manager_app/core/infrastructure/network/api_consumer.dart';
import 'package:task_manager_app/features/task_management/get_all_tasks/data/data_sources/remote_data_source/get_all_tasks_base_remote_data_source.dart';
import 'package:task_manager_app/features/task_management/get_all_tasks/data/models/tasks_reponse_model.dart';

@LazySingleton(as: GetAllTasksBaseRemoteDataSource)
class GetAllTasksBaseRemoteDataSourceImpl
    implements GetAllTasksBaseRemoteDataSource {
  final ApiConsumer _apiClient;

  GetAllTasksBaseRemoteDataSourceImpl(this._apiClient);

  @override
  Future<List<TasksResponseModel>> getAllTask(
      {required int skip, required int limit}) async {
    try {
      final response = await _apiClient.get(
        path:
            '${dotenv.get(AppConstantStrings.getTodos)}?skip=$skip&limit=$limit',
      );
      final responseData = response['todos'] as List<dynamic>;
      return List<TasksResponseModel>.from(
        responseData.map(
          (e) => TasksResponseModel.fromJson(e as Map<String, dynamic>),
        ),
      );
    } catch (error) {
      rethrow;
    }
  }
}
