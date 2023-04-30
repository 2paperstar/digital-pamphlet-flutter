part of 'exhibition_map_bloc.dart';

@freezed
class ExhibitionMapEvent with _$ExhibitionMapEvent {
  const factory ExhibitionMapEvent.load(int id) = _Load;
}
