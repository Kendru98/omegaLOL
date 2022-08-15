// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'objectives.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Objectives _$ObjectivesFromJson(Map<String, dynamic> json) => Objectives(
      baron: Baron.fromJson(json['baron'] as Map<String, dynamic>),
      champion: Baron.fromJson(json['champion'] as Map<String, dynamic>),
      dragon: Baron.fromJson(json['dragon'] as Map<String, dynamic>),
      inhibitor: Baron.fromJson(json['inhibitor'] as Map<String, dynamic>),
      riftHerald: Baron.fromJson(json['riftHerald'] as Map<String, dynamic>),
      tower: Baron.fromJson(json['tower'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ObjectivesToJson(Objectives instance) =>
    <String, dynamic>{
      'baron': instance.baron,
      'champion': instance.champion,
      'dragon': instance.dragon,
      'inhibitor': instance.inhibitor,
      'riftHerald': instance.riftHerald,
      'tower': instance.tower,
    };
