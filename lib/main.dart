import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:task_manager_app/app_init.dart';
import 'package:task_manager_app/core/navigation/app_router.dart';

import 'task_manager_app/task_manager_app.dart';

Future<void> main() async {
  await AppInit().beforeAppInit();
  runApp(
    EasyLocalization(
      supportedLocales: [Locale('en'), Locale('ar')],
      path: 'lib/assets/translations',
      fallbackLocale: Locale('en'),
      startLocale: const Locale('en'),
      child: MyApp(
        appRouter: AppRouter(),
      ),
    ),
  );
}
