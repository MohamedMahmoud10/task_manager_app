import 'package:injectable/injectable.dart';
import 'package:multiple_result/src/result.dart';
import 'package:task_manager_app/core/error_handling/failure.dart';
import 'package:task_manager_app/core/infrastructure/network/dio_consumer.dart';
import 'package:task_manager_app/features/authentication/login/data/data_sources/remote_data_source/login_base_remote_data_source.dart';
import 'package:task_manager_app/features/authentication/login/data/mappr/login_response_mappr.dart';
import 'package:task_manager_app/features/authentication/login/domain/base_repo/login_base_repo.dart';
import 'package:task_manager_app/features/authentication/login/domain/entites/login_request_entity.dart';
import 'package:task_manager_app/features/authentication/login/domain/entites/login_response_entity.dart';
@LazySingleton(as:LoginBaseRepo )
class LoginRepo implements LoginBaseRepo{
  final LoginBaseRemoteDataSource _loginBaseRemoteDataSource;
  LoginRepo(this._loginBaseRemoteDataSource);
  @override
  Future<Result<LoginResponseEntity, Failure>> userLogin({required LoginRequestEntity requsetEntity}) async{
    try{
      final result=await _loginBaseRemoteDataSource.userLogin(requestEntity: requsetEntity);
      return Success(LoginResponseMappr().convert(result),);
    }catch(error){
      final failure = DioHandlerExc.handle(error).failure;
      return Error(failure);
    }
  }
}