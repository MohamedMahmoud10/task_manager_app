import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_manager_app/features/task_management/get_all_tasks/domain/entites/tasks_reponse_entity.dart';
import 'package:task_manager_app/features/task_management/get_all_tasks/presentation/bloc/get_all_tasks_bloc.dart';
import 'package:task_manager_app/features/task_management/get_all_tasks/presentation/widgets/index.dart';

class AllTasksBody extends StatefulWidget {
  const AllTasksBody({Key? key}) : super(key: key);

  @override
  _AllTasksBodyState createState() => _AllTasksBodyState();
}

class _AllTasksBodyState extends State<AllTasksBody> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()
      ..addListener(() {
        if (_scrollController.position.pixels ==
            _scrollController.position.maxScrollExtent) {
          context
              .read<GetAllTasksBloc>()
              .add(const GetAllTasksEvent.fetchMore());
        }
      });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetAllTasksBloc, GetAllTasksState>(
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => const Center(child: CircularProgressIndicator()),
          success: (responseData, hasReachedEnd) =>
              _buildTaskList(responseData, hasReachedEnd),
          fetchingMore: (responseData) =>
              _buildTaskList(responseData, false),
          error: (errorMsg) => Center(child: Text(errorMsg)),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget _buildTaskList(List<TasksResponseEntity> tasks, bool hasReachedEnd) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      controller: _scrollController,
      itemCount: tasks.length + (hasReachedEnd ? 1 : 0),
      itemBuilder: (context, index) {
        if (index == tasks.length) {
          // Display loading indicator if more data is being fetched
          return _buildLoadingIndicator(hasReachedEnd);
        } else {
          // Display task item
          return TaskView(tasksResponseEntity: tasks[index]);
        }
      },
    );
  }

  Widget _buildLoadingIndicator(bool hasReachedEnd) {
    log('hasReachedEnd$hasReachedEnd');
    return Center(
      child: hasReachedEnd
          ? Text('You have reached the end', style: TextStyle(color: Colors.grey))
          : CircularProgressIndicator(),
    );
  }
}