// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rune.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Rune _$RuneFromJson(Map<String, dynamic> json) => Rune(
      id: json['id'] as int,
      key: json['key'] as String,
      icon: json['icon'] as String,
      name: json['name'] as String,
      shortDesc: json['shortDesc'] as String,
      longDesc: json['longDesc'] as String,
    );

Map<String, dynamic> _$RuneToJson(Rune instance) => <String, dynamic>{
      'id': instance.id,
      'key': instance.key,
      'icon': instance.icon,
      'name': instance.name,
      'shortDesc': instance.shortDesc,
      'longDesc': instance.longDesc,
    };
