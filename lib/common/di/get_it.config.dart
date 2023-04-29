// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:digital_pamphlet/booth/presentation/bloc/items_search_bloc.dart'
    as _i6;
import 'package:digital_pamphlet/common/di/app_module.dart' as _i14;
import 'package:digital_pamphlet/core/application/service/ticket_check_service.dart'
    as _i11;
import 'package:digital_pamphlet/core/infrastructure/api/rest_client.dart'
    as _i10;
import 'package:digital_pamphlet/core/infrastructure/service/nfc_service.dart'
    as _i8;
import 'package:digital_pamphlet/core/infrastructure/service/rest_ticket_check_service.dart'
    as _i12;
import 'package:digital_pamphlet/core/presentation/bloc/bottom_navigation/bottom_navigation_bloc.dart'
    as _i3;
import 'package:digital_pamphlet/core/presentation/bloc/detail_select/detail_select_bloc.dart'
    as _i4;
import 'package:digital_pamphlet/core/presentation/bloc/exhibition/exhibition_bloc.dart'
    as _i13;
import 'package:digital_pamphlet/pamphlet/presentation/bloc/pamphlet_image/pamphlet_image_bloc.dart'
    as _i9;
import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i7;

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
    gh.factory<_i6.ItemsSearchBloc>(() => _i6.ItemsSearchBloc());
    gh.lazySingleton<_i7.Logger>(() => appModule.logger);
    gh.singleton<_i8.NfcService>(
      _i8.NfcService(),
      dispose: (i) => i.dispose(),
    );
    gh.factory<_i9.PamphletImageBloc>(() => _i9.PamphletImageBloc());
    gh.lazySingleton<_i10.RestClient>(() => appModule.restClient);
    gh.lazySingleton<_i11.TicketCheckService>(() => _i12.RestTicketCheckService(
          gh<_i10.RestClient>(),
          gh<_i7.Logger>(),
        ));
    gh.factory<_i13.ExhibitionBloc>(
        () => _i13.ExhibitionBloc(gh<_i11.TicketCheckService>()));
    return this;
  }
}

class _$AppModule extends _i14.AppModule {}
