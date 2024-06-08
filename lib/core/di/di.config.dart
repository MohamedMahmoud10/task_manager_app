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
    as _i7;
import '../../features/authentication/login/data/data_sources/remote_data_source/login_remote_data_source_impl.dart'
    as _i8;
import '../../features/authentication/login/data/repo/login_repo.dart' as _i10;
import '../../features/authentication/login/domain/base_repo/login_base_repo.dart'
    as _i9;
import '../../features/authentication/login/domain/use_case/user_login_use_case.dart'
    as _i11;
import '../infrastructure/network/api_consumer.dart' as _i5;
import '../infrastructure/network/app_interceptor.dart' as _i3;
import '../infrastructure/network/dio_consumer.dart' as _i6;
import 'register_module.dart' as _i12;

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
    gh.lazySingleton<_i5.ApiConsumer>(
        () => _i6.DioConsumer(client: gh<_i4.Dio>()));
    gh.lazySingleton<_i7.LoginBaseRemoteDataSource>(
        () => _i8.LoginRemoteDataSourceImpl(gh<_i5.ApiConsumer>()));
    gh.lazySingleton<_i9.LoginBaseRepo>(
        () => _i10.LoginRepo(gh<_i7.LoginBaseRemoteDataSource>()));
    gh.lazySingleton<_i11.UserLoginUseCase>(
        () => _i11.UserLoginUseCase(gh<_i9.LoginBaseRepo>()));
    return this;
  }
}

class _$RegisterModule extends _i12.RegisterModule {}
