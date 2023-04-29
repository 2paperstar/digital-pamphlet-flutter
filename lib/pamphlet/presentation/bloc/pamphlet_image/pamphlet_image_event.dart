part of 'pamphlet_image_bloc.dart';

@freezed
class PamphletImageEvent with _$PamphletImageEvent {
  const factory PamphletImageEvent.loadNetworkImage(String imageUrl) = _Load;
}
