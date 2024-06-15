import 'package:freezed_annotation/freezed_annotation.dart';
part 'add_task_request_model.freezed.dart';
part 'add_task_request_model.g.dart';
@Freezed(fromJson: false,toJson: true)
class AddTaskRequestModel with _$AddTaskRequestModel {
  const factory AddTaskRequestModel({
    @JsonKey(name: 'todo')required String todoName,
    @JsonKey(name: 'completed') @Default(false) bool? isCompleted,
    required String userId,
  }) = _AddTaskRequestModel;
}
