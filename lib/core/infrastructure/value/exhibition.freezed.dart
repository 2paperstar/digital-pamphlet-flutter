// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exhibition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Exhibition _$ExhibitionFromJson(Map<String, dynamic> json) {
  return _Exhibition.fromJson(json);
}

/// @nodoc
mixin _$Exhibition {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExhibitionCopyWith<Exhibition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExhibitionCopyWith<$Res> {
  factory $ExhibitionCopyWith(
          Exhibition value, $Res Function(Exhibition) then) =
      _$ExhibitionCopyWithImpl<$Res, Exhibition>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$ExhibitionCopyWithImpl<$Res, $Val extends Exhibition>
    implements $ExhibitionCopyWith<$Res> {
  _$ExhibitionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ExhibitionCopyWith<$Res>
    implements $ExhibitionCopyWith<$Res> {
  factory _$$_ExhibitionCopyWith(
          _$_Exhibition value, $Res Function(_$_Exhibition) then) =
      __$$_ExhibitionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$_ExhibitionCopyWithImpl<$Res>
    extends _$ExhibitionCopyWithImpl<$Res, _$_Exhibition>
    implements _$$_ExhibitionCopyWith<$Res> {
  __$$_ExhibitionCopyWithImpl(
      _$_Exhibition _value, $Res Function(_$_Exhibition) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$_Exhibition(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Exhibition implements _Exhibition {
  const _$_Exhibition({required this.id, required this.name});

  factory _$_Exhibition.fromJson(Map<String, dynamic> json) =>
      _$$_ExhibitionFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'Exhibition(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Exhibition &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExhibitionCopyWith<_$_Exhibition> get copyWith =>
      __$$_ExhibitionCopyWithImpl<_$_Exhibition>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExhibitionToJson(
      this,
    );
  }
}

abstract class _Exhibition implements Exhibition {
  const factory _Exhibition(
      {required final int id, required final String name}) = _$_Exhibition;

  factory _Exhibition.fromJson(Map<String, dynamic> json) =
      _$_Exhibition.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_ExhibitionCopyWith<_$_Exhibition> get copyWith =>
      throw _privateConstructorUsedError;
}
