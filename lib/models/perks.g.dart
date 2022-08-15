// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'perks.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Perks _$PerksFromJson(Map<String, dynamic> json) => Perks(
      statPerks: StatPerks.fromJson(json['statPerks'] as Map<String, dynamic>),
      styles: (json['styles'] as List<dynamic>)
          .map((e) => Style.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PerksToJson(Perks instance) => <String, dynamic>{
      'statPerks': instance.statPerks,
      'styles': instance.styles,
    };
