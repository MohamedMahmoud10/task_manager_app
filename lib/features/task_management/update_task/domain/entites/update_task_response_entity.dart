import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_task_response_entity.freezed.dart';

@Freezed(fromJson: false, toJson: false)
class UpdateTaskResponseEntity with _$UpdateTaskResponseEntity {
  const factory UpdateTaskResponseEntity({
    required String todoName,
    required int todoId,
    required bool isCompleted,
    required int userId,
  }) = _UpdateTaskResponseEntity;
}
