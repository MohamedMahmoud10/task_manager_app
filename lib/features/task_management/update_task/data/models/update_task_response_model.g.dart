// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_task_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateTaskResponseModelImpl _$$UpdateTaskResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateTaskResponseModelImpl(
      todoName: json['todo'] as String,
      todoId: (json['id'] as num).toInt(),
      isCompleted: json['completed'] as bool,
      userId: (json['userId'] as num).toInt(),
    );
