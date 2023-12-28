// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i8;

import '../shared/login/data/data_sources/remote/login_base_remote_data_source.dart'
    as _i4;
import '../shared/login/data/data_sources/remote/login_remote_data_source_impl.dart'
    as _i5;
import '../shared/login/domain/base_repo/login_base_repo.dart' as _i7;
import '../shared/login/domain/use_case/login_use_case.dart' as _i6;
import 'register_module.dart' as _i9;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i3.Dio>(() => registerModule.dio);
    gh.lazySingleton<_i4.LoginBaseRemoteDataSource>(
        () => _i5.LoginRemoteDataSourceImpl());
    gh.lazySingleton<_i6.LoginUseCase>(
        () => _i6.LoginUseCase(baseRepo: gh<_i7.LoginBaseRepo>()));
    await gh.factoryAsync<_i8.SharedPreferences>(
      () => registerModule.prefs,
      preResolve: true,
    );
    return this;
  }
}

class _$RegisterModule extends _i9.RegisterModule {}
