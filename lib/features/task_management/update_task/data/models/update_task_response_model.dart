import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_task_response_model.freezed.dart';
part 'update_task_response_model.g.dart';

@Freezed(fromJson: true, toJson: false)
class UpdateTaskResponseModel with _$UpdateTaskResponseModel {
  const factory UpdateTaskResponseModel({
    @JsonKey(name: 'todo')required String todoName,
    @JsonKey(name: 'id') required int todoId,
    @JsonKey(name: 'completed')required bool isCompleted,
    required int userId,
  }) = _UpdateTaskResponseModel;
  factory UpdateTaskResponseModel.fromJson(Map<String,dynamic>json)=>_$UpdateTaskResponseModelFromJson(json);
}
