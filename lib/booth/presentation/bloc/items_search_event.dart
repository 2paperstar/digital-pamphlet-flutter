part of 'items_search_bloc.dart';

@freezed
class ItemsSearchEvent with _$ItemsSearchEvent {
  const factory ItemsSearchEvent.changeQuery(String query) = _ChangeQuery;

  const factory ItemsSearchEvent.clearQuery() = _ClearQuery;

  const factory ItemsSearchEvent.search() = _Search;
}
