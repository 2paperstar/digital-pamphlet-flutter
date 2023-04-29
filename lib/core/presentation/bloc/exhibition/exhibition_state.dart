part of 'exhibition_bloc.dart';

@freezed
class ExhibitionState with _$ExhibitionState {
  const factory ExhibitionState.unselected(String code) = _Unselected;

  const factory ExhibitionState.selected(String code) = _Selected;
}
