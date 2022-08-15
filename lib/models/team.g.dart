// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Team _$TeamFromJson(Map<String, dynamic> json) => Team(
      objectives:
          Objectives.fromJson(json['objectives'] as Map<String, dynamic>),
      teamId: json['teamId'] as int,
      win: json['win'] as bool,
    );

Map<String, dynamic> _$TeamToJson(Team instance) => <String, dynamic>{
      'objectives': instance.objectives,
      'teamId': instance.teamId,
      'win': instance.win,
    };
