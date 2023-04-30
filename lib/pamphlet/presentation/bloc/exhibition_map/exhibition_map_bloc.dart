import 'package:digital_pamphlet/core/infrastructure/value/exhibition_map.dart';
import 'package:digital_pamphlet/pamphlet/application/service/fetch_exhibition_map_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'exhibition_map_bloc.freezed.dart';
part 'exhibition_map_event.dart';
part 'exhibition_map_state.dart';

@injectable
class ExhibitionMapBloc extends Bloc<ExhibitionMapEvent, ExhibitionMapState> {
  final FetchExhibitionMapService _service;

  ExhibitionMapBloc(this._service) : super(const ExhibitionMapState.initial()) {
    on<ExhibitionMapEvent>((event, emit) async {
      await event.when(load: (id) async {
        emit(const ExhibitionMapState.loading());
        try {
          final result = await _service.fetch(id);
          emit(ExhibitionMapState.loaded(result));
        } catch (_) {
          emit(const ExhibitionMapState.initial());
        }
      });
    });
  }
}
