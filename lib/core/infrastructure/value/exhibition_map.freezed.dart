// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exhibition_map.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExhibitionMap _$ExhibitionMapFromJson(Map<String, dynamic> json) {
  return _ExhibitionMap.fromJson(json);
}

/// @nodoc
mixin _$ExhibitionMap {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<MapSection> get sections => throw _privateConstructorUsedError;
  ImageFile get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExhibitionMapCopyWith<ExhibitionMap> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExhibitionMapCopyWith<$Res> {
  factory $ExhibitionMapCopyWith(
          ExhibitionMap value, $Res Function(ExhibitionMap) then) =
      _$ExhibitionMapCopyWithImpl<$Res, ExhibitionMap>;
  @useResult
  $Res call({int id, String name, List<MapSection> sections, ImageFile image});

  $ImageFileCopyWith<$Res> get image;
}

/// @nodoc
class _$ExhibitionMapCopyWithImpl<$Res, $Val extends ExhibitionMap>
    implements $ExhibitionMapCopyWith<$Res> {
  _$ExhibitionMapCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? sections = null,
    Object? image = null,
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
      sections: null == sections
          ? _value.sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<MapSection>,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageFile,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ImageFileCopyWith<$Res> get image {
    return $ImageFileCopyWith<$Res>(_value.image, (value) {
      return _then(_value.copyWith(image: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ExhibitionMapCopyWith<$Res>
    implements $ExhibitionMapCopyWith<$Res> {
  factory _$$_ExhibitionMapCopyWith(
          _$_ExhibitionMap value, $Res Function(_$_ExhibitionMap) then) =
      __$$_ExhibitionMapCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, List<MapSection> sections, ImageFile image});

  @override
  $ImageFileCopyWith<$Res> get image;
}

/// @nodoc
class __$$_ExhibitionMapCopyWithImpl<$Res>
    extends _$ExhibitionMapCopyWithImpl<$Res, _$_ExhibitionMap>
    implements _$$_ExhibitionMapCopyWith<$Res> {
  __$$_ExhibitionMapCopyWithImpl(
      _$_ExhibitionMap _value, $Res Function(_$_ExhibitionMap) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? sections = null,
    Object? image = null,
  }) {
    return _then(_$_ExhibitionMap(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      sections: null == sections
          ? _value._sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<MapSection>,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageFile,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ExhibitionMap implements _ExhibitionMap {
  const _$_ExhibitionMap(
      {required this.id,
      required this.name,
      required final List<MapSection> sections,
      required this.image})
      : _sections = sections;

  factory _$_ExhibitionMap.fromJson(Map<String, dynamic> json) =>
      _$$_ExhibitionMapFromJson(json);

  @override
  final int id;
  @override
  final String name;
  final List<MapSection> _sections;
  @override
  List<MapSection> get sections {
    if (_sections is EqualUnmodifiableListView) return _sections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sections);
  }

  @override
  final ImageFile image;

  @override
  String toString() {
    return 'ExhibitionMap(id: $id, name: $name, sections: $sections, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExhibitionMap &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._sections, _sections) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name,
      const DeepCollectionEquality().hash(_sections), image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExhibitionMapCopyWith<_$_ExhibitionMap> get copyWith =>
      __$$_ExhibitionMapCopyWithImpl<_$_ExhibitionMap>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExhibitionMapToJson(
      this,
    );
  }
}

abstract class _ExhibitionMap implements ExhibitionMap {
  const factory _ExhibitionMap(
      {required final int id,
      required final String name,
      required final List<MapSection> sections,
      required final ImageFile image}) = _$_ExhibitionMap;

  factory _ExhibitionMap.fromJson(Map<String, dynamic> json) =
      _$_ExhibitionMap.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  List<MapSection> get sections;
  @override
  ImageFile get image;
  @override
  @JsonKey(ignore: true)
  _$$_ExhibitionMapCopyWith<_$_ExhibitionMap> get copyWith =>
      throw _privateConstructorUsedError;
}
