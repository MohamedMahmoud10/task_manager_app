// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_task_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddTaskResponseModelImpl _$$AddTaskResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AddTaskResponseModelImpl(
      todoName: json['todo'] as String,
      todoId: (json['id'] as num).toInt(),
      isCompleted: json['completed'] as bool,
      userId: (json['userId'] as num).toInt(),
    );

Map<String, dynamic> _$$AddTaskResponseModelImplToJson(
        _$AddTaskResponseModelImpl instance) =>
    <String, dynamic>{
      'todo': instance.todoName,
      'id': instance.todoId,
      'completed': instance.isCompleted,
      'userId': instance.userId,
    };
