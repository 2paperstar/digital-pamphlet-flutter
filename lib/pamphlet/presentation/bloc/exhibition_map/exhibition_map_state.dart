part of 'exhibition_map_bloc.dart';

@freezed
class ExhibitionMapState with _$ExhibitionMapState {
  const factory ExhibitionMapState.initial() = _Initial;

  const factory ExhibitionMapState.loading() = _Loading;

  const factory ExhibitionMapState.loaded(
    List<ExhibitionMap> maps,
  ) = _Loaded;
}
