part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.loginStarted({required LoginRequestEntity requestEntity }) = _LoginStarted;
}
