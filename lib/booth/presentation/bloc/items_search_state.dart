part of 'items_search_bloc.dart';

@freezed
class ItemsSearchState with _$ItemsSearchState {
  const factory ItemsSearchState.receiving(String query) = _Receiving;
  const factory ItemsSearchState.searching(String query) = _Searching;
  const factory ItemsSearchState.searched(String query, List<String> data) =
      _Searched;
}
