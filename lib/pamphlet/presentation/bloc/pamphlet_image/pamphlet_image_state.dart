part of 'pamphlet_image_bloc.dart';

@freezed
class PamphletImageState with _$PamphletImageState {
  const factory PamphletImageState.initial() = _Initial;

  const factory PamphletImageState.loading() = _Loading;

  const factory PamphletImageState.loaded(ui.Image image) = _Loaded;
}
