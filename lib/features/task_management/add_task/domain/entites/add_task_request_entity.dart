import 'package:freezed_annotation/freezed_annotation.dart';
part 'add_task_request_entity.freezed.dart';
@Freezed(fromJson: false,toJson: false)
class AddTaskRequestEntity with _$AddTaskRequestEntity {
  const factory AddTaskRequestEntity({
    required String todoName,
    @Default(false) bool? isCompleted,
    required String userId,
  }) = _AddTaskRequestEntity;
}
