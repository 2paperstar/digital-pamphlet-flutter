// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exhibition_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExhibitionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code) changeCode,
    required TResult Function() entrance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code)? changeCode,
    TResult? Function()? entrance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code)? changeCode,
    TResult Function()? entrance,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeCode value) changeCode,
    required TResult Function(_Entrance value) entrance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeCode value)? changeCode,
    TResult? Function(_Entrance value)? entrance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeCode value)? changeCode,
    TResult Function(_Entrance value)? entrance,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExhibitionEventCopyWith<$Res> {
  factory $ExhibitionEventCopyWith(
          ExhibitionEvent value, $Res Function(ExhibitionEvent) then) =
      _$ExhibitionEventCopyWithImpl<$Res, ExhibitionEvent>;
}

/// @nodoc
class _$ExhibitionEventCopyWithImpl<$Res, $Val extends ExhibitionEvent>
    implements $ExhibitionEventCopyWith<$Res> {
  _$ExhibitionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ChangeCodeCopyWith<$Res> {
  factory _$$_ChangeCodeCopyWith(
          _$_ChangeCode value, $Res Function(_$_ChangeCode) then) =
      __$$_ChangeCodeCopyWithImpl<$Res>;
  @useResult
  $Res call({String code});
}

/// @nodoc
class __$$_ChangeCodeCopyWithImpl<$Res>
    extends _$ExhibitionEventCopyWithImpl<$Res, _$_ChangeCode>
    implements _$$_ChangeCodeCopyWith<$Res> {
  __$$_ChangeCodeCopyWithImpl(
      _$_ChangeCode _value, $Res Function(_$_ChangeCode) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$_ChangeCode(
      null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeCode implements _ChangeCode {
  const _$_ChangeCode(this.code);

  @override
  final String code;

  @override
  String toString() {
    return 'ExhibitionEvent.changeCode(code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeCode &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeCodeCopyWith<_$_ChangeCode> get copyWith =>
      __$$_ChangeCodeCopyWithImpl<_$_ChangeCode>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code) changeCode,
    required TResult Function() entrance,
  }) {
    return changeCode(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code)? changeCode,
    TResult? Function()? entrance,
  }) {
    return changeCode?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code)? changeCode,
    TResult Function()? entrance,
    required TResult orElse(),
  }) {
    if (changeCode != null) {
      return changeCode(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeCode value) changeCode,
    required TResult Function(_Entrance value) entrance,
  }) {
    return changeCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeCode value)? changeCode,
    TResult? Function(_Entrance value)? entrance,
  }) {
    return changeCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeCode value)? changeCode,
    TResult Function(_Entrance value)? entrance,
    required TResult orElse(),
  }) {
    if (changeCode != null) {
      return changeCode(this);
    }
    return orElse();
  }
}

abstract class _ChangeCode implements ExhibitionEvent {
  const factory _ChangeCode(final String code) = _$_ChangeCode;

  String get code;
  @JsonKey(ignore: true)
  _$$_ChangeCodeCopyWith<_$_ChangeCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EntranceCopyWith<$Res> {
  factory _$$_EntranceCopyWith(
          _$_Entrance value, $Res Function(_$_Entrance) then) =
      __$$_EntranceCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EntranceCopyWithImpl<$Res>
    extends _$ExhibitionEventCopyWithImpl<$Res, _$_Entrance>
    implements _$$_EntranceCopyWith<$Res> {
  __$$_EntranceCopyWithImpl(
      _$_Entrance _value, $Res Function(_$_Entrance) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Entrance implements _Entrance {
  const _$_Entrance();

  @override
  String toString() {
    return 'ExhibitionEvent.entrance()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Entrance);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code) changeCode,
    required TResult Function() entrance,
  }) {
    return entrance();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code)? changeCode,
    TResult? Function()? entrance,
  }) {
    return entrance?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code)? changeCode,
    TResult Function()? entrance,
    required TResult orElse(),
  }) {
    if (entrance != null) {
      return entrance();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeCode value) changeCode,
    required TResult Function(_Entrance value) entrance,
  }) {
    return entrance(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeCode value)? changeCode,
    TResult? Function(_Entrance value)? entrance,
  }) {
    return entrance?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeCode value)? changeCode,
    TResult Function(_Entrance value)? entrance,
    required TResult orElse(),
  }) {
    if (entrance != null) {
      return entrance(this);
    }
    return orElse();
  }
}

abstract class _Entrance implements ExhibitionEvent {
  const factory _Entrance() = _$_Entrance;
}

/// @nodoc
mixin _$ExhibitionState {
  String get code => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code) unselected,
    required TResult Function(String code) selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code)? unselected,
    TResult? Function(String code)? selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code)? unselected,
    TResult Function(String code)? selected,
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
  $ExhibitionStateCopyWith<ExhibitionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExhibitionStateCopyWith<$Res> {
  factory $ExhibitionStateCopyWith(
          ExhibitionState value, $Res Function(ExhibitionState) then) =
      _$ExhibitionStateCopyWithImpl<$Res, ExhibitionState>;
  @useResult
  $Res call({String code});
}

/// @nodoc
class _$ExhibitionStateCopyWithImpl<$Res, $Val extends ExhibitionState>
    implements $ExhibitionStateCopyWith<$Res> {
  _$ExhibitionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UnselectedCopyWith<$Res>
    implements $ExhibitionStateCopyWith<$Res> {
  factory _$$_UnselectedCopyWith(
          _$_Unselected value, $Res Function(_$_Unselected) then) =
      __$$_UnselectedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code});
}

/// @nodoc
class __$$_UnselectedCopyWithImpl<$Res>
    extends _$ExhibitionStateCopyWithImpl<$Res, _$_Unselected>
    implements _$$_UnselectedCopyWith<$Res> {
  __$$_UnselectedCopyWithImpl(
      _$_Unselected _value, $Res Function(_$_Unselected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$_Unselected(
      null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Unselected implements _Unselected {
  const _$_Unselected(this.code);

  @override
  final String code;

  @override
  String toString() {
    return 'ExhibitionState.unselected(code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Unselected &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UnselectedCopyWith<_$_Unselected> get copyWith =>
      __$$_UnselectedCopyWithImpl<_$_Unselected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code) unselected,
    required TResult Function(String code) selected,
  }) {
    return unselected(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code)? unselected,
    TResult? Function(String code)? selected,
  }) {
    return unselected?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code)? unselected,
    TResult Function(String code)? selected,
    required TResult orElse(),
  }) {
    if (unselected != null) {
      return unselected(code);
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

abstract class _Unselected implements ExhibitionState {
  const factory _Unselected(final String code) = _$_Unselected;

  @override
  String get code;
  @override
  @JsonKey(ignore: true)
  _$$_UnselectedCopyWith<_$_Unselected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SelectedCopyWith<$Res>
    implements $ExhibitionStateCopyWith<$Res> {
  factory _$$_SelectedCopyWith(
          _$_Selected value, $Res Function(_$_Selected) then) =
      __$$_SelectedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code});
}

/// @nodoc
class __$$_SelectedCopyWithImpl<$Res>
    extends _$ExhibitionStateCopyWithImpl<$Res, _$_Selected>
    implements _$$_SelectedCopyWith<$Res> {
  __$$_SelectedCopyWithImpl(
      _$_Selected _value, $Res Function(_$_Selected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$_Selected(
      null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Selected implements _Selected {
  const _$_Selected(this.code);

  @override
  final String code;

  @override
  String toString() {
    return 'ExhibitionState.selected(code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Selected &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectedCopyWith<_$_Selected> get copyWith =>
      __$$_SelectedCopyWithImpl<_$_Selected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code) unselected,
    required TResult Function(String code) selected,
  }) {
    return selected(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code)? unselected,
    TResult? Function(String code)? selected,
  }) {
    return selected?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code)? unselected,
    TResult Function(String code)? selected,
    required TResult orElse(),
  }) {
    if (selected != null) {
      return selected(code);
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

abstract class _Selected implements ExhibitionState {
  const factory _Selected(final String code) = _$_Selected;

  @override
  String get code;
  @override
  @JsonKey(ignore: true)
  _$$_SelectedCopyWith<_$_Selected> get copyWith =>
      throw _privateConstructorUsedError;
}
