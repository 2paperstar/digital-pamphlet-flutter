part of 'exhibition_bloc.dart';

@freezed
class ExhibitionEvent with _$ExhibitionEvent {
  const factory ExhibitionEvent.changeCode(String code) = _ChangeCode;

  const factory ExhibitionEvent.entrance() = _Entrance;
}
