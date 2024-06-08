import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_request_entity.freezed.dart';

@Freezed(fromJson: false, toJson: false)
class LoginRequestEntity with _$LoginRequestEntity {
  const factory LoginRequestEntity({
    required String userName, required String password


  })= _LoginRequestEntity;

}
