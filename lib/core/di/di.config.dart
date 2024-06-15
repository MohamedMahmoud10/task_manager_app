// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/authentication/login/data/data_sources/remote_data_source/login_base_remote_data_source.dart'
    as _i9;
import '../../features/authentication/login/data/data_sources/remote_data_source/login_remote_data_source_impl.dart'
    as _i10;
import '../../features/authentication/login/data/repo/login_repo.dart' as _i21;
import '../../features/authentication/login/domain/base_repo/login_base_repo.dart'
    as _i20;
import '../../features/authentication/login/domain/use_case/user_login_use_case.dart'
    as _i27;
import '../../features/task_management/add_task/data/data_sources/loca_data_source/add_new_task_base_local_data_source.dart'
    as _i22;
import '../../features/task_management/add_task/data/data_sources/loca_data_source/add_new_task_local_data_source.dart'
    as _i23;
import '../../features/task_management/add_task/data/data_sources/remote_data_source/add_new_task_base_remote_data_source.dart'
    as _i16;
import '../../features/task_management/add_task/data/data_sources/remote_data_source/add_new_task_base_remote_data_source_impl.dart'
    as _i17;
import '../../features/task_management/add_task/data/repo/add_new_task_repo.dart'
    as _i25;
import '../../features/task_management/add_task/domain/base_repo/add_task_base_repo.dart'
    as _i24;
import '../../features/task_management/add_task/domain/use_case/add_new_task_use_case.dart'
    as _i26;
import '../../features/task_management/get_all_tasks/data/data_sources/remote_data_source/get_all_tasks_base_remote_data_source.dart'
    as _i11;
import '../../features/task_management/get_all_tasks/data/data_sources/remote_data_source/get_all_tasks_base_remote_data_source_impl.dart'
    as _i12;
import '../../features/task_management/get_all_tasks/data/repo/get_all_tasks_repo.dart'
    as _i14;
import '../../features/task_management/get_all_tasks/domain/base_repo/get_all_tasks_base_repo.dart'
    as _i13;
import '../../features/task_management/get_all_tasks/domain/use_case/get_all_tasks_use_case.dart'
    as _i15;
import '../../features/task_management/update_task/data/data_sources/remote_data_source/update_new_task_base_remote_data_source.dart'
    as _i18;
import '../../features/task_management/update_task/data/data_sources/remote_data_source/update_new_task_base_remote_data_source_impl.dart'
    as _i19;
import '../../features/task_management/update_task/data/repo/update_new_task_repo.dart'
    as _i29;
import '../../features/task_management/update_task/domain/base_repo/update_task_base_repo.dart'
    as _i28;
import '../../features/task_management/update_task/domain/use_case/update_new_task_use_case.dart'
    as _i30;
import '../infrastructure/local_data_base/base_local_data_base.dart' as _i5;
import '../infrastructure/local_data_base/hive_local_data_base.dart' as _i6;
import '../infrastructure/network/api_consumer.dart' as _i7;
import '../infrastructure/network/app_interceptor.dart' as _i3;
import '../infrastructure/network/dio_consumer.dart' as _i8;
import 'register_module.dart' as _i31;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.factory<_i3.AppInterceptors>(() => _i3.AppInterceptors());
    gh.lazySingleton<_i4.Dio>(() => registerModule.dio);
    gh.lazySingleton<_i5.BaseDatabase>(() => _i6.HiveDatabaseClient());
    gh.lazySingleton<_i7.ApiConsumer>(
        () => _i8.DioConsumer(client: gh<_i4.Dio>()));
    gh.lazySingleton<_i9.LoginBaseRemoteDataSource>(
        () => _i10.LoginRemoteDataSourceImpl(gh<_i7.ApiConsumer>()));
    gh.lazySingleton<_i11.GetAllTasksBaseRemoteDataSource>(
        () => _i12.GetAllTasksBaseRemoteDataSourceImpl(gh<_i7.ApiConsumer>()));
    gh.lazySingleton<_i13.GetAllTasksBaseRepo>(
        () => _i14.GetAllTasksRepo(gh<_i11.GetAllTasksBaseRemoteDataSource>()));
    gh.lazySingleton<_i15.GetAllTasksUseCase>(
        () => _i15.GetAllTasksUseCase(gh<_i13.GetAllTasksBaseRepo>()));
    gh.lazySingleton<_i16.AddNewTaskBaseRemoteDataSource>(
        () => _i17.AddNewTaskBaseRemoteDataSourceImpl(gh<_i7.ApiConsumer>()));
    gh.lazySingleton<_i18.UpdateNewTaskBaseRemoteDataSource>(() =>
        _i19.UpdateNewTaskBaseRemoteDataSourceImpl(gh<_i7.ApiConsumer>()));
    gh.lazySingleton<_i20.LoginBaseRepo>(
        () => _i21.LoginRepo(gh<_i9.LoginBaseRemoteDataSource>()));
    gh.lazySingleton<_i22.AddNewTaskBaseLocalDataSource>(
        () => _i23.AddNewTaskBaseLocalDataSourceImpl(gh<_i5.BaseDatabase>()));
    gh.lazySingleton<_i24.AddNewTaskBaseRepo>(() => _i25.AddNewTaskRepo(
          gh<_i16.AddNewTaskBaseRemoteDataSource>(),
          gh<_i22.AddNewTaskBaseLocalDataSource>(),
        ));
    gh.lazySingleton<_i26.AddNewTaskUseCase>(
        () => _i26.AddNewTaskUseCase(gh<_i24.AddNewTaskBaseRepo>()));
    gh.lazySingleton<_i27.UserLoginUseCase>(
        () => _i27.UserLoginUseCase(gh<_i20.LoginBaseRepo>()));
    gh.lazySingleton<_i28.UpdateTaskBaseRepo>(() =>
        _i29.UpdateNewTaskRepo(gh<_i18.UpdateNewTaskBaseRemoteDataSource>()));
    gh.lazySingleton<_i30.UpdateNewTaskUseCase>(
        () => _i30.UpdateNewTaskUseCase(gh<_i28.UpdateTaskBaseRepo>()));
    return this;
  }
}

class _$RegisterModule extends _i31.RegisterModule {}
