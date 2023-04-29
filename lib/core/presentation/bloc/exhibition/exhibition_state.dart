part of 'exhibition_bloc.dart';

@freezed
class ExhibitionState with _$ExhibitionState {
  const factory ExhibitionState.unselected(String code) = _Unselected;

  const factory ExhibitionState.validating(String code) = _Validating;

  const factory ExhibitionState.selected(int exhibitionId, String code) =
      _Selected;
}
