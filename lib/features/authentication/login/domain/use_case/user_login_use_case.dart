import 'package:injectable/injectable.dart';
import 'package:multiple_result/src/result.dart';
import 'package:task_manager_app/core/base/base_use_case.dart';
import 'package:task_manager_app/core/error_handling/failure.dart';
import 'package:task_manager_app/features/authentication/login/domain/base_repo/login_base_repo.dart';
import 'package:task_manager_app/features/authentication/login/domain/entites/login_request_entity.dart';
import 'package:task_manager_app/features/authentication/login/domain/entites/login_response_entity.dart';

@lazySingleton
class UserLoginUseCase
    implements BaseUseCase<LoginResponseEntity, LoginRequestEntity> {
  final LoginBaseRepo _loginBaseRepo;

  UserLoginUseCase(this._loginBaseRepo);

  @override
  Future<Result<LoginResponseEntity, Failure>> call(LoginRequestEntity params) {
    return _loginBaseRepo.userLogin(requsetEntity: params);
  }
}
