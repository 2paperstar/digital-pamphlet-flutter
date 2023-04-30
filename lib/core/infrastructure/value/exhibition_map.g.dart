// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exhibition_map.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ExhibitionMap _$$_ExhibitionMapFromJson(Map<String, dynamic> json) =>
    _$_ExhibitionMap(
      id: json['id'] as int,
      name: json['name'] as String,
      sections: (json['sections'] as List<dynamic>)
          .map((e) => MapSection.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ExhibitionMapToJson(_$_ExhibitionMap instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'sections': instance.sections,
    };
