import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_manager_app/core/theme/app_colors.dart';
import 'package:task_manager_app/features/task_management/get_all_tasks/domain/entites/tasks_reponse_entity.dart';

class TaskView extends StatelessWidget {
  const TaskView({super.key, required this.tasksResponseEntity});

  final TasksResponseEntity tasksResponseEntity;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327.w,
      height: 72.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.r), color: AppColors.lightGray),
      child: Row(
        children: [
          Column(
            children: [
              Text(
                tasksResponseEntity.todoName,
                style: Theme.of(context).textTheme.titleMedium,
              )
            ],
          )
        ],
      ),
    );
  }
}
