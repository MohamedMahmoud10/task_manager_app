import 'package:freezed_annotation/freezed_annotation.dart';
part 'tasks_reponse_model.freezed.dart';
part 'tasks_reponse_model.g.dart';
@Freezed(fromJson: true,toJson: false)
class TasksResponseModel with _$TasksResponseModel {
  const factory TasksResponseModel({
    @JsonKey(name: 'todo')required String todoName,
    @JsonKey(name: 'id') required int todoId,
    @JsonKey(name: 'completed')required bool isCompleted,
    required int userId,
  }) = _TasksResponseModel;
  factory TasksResponseModel.fromJson(Map<String,dynamic>json)=>_$TasksResponseModelFromJson(json);
}
