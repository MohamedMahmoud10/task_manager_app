import 'package:flutter/material.dart';
import 'package:task_manager_app/core/navigation/app_route_names.dart';
import 'package:task_manager_app/features/task_management/get_all_tasks/presentation/screens/all_tasks_screen.dart';

class AppRouter {
  Route<dynamic> routerGenerator(RouteSettings settings) {
    switch (settings.name) {
      case AppRouteNames.home:
        return MaterialPageRoute(
          builder: (_) => AllTasksScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No Route Found For ${settings.name}'),
            ),
          ),
        );
    }
  }
}
