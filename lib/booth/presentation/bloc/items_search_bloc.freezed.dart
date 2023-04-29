// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'items_search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ItemsSearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) changeQuery,
    required TResult Function() clearQuery,
    required TResult Function() search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? changeQuery,
    TResult? Function()? clearQuery,
    TResult? Function()? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? changeQuery,
    TResult Function()? clearQuery,
    TResult Function()? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeQuery value) changeQuery,
    required TResult Function(_ClearQuery value) clearQuery,
    required TResult Function(_Search value) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeQuery value)? changeQuery,
    TResult? Function(_ClearQuery value)? clearQuery,
    TResult? Function(_Search value)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeQuery value)? changeQuery,
    TResult Function(_ClearQuery value)? clearQuery,
    TResult Function(_Search value)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemsSearchEventCopyWith<$Res> {
  factory $ItemsSearchEventCopyWith(
          ItemsSearchEvent value, $Res Function(ItemsSearchEvent) then) =
      _$ItemsSearchEventCopyWithImpl<$Res, ItemsSearchEvent>;
}

/// @nodoc
class _$ItemsSearchEventCopyWithImpl<$Res, $Val extends ItemsSearchEvent>
    implements $ItemsSearchEventCopyWith<$Res> {
  _$ItemsSearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ChangeQueryCopyWith<$Res> {
  factory _$$_ChangeQueryCopyWith(
          _$_ChangeQuery value, $Res Function(_$_ChangeQuery) then) =
      __$$_ChangeQueryCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$_ChangeQueryCopyWithImpl<$Res>
    extends _$ItemsSearchEventCopyWithImpl<$Res, _$_ChangeQuery>
    implements _$$_ChangeQueryCopyWith<$Res> {
  __$$_ChangeQueryCopyWithImpl(
      _$_ChangeQuery _value, $Res Function(_$_ChangeQuery) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$_ChangeQuery(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeQuery implements _ChangeQuery {
  const _$_ChangeQuery(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'ItemsSearchEvent.changeQuery(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeQuery &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeQueryCopyWith<_$_ChangeQuery> get copyWith =>
      __$$_ChangeQueryCopyWithImpl<_$_ChangeQuery>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) changeQuery,
    required TResult Function() clearQuery,
    required TResult Function() search,
  }) {
    return changeQuery(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? changeQuery,
    TResult? Function()? clearQuery,
    TResult? Function()? search,
  }) {
    return changeQuery?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? changeQuery,
    TResult Function()? clearQuery,
    TResult Function()? search,
    required TResult orElse(),
  }) {
    if (changeQuery != null) {
      return changeQuery(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeQuery value) changeQuery,
    required TResult Function(_ClearQuery value) clearQuery,
    required TResult Function(_Search value) search,
  }) {
    return changeQuery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeQuery value)? changeQuery,
    TResult? Function(_ClearQuery value)? clearQuery,
    TResult? Function(_Search value)? search,
  }) {
    return changeQuery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeQuery value)? changeQuery,
    TResult Function(_ClearQuery value)? clearQuery,
    TResult Function(_Search value)? search,
    required TResult orElse(),
  }) {
    if (changeQuery != null) {
      return changeQuery(this);
    }
    return orElse();
  }
}

abstract class _ChangeQuery implements ItemsSearchEvent {
  const factory _ChangeQuery(final String query) = _$_ChangeQuery;

  String get query;
  @JsonKey(ignore: true)
  _$$_ChangeQueryCopyWith<_$_ChangeQuery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ClearQueryCopyWith<$Res> {
  factory _$$_ClearQueryCopyWith(
          _$_ClearQuery value, $Res Function(_$_ClearQuery) then) =
      __$$_ClearQueryCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ClearQueryCopyWithImpl<$Res>
    extends _$ItemsSearchEventCopyWithImpl<$Res, _$_ClearQuery>
    implements _$$_ClearQueryCopyWith<$Res> {
  __$$_ClearQueryCopyWithImpl(
      _$_ClearQuery _value, $Res Function(_$_ClearQuery) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ClearQuery implements _ClearQuery {
  const _$_ClearQuery();

  @override
  String toString() {
    return 'ItemsSearchEvent.clearQuery()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ClearQuery);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) changeQuery,
    required TResult Function() clearQuery,
    required TResult Function() search,
  }) {
    return clearQuery();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? changeQuery,
    TResult? Function()? clearQuery,
    TResult? Function()? search,
  }) {
    return clearQuery?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? changeQuery,
    TResult Function()? clearQuery,
    TResult Function()? search,
    required TResult orElse(),
  }) {
    if (clearQuery != null) {
      return clearQuery();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeQuery value) changeQuery,
    required TResult Function(_ClearQuery value) clearQuery,
    required TResult Function(_Search value) search,
  }) {
    return clearQuery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeQuery value)? changeQuery,
    TResult? Function(_ClearQuery value)? clearQuery,
    TResult? Function(_Search value)? search,
  }) {
    return clearQuery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeQuery value)? changeQuery,
    TResult Function(_ClearQuery value)? clearQuery,
    TResult Function(_Search value)? search,
    required TResult orElse(),
  }) {
    if (clearQuery != null) {
      return clearQuery(this);
    }
    return orElse();
  }
}

abstract class _ClearQuery implements ItemsSearchEvent {
  const factory _ClearQuery() = _$_ClearQuery;
}

/// @nodoc
abstract class _$$_SearchCopyWith<$Res> {
  factory _$$_SearchCopyWith(_$_Search value, $Res Function(_$_Search) then) =
      __$$_SearchCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SearchCopyWithImpl<$Res>
    extends _$ItemsSearchEventCopyWithImpl<$Res, _$_Search>
    implements _$$_SearchCopyWith<$Res> {
  __$$_SearchCopyWithImpl(_$_Search _value, $Res Function(_$_Search) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Search implements _Search {
  const _$_Search();

  @override
  String toString() {
    return 'ItemsSearchEvent.search()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Search);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) changeQuery,
    required TResult Function() clearQuery,
    required TResult Function() search,
  }) {
    return search();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? changeQuery,
    TResult? Function()? clearQuery,
    TResult? Function()? search,
  }) {
    return search?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? changeQuery,
    TResult Function()? clearQuery,
    TResult Function()? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeQuery value) changeQuery,
    required TResult Function(_ClearQuery value) clearQuery,
    required TResult Function(_Search value) search,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeQuery value)? changeQuery,
    TResult? Function(_ClearQuery value)? clearQuery,
    TResult? Function(_Search value)? search,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeQuery value)? changeQuery,
    TResult Function(_ClearQuery value)? clearQuery,
    TResult Function(_Search value)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class _Search implements ItemsSearchEvent {
  const factory _Search() = _$_Search;
}

/// @nodoc
mixin _$ItemsSearchState {
  String get query => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) receiving,
    required TResult Function(String query) searching,
    required TResult Function(String query, List<String> data) searched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? receiving,
    TResult? Function(String query)? searching,
    TResult? Function(String query, List<String> data)? searched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? receiving,
    TResult Function(String query)? searching,
    TResult Function(String query, List<String> data)? searched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Receiving value) receiving,
    required TResult Function(_Searching value) searching,
    required TResult Function(_Searched value) searched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Receiving value)? receiving,
    TResult? Function(_Searching value)? searching,
    TResult? Function(_Searched value)? searched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Receiving value)? receiving,
    TResult Function(_Searching value)? searching,
    TResult Function(_Searched value)? searched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ItemsSearchStateCopyWith<ItemsSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemsSearchStateCopyWith<$Res> {
  factory $ItemsSearchStateCopyWith(
          ItemsSearchState value, $Res Function(ItemsSearchState) then) =
      _$ItemsSearchStateCopyWithImpl<$Res, ItemsSearchState>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class _$ItemsSearchStateCopyWithImpl<$Res, $Val extends ItemsSearchState>
    implements $ItemsSearchStateCopyWith<$Res> {
  _$ItemsSearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_value.copyWith(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReceivingCopyWith<$Res>
    implements $ItemsSearchStateCopyWith<$Res> {
  factory _$$_ReceivingCopyWith(
          _$_Receiving value, $Res Function(_$_Receiving) then) =
      __$$_ReceivingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$_ReceivingCopyWithImpl<$Res>
    extends _$ItemsSearchStateCopyWithImpl<$Res, _$_Receiving>
    implements _$$_ReceivingCopyWith<$Res> {
  __$$_ReceivingCopyWithImpl(
      _$_Receiving _value, $Res Function(_$_Receiving) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$_Receiving(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Receiving implements _Receiving {
  const _$_Receiving(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'ItemsSearchState.receiving(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Receiving &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReceivingCopyWith<_$_Receiving> get copyWith =>
      __$$_ReceivingCopyWithImpl<_$_Receiving>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) receiving,
    required TResult Function(String query) searching,
    required TResult Function(String query, List<String> data) searched,
  }) {
    return receiving(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? receiving,
    TResult? Function(String query)? searching,
    TResult? Function(String query, List<String> data)? searched,
  }) {
    return receiving?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? receiving,
    TResult Function(String query)? searching,
    TResult Function(String query, List<String> data)? searched,
    required TResult orElse(),
  }) {
    if (receiving != null) {
      return receiving(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Receiving value) receiving,
    required TResult Function(_Searching value) searching,
    required TResult Function(_Searched value) searched,
  }) {
    return receiving(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Receiving value)? receiving,
    TResult? Function(_Searching value)? searching,
    TResult? Function(_Searched value)? searched,
  }) {
    return receiving?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Receiving value)? receiving,
    TResult Function(_Searching value)? searching,
    TResult Function(_Searched value)? searched,
    required TResult orElse(),
  }) {
    if (receiving != null) {
      return receiving(this);
    }
    return orElse();
  }
}

abstract class _Receiving implements ItemsSearchState {
  const factory _Receiving(final String query) = _$_Receiving;

  @override
  String get query;
  @override
  @JsonKey(ignore: true)
  _$$_ReceivingCopyWith<_$_Receiving> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SearchingCopyWith<$Res>
    implements $ItemsSearchStateCopyWith<$Res> {
  factory _$$_SearchingCopyWith(
          _$_Searching value, $Res Function(_$_Searching) then) =
      __$$_SearchingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$_SearchingCopyWithImpl<$Res>
    extends _$ItemsSearchStateCopyWithImpl<$Res, _$_Searching>
    implements _$$_SearchingCopyWith<$Res> {
  __$$_SearchingCopyWithImpl(
      _$_Searching _value, $Res Function(_$_Searching) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$_Searching(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Searching implements _Searching {
  const _$_Searching(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'ItemsSearchState.searching(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Searching &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchingCopyWith<_$_Searching> get copyWith =>
      __$$_SearchingCopyWithImpl<_$_Searching>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) receiving,
    required TResult Function(String query) searching,
    required TResult Function(String query, List<String> data) searched,
  }) {
    return searching(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? receiving,
    TResult? Function(String query)? searching,
    TResult? Function(String query, List<String> data)? searched,
  }) {
    return searching?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? receiving,
    TResult Function(String query)? searching,
    TResult Function(String query, List<String> data)? searched,
    required TResult orElse(),
  }) {
    if (searching != null) {
      return searching(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Receiving value) receiving,
    required TResult Function(_Searching value) searching,
    required TResult Function(_Searched value) searched,
  }) {
    return searching(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Receiving value)? receiving,
    TResult? Function(_Searching value)? searching,
    TResult? Function(_Searched value)? searched,
  }) {
    return searching?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Receiving value)? receiving,
    TResult Function(_Searching value)? searching,
    TResult Function(_Searched value)? searched,
    required TResult orElse(),
  }) {
    if (searching != null) {
      return searching(this);
    }
    return orElse();
  }
}

abstract class _Searching implements ItemsSearchState {
  const factory _Searching(final String query) = _$_Searching;

  @override
  String get query;
  @override
  @JsonKey(ignore: true)
  _$$_SearchingCopyWith<_$_Searching> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SearchedCopyWith<$Res>
    implements $ItemsSearchStateCopyWith<$Res> {
  factory _$$_SearchedCopyWith(
          _$_Searched value, $Res Function(_$_Searched) then) =
      __$$_SearchedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String query, List<String> data});
}

/// @nodoc
class __$$_SearchedCopyWithImpl<$Res>
    extends _$ItemsSearchStateCopyWithImpl<$Res, _$_Searched>
    implements _$$_SearchedCopyWith<$Res> {
  __$$_SearchedCopyWithImpl(
      _$_Searched _value, $Res Function(_$_Searched) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? data = null,
  }) {
    return _then(_$_Searched(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_Searched implements _Searched {
  const _$_Searched(this.query, final List<String> data) : _data = data;

  @override
  final String query;
  final List<String> _data;
  @override
  List<String> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'ItemsSearchState.searched(query: $query, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Searched &&
            (identical(other.query, query) || other.query == query) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, query, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchedCopyWith<_$_Searched> get copyWith =>
      __$$_SearchedCopyWithImpl<_$_Searched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) receiving,
    required TResult Function(String query) searching,
    required TResult Function(String query, List<String> data) searched,
  }) {
    return searched(query, data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? receiving,
    TResult? Function(String query)? searching,
    TResult? Function(String query, List<String> data)? searched,
  }) {
    return searched?.call(query, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? receiving,
    TResult Function(String query)? searching,
    TResult Function(String query, List<String> data)? searched,
    required TResult orElse(),
  }) {
    if (searched != null) {
      return searched(query, data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Receiving value) receiving,
    required TResult Function(_Searching value) searching,
    required TResult Function(_Searched value) searched,
  }) {
    return searched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Receiving value)? receiving,
    TResult? Function(_Searching value)? searching,
    TResult? Function(_Searched value)? searched,
  }) {
    return searched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Receiving value)? receiving,
    TResult Function(_Searching value)? searching,
    TResult Function(_Searched value)? searched,
    required TResult orElse(),
  }) {
    if (searched != null) {
      return searched(this);
    }
    return orElse();
  }
}

abstract class _Searched implements ItemsSearchState {
  const factory _Searched(final String query, final List<String> data) =
      _$_Searched;

  @override
  String get query;
  List<String> get data;
  @override
  @JsonKey(ignore: true)
  _$$_SearchedCopyWith<_$_Searched> get copyWith =>
      throw _privateConstructorUsedError;
}
