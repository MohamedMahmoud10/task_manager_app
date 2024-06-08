import 'package:multiple_result/multiple_result.dart';
import 'package:task_manager_app/core/error_handling/failure.dart';
import 'package:task_manager_app/features/authentication/login/domain/entites/login_request_entity.dart';
import 'package:task_manager_app/features/authentication/login/domain/entites/login_response_entity.dart';

 abstract interface class LoginBaseRepo{
  Future<Result<LoginResponseEntity,Failure>>userLogin({required LoginRequestEntity requsetEntity });
}