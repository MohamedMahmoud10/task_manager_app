import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_task_request_entity.freezed.dart';

@Freezed(fromJson: false, toJson: false)
class UpdateTaskRequestEntity with _$UpdateTaskRequestEntity {
  const factory UpdateTaskRequestEntity({
    required String todoId,
    String? todoName,
    bool? isCompleted,
    required String userId,
  }) = _UpdateTaskRequestEntity;
}
