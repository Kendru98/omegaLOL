// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'style.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Style _$StyleFromJson(Map<String, dynamic> json) => Style(
      description: $enumDecode(_$DescriptionEnumMap, json['description']),
      selections: (json['selections'] as List<dynamic>)
          .map((e) => Selection.fromJson(e as Map<String, dynamic>))
          .toList(),
      style: json['style'] as int,
    );

Map<String, dynamic> _$StyleToJson(Style instance) => <String, dynamic>{
      'description': _$DescriptionEnumMap[instance.description]!,
      'selections': instance.selections,
      'style': instance.style,
    };

const _$DescriptionEnumMap = {
  Description.primarystyle: 'primaryStyle',
  Description.substyle: 'subStyle',
};
