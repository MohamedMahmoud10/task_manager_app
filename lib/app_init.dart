import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppInit {
  static final AppInit _instance = AppInit._internal();

  factory AppInit() => _instance;

  AppInit._internal();

  Future<void> beforeAppInit() async {
    await WidgetsFlutterBinding.ensureInitialized();
    await EasyLocalization.ensureInitialized();
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    await ScreenUtil.ensureScreenSize();
  }
}
