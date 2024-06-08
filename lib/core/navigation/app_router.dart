import 'package:flutter/material.dart';
import 'package:task_manager_app/core/navigation/app_route_names.dart';
import 'package:task_manager_app/features/home/presentation/screens/home_screen.dart';

class AppRouter {
  Route routerGenerator(RouteSettings settings) {
    switch (settings.name) {
      case AppRouteNames.home:
        return MaterialPageRoute(
          builder: (_) => HomeScreen(),
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
