// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'summoner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Summoner _$SummonerFromJson(Map<String, dynamic> json) => Summoner(
      puuid: json['puuid'] as String,
      gameName: json['gameName'] as String,
      tagLine: json['tagLine'] as String,
    );

Map<String, dynamic> _$SummonerToJson(Summoner instance) => <String, dynamic>{
      'puuid': instance.puuid,
      'gameName': instance.gameName,
      'tagLine': instance.tagLine,
    };
