import 'package:digital_pamphlet/common/di/get_it.dart';
import 'package:digital_pamphlet/core/application/service/ticket_check_service.dart';
import 'package:digital_pamphlet/core/infrastructure/service/nfc_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'exhibition_bloc.freezed.dart';
part 'exhibition_event.dart';
part 'exhibition_state.dart';

@injectable
class ExhibitionBloc extends Bloc<ExhibitionEvent, ExhibitionState> {
  final TicketCheckService _service;

  ExhibitionBloc(this._service) : super(const ExhibitionState.unselected('')) {
    getIt<NfcService>().exhibitionCodeStream.listen((code) {
      add(ExhibitionEvent.changeCode(code));
      add(const ExhibitionEvent.entrance());
    });

    on<ExhibitionEvent>((event, emit) async {
      await event.when(
        changeCode: (code) async => emit(ExhibitionState.unselected(code)),
        entrance: () async {
          emit(ExhibitionState.validating(state.code));
          try {
            final result = await _service.getTicket(state.code);
            emit(ExhibitionState.selected(result.id, state.code));
          } catch (_) {
            emit(ExhibitionState.unselected(state.code));
          }
        },
      );
    });
  }
}
