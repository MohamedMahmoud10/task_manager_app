import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:task_manager_app/core/error_handling/index.dart';
import 'package:task_manager_app/core/infrastructure/network/dio_consumer.dart';
import 'package:task_manager_app/features/task_management/get_all_tasks/data/data_sources/remote_data_source/get_all_tasks_base_remote_data_source.dart';
import 'package:task_manager_app/features/task_management/get_all_tasks/data/mappr/get_all_tasks_response_mappr.dart';
import 'package:task_manager_app/features/task_management/get_all_tasks/domain/base_repo/get_all_tasks_base_repo.dart';
import 'package:task_manager_app/features/task_management/get_all_tasks/domain/entites/tasks_reponse_entity.dart';

@LazySingleton(as: GetAllTasksBaseRepo)
class GetAllTasksRepo implements GetAllTasksBaseRepo {
  final GetAllTasksBaseRemoteDataSource _baseRemoteDataSource;

  GetAllTasksRepo(this._baseRemoteDataSource);

  @override
  Future<Result<List<TasksResponseEntity>, Failure>> getAllTasks(
      {required int skip, required int limit}) async {
    try {
      final result = await _baseRemoteDataSource.getAllTask(
        skip: skip,
        limit: limit,
      );
      return Success(
        GetAllTasksResponseMappr().convertList(result),
      );
    } catch (error) {
      final Failure failure = DioHandlerExc.handle(error).failure;
      return Error(failure);
    }
  }
}
