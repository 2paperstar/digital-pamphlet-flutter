part of 'detail_select_bloc.dart';

@freezed
class DetailSelectState with _$DetailSelectState {
  const factory DetailSelectState.unselected({@Default(0) int floor}) =
      _Unselected;

  const factory DetailSelectState.selected({
    required int floor,
    required int booth,
  }) = _Selected;
}
