import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response_entity.freezed.dart';

@Freezed(fromJson: false, toJson: false)
class LoginResponseEntity with _$LoginResponseEntity {
  const factory LoginResponseEntity({
    required int id,
    required String userName,
    required String email,
    required String firstName,
    required String lastName,
    String? gender,
    String? image,
    required String token,
    required String refreshToken,
  }) = _LoginResponseEntity;
}
