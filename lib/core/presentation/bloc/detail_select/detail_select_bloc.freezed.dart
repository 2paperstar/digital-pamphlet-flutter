// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_select_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DetailSelectEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int floor) selectFloor,
    required TResult Function(int booth) selectBooth,
    required TResult Function() unselectBooth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int floor)? selectFloor,
    TResult? Function(int booth)? selectBooth,
    TResult? Function()? unselectBooth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int floor)? selectFloor,
    TResult Function(int booth)? selectBooth,
    TResult Function()? unselectBooth,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectFloor value) selectFloor,
    required TResult Function(_SelectBooth value) selectBooth,
    required TResult Function(_UnselectBooth value) unselectBooth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectFloor value)? selectFloor,
    TResult? Function(_SelectBooth value)? selectBooth,
    TResult? Function(_UnselectBooth value)? unselectBooth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectFloor value)? selectFloor,
    TResult Function(_SelectBooth value)? selectBooth,
    TResult Function(_UnselectBooth value)? unselectBooth,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailSelectEventCopyWith<$Res> {
  factory $DetailSelectEventCopyWith(
          DetailSelectEvent value, $Res Function(DetailSelectEvent) then) =
      _$DetailSelectEventCopyWithImpl<$Res, DetailSelectEvent>;
}

/// @nodoc
class _$DetailSelectEventCopyWithImpl<$Res, $Val extends DetailSelectEvent>
    implements $DetailSelectEventCopyWith<$Res> {
  _$DetailSelectEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SelectFloorCopyWith<$Res> {
  factory _$$_SelectFloorCopyWith(
          _$_SelectFloor value, $Res Function(_$_SelectFloor) then) =
      __$$_SelectFloorCopyWithImpl<$Res>;
  @useResult
  $Res call({int floor});
}

/// @nodoc
class __$$_SelectFloorCopyWithImpl<$Res>
    extends _$DetailSelectEventCopyWithImpl<$Res, _$_SelectFloor>
    implements _$$_SelectFloorCopyWith<$Res> {
  __$$_SelectFloorCopyWithImpl(
      _$_SelectFloor _value, $Res Function(_$_SelectFloor) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? floor = null,
  }) {
    return _then(_$_SelectFloor(
      null == floor
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SelectFloor implements _SelectFloor {
  const _$_SelectFloor(this.floor);

  @override
  final int floor;

  @override
  String toString() {
    return 'DetailSelectEvent.selectFloor(floor: $floor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectFloor &&
            (identical(other.floor, floor) || other.floor == floor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, floor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectFloorCopyWith<_$_SelectFloor> get copyWith =>
      __$$_SelectFloorCopyWithImpl<_$_SelectFloor>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int floor) selectFloor,
    required TResult Function(int booth) selectBooth,
    required TResult Function() unselectBooth,
  }) {
    return selectFloor(floor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int floor)? selectFloor,
    TResult? Function(int booth)? selectBooth,
    TResult? Function()? unselectBooth,
  }) {
    return selectFloor?.call(floor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int floor)? selectFloor,
    TResult Function(int booth)? selectBooth,
    TResult Function()? unselectBooth,
    required TResult orElse(),
  }) {
    if (selectFloor != null) {
      return selectFloor(floor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectFloor value) selectFloor,
    required TResult Function(_SelectBooth value) selectBooth,
    required TResult Function(_UnselectBooth value) unselectBooth,
  }) {
    return selectFloor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectFloor value)? selectFloor,
    TResult? Function(_SelectBooth value)? selectBooth,
    TResult? Function(_UnselectBooth value)? unselectBooth,
  }) {
    return selectFloor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectFloor value)? selectFloor,
    TResult Function(_SelectBooth value)? selectBooth,
    TResult Function(_UnselectBooth value)? unselectBooth,
    required TResult orElse(),
  }) {
    if (selectFloor != null) {
      return selectFloor(this);
    }
    return orElse();
  }
}

abstract class _SelectFloor implements DetailSelectEvent {
  const factory _SelectFloor(final int floor) = _$_SelectFloor;

  int get floor;
  @JsonKey(ignore: true)
  _$$_SelectFloorCopyWith<_$_SelectFloor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SelectBoothCopyWith<$Res> {
  factory _$$_SelectBoothCopyWith(
          _$_SelectBooth value, $Res Function(_$_SelectBooth) then) =
      __$$_SelectBoothCopyWithImpl<$Res>;
  @useResult
  $Res call({int booth});
}

/// @nodoc
class __$$_SelectBoothCopyWithImpl<$Res>
    extends _$DetailSelectEventCopyWithImpl<$Res, _$_SelectBooth>
    implements _$$_SelectBoothCopyWith<$Res> {
  __$$_SelectBoothCopyWithImpl(
      _$_SelectBooth _value, $Res Function(_$_SelectBooth) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? booth = null,
  }) {
    return _then(_$_SelectBooth(
      null == booth
          ? _value.booth
          : booth // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SelectBooth implements _SelectBooth {
  const _$_SelectBooth(this.booth);

  @override
  final int booth;

  @override
  String toString() {
    return 'DetailSelectEvent.selectBooth(booth: $booth)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectBooth &&
            (identical(other.booth, booth) || other.booth == booth));
  }

  @override
  int get hashCode => Object.hash(runtimeType, booth);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectBoothCopyWith<_$_SelectBooth> get copyWith =>
      __$$_SelectBoothCopyWithImpl<_$_SelectBooth>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int floor) selectFloor,
    required TResult Function(int booth) selectBooth,
    required TResult Function() unselectBooth,
  }) {
    return selectBooth(booth);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int floor)? selectFloor,
    TResult? Function(int booth)? selectBooth,
    TResult? Function()? unselectBooth,
  }) {
    return selectBooth?.call(booth);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int floor)? selectFloor,
    TResult Function(int booth)? selectBooth,
    TResult Function()? unselectBooth,
    required TResult orElse(),
  }) {
    if (selectBooth != null) {
      return selectBooth(booth);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectFloor value) selectFloor,
    required TResult Function(_SelectBooth value) selectBooth,
    required TResult Function(_UnselectBooth value) unselectBooth,
  }) {
    return selectBooth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectFloor value)? selectFloor,
    TResult? Function(_SelectBooth value)? selectBooth,
    TResult? Function(_UnselectBooth value)? unselectBooth,
  }) {
    return selectBooth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectFloor value)? selectFloor,
    TResult Function(_SelectBooth value)? selectBooth,
    TResult Function(_UnselectBooth value)? unselectBooth,
    required TResult orElse(),
  }) {
    if (selectBooth != null) {
      return selectBooth(this);
    }
    return orElse();
  }
}

abstract class _SelectBooth implements DetailSelectEvent {
  const factory _SelectBooth(final int booth) = _$_SelectBooth;

  int get booth;
  @JsonKey(ignore: true)
  _$$_SelectBoothCopyWith<_$_SelectBooth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UnselectBoothCopyWith<$Res> {
  factory _$$_UnselectBoothCopyWith(
          _$_UnselectBooth value, $Res Function(_$_UnselectBooth) then) =
      __$$_UnselectBoothCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnselectBoothCopyWithImpl<$Res>
    extends _$DetailSelectEventCopyWithImpl<$Res, _$_UnselectBooth>
    implements _$$_UnselectBoothCopyWith<$Res> {
  __$$_UnselectBoothCopyWithImpl(
      _$_UnselectBooth _value, $Res Function(_$_UnselectBooth) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UnselectBooth implements _UnselectBooth {
  const _$_UnselectBooth();

  @override
  String toString() {
    return 'DetailSelectEvent.unselectBooth()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UnselectBooth);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int floor) selectFloor,
    required TResult Function(int booth) selectBooth,
    required TResult Function() unselectBooth,
  }) {
    return unselectBooth();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int floor)? selectFloor,
    TResult? Function(int booth)? selectBooth,
    TResult? Function()? unselectBooth,
  }) {
    return unselectBooth?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int floor)? selectFloor,
    TResult Function(int booth)? selectBooth,
    TResult Function()? unselectBooth,
    required TResult orElse(),
  }) {
    if (unselectBooth != null) {
      return unselectBooth();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectFloor value) selectFloor,
    required TResult Function(_SelectBooth value) selectBooth,
    required TResult Function(_UnselectBooth value) unselectBooth,
  }) {
    return unselectBooth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectFloor value)? selectFloor,
    TResult? Function(_SelectBooth value)? selectBooth,
    TResult? Function(_UnselectBooth value)? unselectBooth,
  }) {
    return unselectBooth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectFloor value)? selectFloor,
    TResult Function(_SelectBooth value)? selectBooth,
    TResult Function(_UnselectBooth value)? unselectBooth,
    required TResult orElse(),
  }) {
    if (unselectBooth != null) {
      return unselectBooth(this);
    }
    return orElse();
  }
}

abstract class _UnselectBooth implements DetailSelectEvent {
  const factory _UnselectBooth() = _$_UnselectBooth;
}

/// @nodoc
mixin _$DetailSelectState {
  int get floor => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int floor) unselected,
    required TResult Function(int floor, int booth) selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int floor)? unselected,
    TResult? Function(int floor, int booth)? selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int floor)? unselected,
    TResult Function(int floor, int booth)? selected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unselected value) unselected,
    required TResult Function(_Selected value) selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unselected value)? unselected,
    TResult? Function(_Selected value)? selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unselected value)? unselected,
    TResult Function(_Selected value)? selected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailSelectStateCopyWith<DetailSelectState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailSelectStateCopyWith<$Res> {
  factory $DetailSelectStateCopyWith(
          DetailSelectState value, $Res Function(DetailSelectState) then) =
      _$DetailSelectStateCopyWithImpl<$Res, DetailSelectState>;
  @useResult
  $Res call({int floor});
}

/// @nodoc
class _$DetailSelectStateCopyWithImpl<$Res, $Val extends DetailSelectState>
    implements $DetailSelectStateCopyWith<$Res> {
  _$DetailSelectStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? floor = null,
  }) {
    return _then(_value.copyWith(
      floor: null == floor
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UnselectedCopyWith<$Res>
    implements $DetailSelectStateCopyWith<$Res> {
  factory _$$_UnselectedCopyWith(
          _$_Unselected value, $Res Function(_$_Unselected) then) =
      __$$_UnselectedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int floor});
}

/// @nodoc
class __$$_UnselectedCopyWithImpl<$Res>
    extends _$DetailSelectStateCopyWithImpl<$Res, _$_Unselected>
    implements _$$_UnselectedCopyWith<$Res> {
  __$$_UnselectedCopyWithImpl(
      _$_Unselected _value, $Res Function(_$_Unselected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? floor = null,
  }) {
    return _then(_$_Unselected(
      floor: null == floor
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Unselected implements _Unselected {
  const _$_Unselected({this.floor = 0});

  @override
  @JsonKey()
  final int floor;

  @override
  String toString() {
    return 'DetailSelectState.unselected(floor: $floor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Unselected &&
            (identical(other.floor, floor) || other.floor == floor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, floor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UnselectedCopyWith<_$_Unselected> get copyWith =>
      __$$_UnselectedCopyWithImpl<_$_Unselected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int floor) unselected,
    required TResult Function(int floor, int booth) selected,
  }) {
    return unselected(floor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int floor)? unselected,
    TResult? Function(int floor, int booth)? selected,
  }) {
    return unselected?.call(floor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int floor)? unselected,
    TResult Function(int floor, int booth)? selected,
    required TResult orElse(),
  }) {
    if (unselected != null) {
      return unselected(floor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unselected value) unselected,
    required TResult Function(_Selected value) selected,
  }) {
    return unselected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unselected value)? unselected,
    TResult? Function(_Selected value)? selected,
  }) {
    return unselected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unselected value)? unselected,
    TResult Function(_Selected value)? selected,
    required TResult orElse(),
  }) {
    if (unselected != null) {
      return unselected(this);
    }
    return orElse();
  }
}

abstract class _Unselected implements DetailSelectState {
  const factory _Unselected({final int floor}) = _$_Unselected;

  @override
  int get floor;
  @override
  @JsonKey(ignore: true)
  _$$_UnselectedCopyWith<_$_Unselected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SelectedCopyWith<$Res>
    implements $DetailSelectStateCopyWith<$Res> {
  factory _$$_SelectedCopyWith(
          _$_Selected value, $Res Function(_$_Selected) then) =
      __$$_SelectedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int floor, int booth});
}

/// @nodoc
class __$$_SelectedCopyWithImpl<$Res>
    extends _$DetailSelectStateCopyWithImpl<$Res, _$_Selected>
    implements _$$_SelectedCopyWith<$Res> {
  __$$_SelectedCopyWithImpl(
      _$_Selected _value, $Res Function(_$_Selected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? floor = null,
    Object? booth = null,
  }) {
    return _then(_$_Selected(
      floor: null == floor
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as int,
      booth: null == booth
          ? _value.booth
          : booth // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Selected implements _Selected {
  const _$_Selected({required this.floor, required this.booth});

  @override
  final int floor;
  @override
  final int booth;

  @override
  String toString() {
    return 'DetailSelectState.selected(floor: $floor, booth: $booth)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Selected &&
            (identical(other.floor, floor) || other.floor == floor) &&
            (identical(other.booth, booth) || other.booth == booth));
  }

  @override
  int get hashCode => Object.hash(runtimeType, floor, booth);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectedCopyWith<_$_Selected> get copyWith =>
      __$$_SelectedCopyWithImpl<_$_Selected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int floor) unselected,
    required TResult Function(int floor, int booth) selected,
  }) {
    return selected(floor, booth);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int floor)? unselected,
    TResult? Function(int floor, int booth)? selected,
  }) {
    return selected?.call(floor, booth);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int floor)? unselected,
    TResult Function(int floor, int booth)? selected,
    required TResult orElse(),
  }) {
    if (selected != null) {
      return selected(floor, booth);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unselected value) unselected,
    required TResult Function(_Selected value) selected,
  }) {
    return selected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unselected value)? unselected,
    TResult? Function(_Selected value)? selected,
  }) {
    return selected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unselected value)? unselected,
    TResult Function(_Selected value)? selected,
    required TResult orElse(),
  }) {
    if (selected != null) {
      return selected(this);
    }
    return orElse();
  }
}

abstract class _Selected implements DetailSelectState {
  const factory _Selected(
      {required final int floor, required final int booth}) = _$_Selected;

  @override
  int get floor;
  int get booth;
  @override
  @JsonKey(ignore: true)
  _$$_SelectedCopyWith<_$_Selected> get copyWith =>
      throw _privateConstructorUsedError;
}
