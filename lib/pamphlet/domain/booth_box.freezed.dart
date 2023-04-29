// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booth_box.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BoothBox {
  double get left => throw _privateConstructorUsedError;
  double get top => throw _privateConstructorUsedError;
  double get width => throw _privateConstructorUsedError;
  double get height => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BoothBoxCopyWith<BoothBox> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoothBoxCopyWith<$Res> {
  factory $BoothBoxCopyWith(BoothBox value, $Res Function(BoothBox) then) =
      _$BoothBoxCopyWithImpl<$Res, BoothBox>;
  @useResult
  $Res call(
      {double left, double top, double width, double height, String text});
}

/// @nodoc
class _$BoothBoxCopyWithImpl<$Res, $Val extends BoothBox>
    implements $BoothBoxCopyWith<$Res> {
  _$BoothBoxCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? left = null,
    Object? top = null,
    Object? width = null,
    Object? height = null,
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      left: null == left
          ? _value.left
          : left // ignore: cast_nullable_to_non_nullable
              as double,
      top: null == top
          ? _value.top
          : top // ignore: cast_nullable_to_non_nullable
              as double,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BoothBoxCopyWith<$Res> implements $BoothBoxCopyWith<$Res> {
  factory _$$_BoothBoxCopyWith(
          _$_BoothBox value, $Res Function(_$_BoothBox) then) =
      __$$_BoothBoxCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double left, double top, double width, double height, String text});
}

/// @nodoc
class __$$_BoothBoxCopyWithImpl<$Res>
    extends _$BoothBoxCopyWithImpl<$Res, _$_BoothBox>
    implements _$$_BoothBoxCopyWith<$Res> {
  __$$_BoothBoxCopyWithImpl(
      _$_BoothBox _value, $Res Function(_$_BoothBox) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? left = null,
    Object? top = null,
    Object? width = null,
    Object? height = null,
    Object? text = null,
  }) {
    return _then(_$_BoothBox(
      left: null == left
          ? _value.left
          : left // ignore: cast_nullable_to_non_nullable
              as double,
      top: null == top
          ? _value.top
          : top // ignore: cast_nullable_to_non_nullable
              as double,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_BoothBox extends _BoothBox {
  const _$_BoothBox(
      {required this.left,
      required this.top,
      required this.width,
      required this.height,
      required this.text})
      : super._();

  @override
  final double left;
  @override
  final double top;
  @override
  final double width;
  @override
  final double height;
  @override
  final String text;

  @override
  String toString() {
    return 'BoothBox(left: $left, top: $top, width: $width, height: $height, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BoothBox &&
            (identical(other.left, left) || other.left == left) &&
            (identical(other.top, top) || other.top == top) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, left, top, width, height, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BoothBoxCopyWith<_$_BoothBox> get copyWith =>
      __$$_BoothBoxCopyWithImpl<_$_BoothBox>(this, _$identity);
}

abstract class _BoothBox extends BoothBox {
  const factory _BoothBox(
      {required final double left,
      required final double top,
      required final double width,
      required final double height,
      required final String text}) = _$_BoothBox;
  const _BoothBox._() : super._();

  @override
  double get left;
  @override
  double get top;
  @override
  double get width;
  @override
  double get height;
  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$_BoothBoxCopyWith<_$_BoothBox> get copyWith =>
      throw _privateConstructorUsedError;
}
