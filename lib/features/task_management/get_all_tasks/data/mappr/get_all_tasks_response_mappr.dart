import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:task_manager_app/features/task_management/get_all_tasks/data/models/tasks_reponse_model.dart';
import 'package:task_manager_app/features/task_management/get_all_tasks/domain/entites/tasks_reponse_entity.dart';
import 'get_all_tasks_response_mappr.auto_mappr.dart';

@AutoMappr([MapType<TasksResponseModel, TasksResponseEntity>()])
class GetAllTasksResponseMappr extends $GetAllTasksResponseMappr {}
