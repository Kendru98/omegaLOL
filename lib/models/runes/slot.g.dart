// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Slot _$SlotFromJson(Map<String, dynamic> json) => Slot(
      runes: (json['runes'] as List<dynamic>)
          .map((e) => Rune.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SlotToJson(Slot instance) => <String, dynamic>{
      'runes': instance.runes,
    };
