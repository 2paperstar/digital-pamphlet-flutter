import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'detail_select_bloc.freezed.dart';
part 'detail_select_event.dart';
part 'detail_select_state.dart';

@injectable
class DetailSelectBloc extends Bloc<DetailSelectEvent, DetailSelectState> {
  DetailSelectBloc() : super(const DetailSelectState.unselected()) {
    on<DetailSelectEvent>(
      (event, emit) => {
        event.when(
          selectFloor: (floor) =>
              emit(DetailSelectState.unselected(floor: floor)),
          unselectBooth: () => emit(
            state.maybeWhen(
              selected: (floor, _) =>
                  DetailSelectState.unselected(floor: floor),
              orElse: () => state,
            ),
          ),
          selectBooth: (booth) => emit(
            state.maybeWhen(
              unselected: (floor) => DetailSelectState.selected(
                floor: floor,
                booth: booth,
              ),
              selected: (floor, _) =>
                  DetailSelectState.selected(floor: floor, booth: booth),
              orElse: () => state,
            ),
          ),
        ),
      },
    );
  }
}
