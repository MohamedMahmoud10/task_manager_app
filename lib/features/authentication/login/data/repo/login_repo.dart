
import 'package:injectable/injectable.dart';
import 'package:multiple_result/src/result.dart';
import 'package:task_manager_app/core/error_handling/failure.dart';
import 'package:task_manager_app/core/infrastructure/network/dio_consumer.dart';
import 'package:task_manager_app/core/utils/app_logger.dart';
import 'package:task_manager_app/features/authentication/login/data/data_sources/remote_data_source/login_base_remote_data_source.dart';
import 'package:task_manager_app/features/authentication/login/data/mappr/login_response_mappr.dart';
import 'package:task_manager_app/features/authentication/login/domain/base_repo/login_base_repo.dart';
import 'package:task_manager_app/features/authentication/login/domain/entites/login_request_entity.dart';
import 'package:task_manager_app/features/authentication/login/domain/entites/login_response_entity.dart';

@LazySingleton(as: LoginBaseRepo)
class LoginRepo implements LoginBaseRepo {
  final LoginBaseRemoteDataSource _loginBaseRemoteDataSource;

  LoginRepo(this._loginBaseRemoteDataSource);

  @override
  Future<Result<LoginResponseEntity, Failure>> userLogin(
      {required LoginRequestEntity requestEntity}) async {
    try {
      final result = await _loginBaseRemoteDataSource.userLogin(
          requestEntity: requestEntity);
      return Success(LoginResponseMappr().convert(result));
    } catch (error) {
      AppLogger().error('Error in LoginRepo: $error');
      final failure = DioHandlerExc.handle(error).failure;
      AppLogger().error('Converted Failure: ${failure.message}');
      return Error(failure);
    }
  }
}
