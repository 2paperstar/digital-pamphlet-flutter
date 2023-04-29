import 'dart:async';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'pamphlet_image_bloc.freezed.dart';
part 'pamphlet_image_event.dart';
part 'pamphlet_image_state.dart';

@injectable
class PamphletImageBloc extends Bloc<PamphletImageEvent, PamphletImageState> {
  PamphletImageBloc() : super(const PamphletImageState.initial()) {
    on<PamphletImageEvent>((event, emit) async {
      await event.when(
        loadNetworkImage: (imageUrl) async {
          emit(const PamphletImageState.loading());
          final completer = Completer<ImageInfo>();
          final image = NetworkImage(imageUrl);
          image.resolve(const ImageConfiguration()).addListener(
            ImageStreamListener(
              (info, _) {
                completer.complete(info);
              },
            ),
          );
          emit(PamphletImageState.loaded((await completer.future).image));
        },
      );
    });
  }
}
