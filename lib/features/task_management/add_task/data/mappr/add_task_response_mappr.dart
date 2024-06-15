import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:task_manager_app/features/task_management/add_task/data/models/add_task_response_model.dart';
import 'package:task_manager_app/features/task_management/add_task/domain/entites/add_task_response_entity.dart';
import 'add_task_response_mappr.auto_mappr.dart';

@AutoMappr([MapType<AddTaskResponseModel, AddTaskResponseEntity>()])
class AddNewTaskResponseMappr extends $AddNewTaskResponseMappr {}
