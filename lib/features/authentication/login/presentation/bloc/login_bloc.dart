
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_manager_app/features/authentication/login/domain/entites/login_request_entity.dart';
import 'package:task_manager_app/features/authentication/login/domain/entites/login_response_entity.dart';
import 'package:task_manager_app/features/authentication/login/domain/use_case/user_login_use_case.dart';

part 'login_event.dart';

part 'login_state.dart';

part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final UserLoginUseCase _useCase;

  LoginBloc(this._useCase) : super(const LoginState.initial()) {
    on<LoginEvent>((event, emit) async {
      await event.when(
        loginStarted: (requestEntity) => _onLogin(requestEntity, emit),
      );
    });
  }

  Future<void> _onLogin(
      LoginRequestEntity requestEntity, Emitter<LoginState> emit) async {
    emit(const LoginState.loading());
    final result = await _useCase(requestEntity);
    result.when(
      (success) => emit(LoginState.success(responseEntity: success)),
      (error) =>
          emit(LoginState.failure(errorMsg: error.message ?? 'Unknown error')),
    );
  }
}
