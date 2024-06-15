import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'add_task_response_model.freezed.dart';

part 'add_task_response_model.g.dart';

@freezed
class AddTaskResponseModel extends HiveObject with _$AddTaskResponseModel {
  @HiveType(
    typeId: 0,
    adapterName: 'TasksAdapter',
  )
  factory AddTaskResponseModel({
    @JsonKey(name: 'todo') @HiveField(0) required String todoName,
    @JsonKey(name: 'id') @HiveField(1) required int todoId,
    @JsonKey(name: 'completed') @HiveField(2) required bool isCompleted,
    @HiveField(3) required int userId,
  }) = _AddTaskResponseModel;

  AddTaskResponseModel._();

  factory AddTaskResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AddTaskResponseModelFromJson(json);
}
