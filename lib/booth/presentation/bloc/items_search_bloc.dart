import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:stream_transform/stream_transform.dart';

part 'items_search_bloc.freezed.dart';
part 'items_search_event.dart';
part 'items_search_state.dart';

@injectable
class ItemsSearchBloc extends Bloc<ItemsSearchEvent, ItemsSearchState> {
  ItemsSearchBloc() : super(const ItemsSearchState.receiving('')) {
    on<ItemsSearchEvent>(
      (event, emit) async {
        await event.when(
          changeQuery: (query) async {
            emit(ItemsSearchState.receiving(query));

            await Future.delayed(const Duration(seconds: 1), () {
              emit(ItemsSearchState.searched(query, ['1', '2', '3']));
            });
          },
          clearQuery: () async => emit(const ItemsSearchState.receiving('')),
          search: () async => emit(ItemsSearchState.searching(state.query)),
        );
      },
      transformer: (events, mapper) =>
          events.debounce(const Duration(milliseconds: 300)).switchMap(mapper),
    );
  }
}
