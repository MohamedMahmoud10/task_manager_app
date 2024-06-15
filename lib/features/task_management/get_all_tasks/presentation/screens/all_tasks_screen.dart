import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_manager_app/features/task_management/get_all_tasks/presentation/bloc/get_all_tasks_bloc.dart';
import 'package:task_manager_app/features/task_management/get_all_tasks/presentation/widgets/index.dart';

class AllTasksScreen extends StatefulWidget {
  const AllTasksScreen({super.key});

  @override
  State<AllTasksScreen> createState() => _AllTasksScreenState();
}

class _AllTasksScreenState extends State<AllTasksScreen> {
  late final GetAllTasksBloc _allTasksBloc;

  @override
  void initState() {
    super.initState();
    _allTasksBloc = BlocProvider.of<GetAllTasksBloc>(context);

    if (_allTasksBloc.state is Initial) {
      _allTasksBloc.add(
        const GetAllTasksEvent.startFetched(),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: AllTasksBody(),
    );
  }
}
