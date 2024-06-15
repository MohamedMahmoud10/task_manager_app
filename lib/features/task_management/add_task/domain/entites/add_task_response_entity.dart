import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_task_response_entity.freezed.dart';

@Freezed(fromJson: false, toJson: false)
class AddTaskResponseEntity with _$AddTaskResponseEntity {
  const factory AddTaskResponseEntity({
    required String todoName,
    required int todoId,
    required bool isCompleted,
    required int userId,
  }) = _AddTaskResponseEntity;
}
