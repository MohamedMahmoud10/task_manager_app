import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_manager_app/core/di/index.dart';
import 'package:task_manager_app/core/infrastructure/local_data_base/base_local_data_base.dart';
import 'package:task_manager_app/core/utils/bloc_observer.dart';

class AppInit {
  static final AppInit _instance = AppInit._internal();

  factory AppInit() => _instance;

  AppInit._internal();

  Future<void> beforeAppInit() async {
    await WidgetsFlutterBinding.ensureInitialized();
    configureDependencies();

    await dotenv.load();
    await EasyLocalization.ensureInitialized();
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    await ScreenUtil.ensureScreenSize();
    await di<BaseDatabase>().init();
    Bloc.observer = AppBlocObserver();
  }
}
