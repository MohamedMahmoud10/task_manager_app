import 'package:freezed_annotation/freezed_annotation.dart';
part 'tasks_reponse_entity.freezed.dart';
@Freezed(fromJson: false,toJson: false)
class TasksResponseEntity with _$TasksResponseEntity {
  const factory TasksResponseEntity({
    required String todoName,
    required int todoId,
    required bool isCompleted,
    required int userId,
  }) = _TasksResponseEntity;
}
