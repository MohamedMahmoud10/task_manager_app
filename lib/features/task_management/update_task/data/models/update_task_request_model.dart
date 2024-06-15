import 'package:freezed_annotation/freezed_annotation.dart';
part 'update_task_request_model.freezed.dart';
part 'update_task_request_model.g.dart';
@Freezed(fromJson: false,toJson: true)
class UpdateTaskRequestModel with _$UpdateTaskRequestModel {
  const factory UpdateTaskRequestModel({
    @JsonKey(name: 'todo') String ?todoName,
    @JsonKey(name: 'completed') @Default(false) bool? isCompleted,
    required String userId,
  }) = _UpdateTaskRequestModel;
}
