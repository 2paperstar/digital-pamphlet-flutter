// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exhibition_ticket.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExhibitionTicket _$ExhibitionTicketFromJson(Map<String, dynamic> json) {
  return _ExhibitionTicket.fromJson(json);
}

/// @nodoc
mixin _$ExhibitionTicket {
  String get uuid => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  Exhibition get exhibition => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExhibitionTicketCopyWith<ExhibitionTicket> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExhibitionTicketCopyWith<$Res> {
  factory $ExhibitionTicketCopyWith(
          ExhibitionTicket value, $Res Function(ExhibitionTicket) then) =
      _$ExhibitionTicketCopyWithImpl<$Res, ExhibitionTicket>;
  @useResult
  $Res call(
      {String uuid,
      String name,
      String description,
      int price,
      Exhibition exhibition});

  $ExhibitionCopyWith<$Res> get exhibition;
}

/// @nodoc
class _$ExhibitionTicketCopyWithImpl<$Res, $Val extends ExhibitionTicket>
    implements $ExhibitionTicketCopyWith<$Res> {
  _$ExhibitionTicketCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? name = null,
    Object? description = null,
    Object? price = null,
    Object? exhibition = null,
  }) {
    return _then(_value.copyWith(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      exhibition: null == exhibition
          ? _value.exhibition
          : exhibition // ignore: cast_nullable_to_non_nullable
              as Exhibition,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ExhibitionCopyWith<$Res> get exhibition {
    return $ExhibitionCopyWith<$Res>(_value.exhibition, (value) {
      return _then(_value.copyWith(exhibition: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ExhibitionTicketCopyWith<$Res>
    implements $ExhibitionTicketCopyWith<$Res> {
  factory _$$_ExhibitionTicketCopyWith(
          _$_ExhibitionTicket value, $Res Function(_$_ExhibitionTicket) then) =
      __$$_ExhibitionTicketCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uuid,
      String name,
      String description,
      int price,
      Exhibition exhibition});

  @override
  $ExhibitionCopyWith<$Res> get exhibition;
}

/// @nodoc
class __$$_ExhibitionTicketCopyWithImpl<$Res>
    extends _$ExhibitionTicketCopyWithImpl<$Res, _$_ExhibitionTicket>
    implements _$$_ExhibitionTicketCopyWith<$Res> {
  __$$_ExhibitionTicketCopyWithImpl(
      _$_ExhibitionTicket _value, $Res Function(_$_ExhibitionTicket) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? name = null,
    Object? description = null,
    Object? price = null,
    Object? exhibition = null,
  }) {
    return _then(_$_ExhibitionTicket(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      exhibition: null == exhibition
          ? _value.exhibition
          : exhibition // ignore: cast_nullable_to_non_nullable
              as Exhibition,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ExhibitionTicket implements _ExhibitionTicket {
  const _$_ExhibitionTicket(
      {required this.uuid,
      required this.name,
      required this.description,
      required this.price,
      required this.exhibition});

  factory _$_ExhibitionTicket.fromJson(Map<String, dynamic> json) =>
      _$$_ExhibitionTicketFromJson(json);

  @override
  final String uuid;
  @override
  final String name;
  @override
  final String description;
  @override
  final int price;
  @override
  final Exhibition exhibition;

  @override
  String toString() {
    return 'ExhibitionTicket(uuid: $uuid, name: $name, description: $description, price: $price, exhibition: $exhibition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExhibitionTicket &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.exhibition, exhibition) ||
                other.exhibition == exhibition));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, uuid, name, description, price, exhibition);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExhibitionTicketCopyWith<_$_ExhibitionTicket> get copyWith =>
      __$$_ExhibitionTicketCopyWithImpl<_$_ExhibitionTicket>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExhibitionTicketToJson(
      this,
    );
  }
}

abstract class _ExhibitionTicket implements ExhibitionTicket {
  const factory _ExhibitionTicket(
      {required final String uuid,
      required final String name,
      required final String description,
      required final int price,
      required final Exhibition exhibition}) = _$_ExhibitionTicket;

  factory _ExhibitionTicket.fromJson(Map<String, dynamic> json) =
      _$_ExhibitionTicket.fromJson;

  @override
  String get uuid;
  @override
  String get name;
  @override
  String get description;
  @override
  int get price;
  @override
  Exhibition get exhibition;
  @override
  @JsonKey(ignore: true)
  _$$_ExhibitionTicketCopyWith<_$_ExhibitionTicket> get copyWith =>
      throw _privateConstructorUsedError;
}
