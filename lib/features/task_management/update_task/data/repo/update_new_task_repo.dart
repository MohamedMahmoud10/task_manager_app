import 'package:injectable/injectable.dart';
import 'package:multiple_result/src/result.dart';
import 'package:task_manager_app/core/error_handling/failure.dart';
import 'package:task_manager_app/core/infrastructure/network/dio_consumer.dart';
import 'package:task_manager_app/features/task_management/update_task/data/data_sources/remote_data_source/update_new_task_base_remote_data_source.dart';
import 'package:task_manager_app/features/task_management/update_task/data/mappr/update_task_response_mappr.dart';
import 'package:task_manager_app/features/task_management/update_task/domain/base_repo/update_task_base_repo.dart';
import 'package:task_manager_app/features/task_management/update_task/domain/entites/update_task_request_entity.dart';
import 'package:task_manager_app/features/task_management/update_task/domain/entites/update_task_response_entity.dart';
@LazySingleton(as: UpdateTaskBaseRepo)
class UpdateNewTaskRepo implements UpdateTaskBaseRepo{
  final UpdateNewTaskBaseRemoteDataSource _baseRemoteDataSource;
  UpdateNewTaskRepo(this._baseRemoteDataSource);

  @override
  Future<Result<UpdateTaskResponseEntity, Failure>> updateTask({required UpdateTaskRequestEntity requestEntity}) async{
    try{
      final result=await _baseRemoteDataSource.updateNewTask(requestEntity: requestEntity);
      return Success(UpdateNewTaskResponseMappr().convert(result),);
    }catch(error){
      final Failure failure=DioHandlerExc.handle(error).failure;
      return Error(failure);
    }
  }

}