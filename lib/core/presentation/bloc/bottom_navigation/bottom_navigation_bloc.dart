import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'bottom_navigation_items.dart';

part 'bottom_navigation_bloc.freezed.dart';
part 'bottom_navigation_event.dart';
part 'bottom_navigation_state.dart';

@injectable
class BottomNavigationBloc
    extends Bloc<BottomNavigationEvent, BottomNavigationState> {
  BottomNavigationBloc()
      : super(
            const BottomNavigationState.selected(BottomNavigationItems.venue)) {
    on<BottomNavigationEvent>((event, emit) {
      emit(BottomNavigationState.selected(event.item));
    });
  }
}
