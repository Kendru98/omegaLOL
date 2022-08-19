// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rune_main.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RuneMain _$RuneMainFromJson(Map<String, dynamic> json) => RuneMain(
      id: json['id'] as int,
      key: json['key'] as String,
      icon: json['icon'] as String,
      name: json['name'] as String,
      slots: (json['slots'] as List<dynamic>)
          .map((e) => Slot.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RuneMainToJson(RuneMain instance) => <String, dynamic>{
      'id': instance.id,
      'key': instance.key,
      'icon': instance.icon,
      'name': instance.name,
      'slots': instance.slots,
    };
