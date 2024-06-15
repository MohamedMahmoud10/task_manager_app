import 'package:injectable/injectable.dart';
import 'package:multiple_result/src/result.dart';
import 'package:task_manager_app/core/error_handling/failure.dart';
import 'package:task_manager_app/core/infrastructure/network/dio_consumer.dart';
import 'package:task_manager_app/features/task_management/add_task/data/data_sources/loca_data_source/add_new_task_base_local_data_source.dart';
import 'package:task_manager_app/features/task_management/add_task/data/data_sources/remote_data_source/add_new_task_base_remote_data_source.dart';
import 'package:task_manager_app/features/task_management/add_task/data/mappr/add_task_response_mappr.dart';
import 'package:task_manager_app/features/task_management/add_task/domain/base_repo/add_task_base_repo.dart';
import 'package:task_manager_app/features/task_management/add_task/domain/entites/add_task_request_entity.dart';
import 'package:task_manager_app/features/task_management/add_task/domain/entites/add_task_response_entity.dart';

@LazySingleton(as: AddNewTaskBaseRepo)
class AddNewTaskRepo implements AddNewTaskBaseRepo {
  final AddNewTaskBaseRemoteDataSource _baseRemoteDataSource;
  final AddNewTaskBaseLocalDataSource _baseLocalDataSource;

  AddNewTaskRepo(this._baseRemoteDataSource, this._baseLocalDataSource);

  @override
  Future<Result<AddTaskResponseEntity, Failure>> addNewTask(
      {required AddTaskRequestEntity requestEntity}) async {
    try {
      final result = await _baseRemoteDataSource.addNewTask(requestEntity: requestEntity);
      await _baseLocalDataSource.addNewTaskLocally(AddNewTaskResponseMappr().convert(result));
      return Success(AddNewTaskResponseMappr().convert(result));
    } catch (error) {
      final Failure failure = DioHandlerExc.handle(error).failure;
      return Error(failure);
    }
  }
}
