// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'summoner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Summoner _$$_SummonerFromJson(Map<String, dynamic> json) => _$_Summoner(
      id: json['id'] as String,
      accountId: json['accountId'] as String,
      puuid: json['puuid'] as String,
      name: json['name'] as String,
      profileIconId: json['profileIconId'] as int,
      revisionDate: json['revisionDate'] as int,
      summonerLevel: json['summonerLevel'] as int,
    );

Map<String, dynamic> _$$_SummonerToJson(_$_Summoner instance) =>
    <String, dynamic>{
      'id': instance.id,
      'accountId': instance.accountId,
      'puuid': instance.puuid,
      'name': instance.name,
      'profileIconId': instance.profileIconId,
      'revisionDate': instance.revisionDate,
      'summonerLevel': instance.summonerLevel,
    };
