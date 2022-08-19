// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Info _$InfoFromJson(Map<String, dynamic> json) => Info(
      gameCreation: json['gameCreation'] as int,
      gameDuration: json['gameDuration'] as int,
      gameEndTimestamp: json['gameEndTimestamp'] as int,
      gameId: json['gameId'] as int,
      gameMode: json['gameMode'] as String,
      gameName: json['gameName'] as String,
      gameStartTimestamp: json['gameStartTimestamp'] as int,
      gameType: json['gameType'] as String,
      gameVersion: json['gameVersion'] as String,
      mapId: json['mapId'] as int,
      participants: (json['participants'] as List<dynamic>)
          .map((e) => Participant.fromJson(e as Map<String, dynamic>))
          .toList(),
      platformId: json['platformId'] as String,
      queueId: $enumDecode(_$QueueEnumEnumMap, json['queueId']),
      teams: (json['teams'] as List<dynamic>)
          .map((e) => Team.fromJson(e as Map<String, dynamic>))
          .toList(),
      tournamentCode: json['tournamentCode'] as String,
    );

Map<String, dynamic> _$InfoToJson(Info instance) => <String, dynamic>{
      'gameCreation': instance.gameCreation,
      'gameDuration': instance.gameDuration,
      'gameEndTimestamp': instance.gameEndTimestamp,
      'gameId': instance.gameId,
      'gameMode': instance.gameMode,
      'gameName': instance.gameName,
      'gameStartTimestamp': instance.gameStartTimestamp,
      'gameType': instance.gameType,
      'gameVersion': instance.gameVersion,
      'mapId': instance.mapId,
      'participants': instance.participants,
      'platformId': instance.platformId,
      'queueId': _$QueueEnumEnumMap[instance.queueId]!,
      'teams': instance.teams,
      'tournamentCode': instance.tournamentCode,
    };

const _$QueueEnumEnumMap = {
  QueueEnum.normaldraft: 400,
  QueueEnum.ranked: 420,
  QueueEnum.normalblind: 430,
  QueueEnum.rankedflex: 440,
  QueueEnum.aram: 450,
  QueueEnum.clash: 700,
  QueueEnum.introbotgame: 830,
  QueueEnum.beginnerbots: 840,
  QueueEnum.intermediatebots: 850,
  QueueEnum.arurf: 900,
};
