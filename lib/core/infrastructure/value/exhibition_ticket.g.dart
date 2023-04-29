// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exhibition_ticket.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ExhibitionTicket _$$_ExhibitionTicketFromJson(Map<String, dynamic> json) =>
    _$_ExhibitionTicket(
      uuid: json['uuid'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      price: json['price'] as int,
      exhibition:
          Exhibition.fromJson(json['exhibition'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ExhibitionTicketToJson(_$_ExhibitionTicket instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'exhibition': instance.exhibition,
    };
