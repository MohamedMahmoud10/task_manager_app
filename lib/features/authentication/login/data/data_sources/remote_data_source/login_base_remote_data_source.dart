import 'package:task_manager_app/features/authentication/login/data/models/login_response_model.dart';
import 'package:task_manager_app/features/authentication/login/domain/entites/login_request_entity.dart';

abstract interface class LoginBaseRemoteDataSource{
  Future<LoginResponseModel>userLogin({ required LoginRequestEntity requestEntity});
}