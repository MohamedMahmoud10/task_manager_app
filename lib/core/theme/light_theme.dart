import 'package:flutter/material.dart';
import 'package:task_manager_app/core/theme/index.dart';

ThemeData lightThemeData() {
  return ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,

    //Setting the Brightness to light  so that this can be used as Light ThemeData
    textTheme: CustomTextTheme.textTheme(),
    //Setting the Text Theme to LightTextTheme
  );
}
