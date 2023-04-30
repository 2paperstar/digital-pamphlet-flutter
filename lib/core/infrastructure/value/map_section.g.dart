// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_section.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MapSection _$$_MapSectionFromJson(Map<String, dynamic> json) =>
    _$_MapSection(
      id: json['id'] as int,
      name: json['name'] as String,
      block: (json['block'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      level: json['level'] as int,
    );

Map<String, dynamic> _$$_MapSectionToJson(_$_MapSection instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'block': instance.block,
      'level': instance.level,
    };
