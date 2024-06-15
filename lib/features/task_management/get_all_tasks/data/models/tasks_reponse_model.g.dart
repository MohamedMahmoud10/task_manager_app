// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tasks_reponse_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TasksResponseModelImpl _$$TasksResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TasksResponseModelImpl(
      todoName: json['todo'] as String,
      todoId: (json['id'] as num).toInt(),
      isCompleted: json['completed'] as bool,
      userId: (json['userId'] as num).toInt(),
    );
