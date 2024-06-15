import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:task_manager_app/features/task_management/update_task/domain/entites/update_task_response_entity.dart';
import 'package:task_manager_app/features/task_management/update_task/data/models/update_task_response_model.dart';
import 'update_task_response_mappr.auto_mappr.dart';

@AutoMappr([MapType<UpdateTaskResponseModel, UpdateTaskResponseEntity>()])
class UpdateNewTaskResponseMappr extends $UpdateNewTaskResponseMappr {}
