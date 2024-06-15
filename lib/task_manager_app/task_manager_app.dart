import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_manager_app/core/di/index.dart';
import 'package:task_manager_app/core/navigation/app_route_names.dart';
import 'package:task_manager_app/core/navigation/app_router.dart';
import 'package:task_manager_app/core/theme/index.dart';
import 'package:task_manager_app/features/task_management/get_all_tasks/domain/use_case/get_all_tasks_use_case.dart';
import 'package:task_manager_app/features/task_management/get_all_tasks/presentation/bloc/get_all_tasks_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.appRouter});

  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(390, 844),
        minTextAdapt: true,
        splitScreenMode: true,
        useInheritedMediaQuery: true,
        builder: (_, child) {
          return MultiBlocProvider(
            providers: [
              BlocProvider<GetAllTasksBloc>(
                create: (_)=>GetAllTasksBloc(
                  di<GetAllTasksUseCase>(),
                ),
              )
            ],
            child: MaterialApp(
              supportedLocales: context.supportedLocales,
              locale: context.locale,
              debugShowCheckedModeBanner: false,
              title: 'Booking',
              theme: CustomTheme.lightTheme,
              onGenerateRoute: (RouteSettings settings) =>
                  appRouter.routerGenerator(settings),
              initialRoute: AppRouteNames.home,
            ),
          );
        });
  }
}
