// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:digital_pamphlet/common/di/app_module.dart' as _i9;
import 'package:digital_pamphlet/core/infrastructure/api/rest_client.dart'
    as _i8;
import 'package:digital_pamphlet/core/presentation/bloc/bottom_navigation/bottom_navigation_bloc.dart'
    as _i3;
import 'package:digital_pamphlet/core/presentation/bloc/detail_select/detail_select_bloc.dart'
    as _i4;
import 'package:digital_pamphlet/pamphlet/presentation/bloc/pamphlet_image/pamphlet_image_bloc.dart'
    as _i7;
import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i6;

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
    final appModule = _$AppModule();
    gh.factory<_i3.BottomNavigationBloc>(() => _i3.BottomNavigationBloc());
    gh.factory<_i4.DetailSelectBloc>(() => _i4.DetailSelectBloc());
    gh.lazySingleton<_i5.Dio>(() => appModule.dio);
    gh.lazySingleton<_i6.Logger>(() => appModule.logger);
    gh.factory<_i7.PamphletImageBloc>(() => _i7.PamphletImageBloc());
    gh.lazySingleton<_i8.RestClient>(() => appModule.restClient);
    return this;
  }
}

class _$AppModule extends _i9.AppModule {}
