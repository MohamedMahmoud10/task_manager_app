import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response_model.freezed.dart';
part 'login_response_model.g.dart';

@Freezed(fromJson: true, toJson: false)
class LoginResponseModel with _$LoginResponseModel {
  const factory LoginResponseModel({
    required int id,
    @JsonKey(name: 'username')required String userName,
    required String email,
    required String firstName,
    required String lastName,
    String? gender,
    String? image,
    required String token,
    required String refreshToken,
  }) = _LoginResponseModel;
 factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);
}
