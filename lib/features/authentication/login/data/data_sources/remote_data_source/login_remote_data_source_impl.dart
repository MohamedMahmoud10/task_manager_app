import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';
import 'package:task_manager_app/core/config/app_constant_strings.dart';
import 'package:task_manager_app/core/infrastructure/network/api_consumer.dart';
import 'package:task_manager_app/features/authentication/login/data/data_sources/remote_data_source/login_base_remote_data_source.dart';
import 'package:task_manager_app/features/authentication/login/data/models/login_request_model.dart';
import 'package:task_manager_app/features/authentication/login/data/models/login_response_model.dart';
import 'package:task_manager_app/features/authentication/login/domain/entites/login_request_entity.dart';

@LazySingleton(as: LoginBaseRemoteDataSource)
class LoginRemoteDataSourceImpl implements LoginBaseRemoteDataSource {
  final ApiConsumer _apiClient;

  LoginRemoteDataSourceImpl(this._apiClient);

  @override
  Future<LoginResponseModel> userLogin(
      {required LoginRequestEntity requestEntity}) async {
    try {
      final response =await _apiClient.post(
        path: '${dotenv.get(AppConstantStrings.login)}',
        body: LoginRequestModel(
                userName: requestEntity.userName,
                password: requestEntity.password)
            .toJson(),
      );
      return LoginResponseModel.fromJson(response as Map<String, dynamic>);
    } catch (error) {
      rethrow;
    }
  }
}
