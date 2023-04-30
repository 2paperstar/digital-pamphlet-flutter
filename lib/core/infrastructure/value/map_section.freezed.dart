// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_section.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MapSection _$MapSectionFromJson(Map<String, dynamic> json) {
  return _MapSection.fromJson(json);
}

/// @nodoc
mixin _$MapSection {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<int> get block => throw _privateConstructorUsedError;
  int get level => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MapSectionCopyWith<MapSection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapSectionCopyWith<$Res> {
  factory $MapSectionCopyWith(
          MapSection value, $Res Function(MapSection) then) =
      _$MapSectionCopyWithImpl<$Res, MapSection>;
  @useResult
  $Res call({int id, String name, List<int> block, int level});
}

/// @nodoc
class _$MapSectionCopyWithImpl<$Res, $Val extends MapSection>
    implements $MapSectionCopyWith<$Res> {
  _$MapSectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? block = null,
    Object? level = null,
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
      block: null == block
          ? _value.block
          : block // ignore: cast_nullable_to_non_nullable
              as List<int>,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MapSectionCopyWith<$Res>
    implements $MapSectionCopyWith<$Res> {
  factory _$$_MapSectionCopyWith(
          _$_MapSection value, $Res Function(_$_MapSection) then) =
      __$$_MapSectionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, List<int> block, int level});
}

/// @nodoc
class __$$_MapSectionCopyWithImpl<$Res>
    extends _$MapSectionCopyWithImpl<$Res, _$_MapSection>
    implements _$$_MapSectionCopyWith<$Res> {
  __$$_MapSectionCopyWithImpl(
      _$_MapSection _value, $Res Function(_$_MapSection) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? block = null,
    Object? level = null,
  }) {
    return _then(_$_MapSection(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      block: null == block
          ? _value._block
          : block // ignore: cast_nullable_to_non_nullable
              as List<int>,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MapSection implements _MapSection {
  const _$_MapSection(
      {required this.id,
      required this.name,
      required final List<int> block,
      required this.level})
      : _block = block;

  factory _$_MapSection.fromJson(Map<String, dynamic> json) =>
      _$$_MapSectionFromJson(json);

  @override
  final int id;
  @override
  final String name;
  final List<int> _block;
  @override
  List<int> get block {
    if (_block is EqualUnmodifiableListView) return _block;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_block);
  }

  @override
  final int level;

  @override
  String toString() {
    return 'MapSection(id: $id, name: $name, block: $block, level: $level)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MapSection &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._block, _block) &&
            (identical(other.level, level) || other.level == level));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name,
      const DeepCollectionEquality().hash(_block), level);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MapSectionCopyWith<_$_MapSection> get copyWith =>
      __$$_MapSectionCopyWithImpl<_$_MapSection>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MapSectionToJson(
      this,
    );
  }
}

abstract class _MapSection implements MapSection {
  const factory _MapSection(
      {required final int id,
      required final String name,
      required final List<int> block,
      required final int level}) = _$_MapSection;

  factory _MapSection.fromJson(Map<String, dynamic> json) =
      _$_MapSection.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  List<int> get block;
  @override
  int get level;
  @override
  @JsonKey(ignore: true)
  _$$_MapSectionCopyWith<_$_MapSection> get copyWith =>
      throw _privateConstructorUsedError;
}
