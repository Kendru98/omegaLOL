// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'participant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Participant _$ParticipantFromJson(Map<String, dynamic> json) => Participant(
      assists: json['assists'] as int,
      baronKills: json['baronKills'] as int,
      basicPings: json['basicPings'] as int,
      bountyLevel: json['bountyLevel'] as int,
      challenges: (json['challenges'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
      champExperience: json['champExperience'] as int,
      champLevel: json['champLevel'] as int,
      championId: json['championId'] as int,
      championName: json['championName'] as String,
      championTransform: json['championTransform'] as int,
      consumablesPurchased: json['consumablesPurchased'] as int,
      damageDealtToBuildings: json['damageDealtToBuildings'] as int,
      damageDealtToObjectives: json['damageDealtToObjectives'] as int,
      damageDealtToTurrets: json['damageDealtToTurrets'] as int,
      damageSelfMitigated: json['damageSelfMitigated'] as int,
      deaths: json['deaths'] as int,
      detectorWardsPlaced: json['detectorWardsPlaced'] as int,
      doubleKills: json['doubleKills'] as int,
      dragonKills: json['dragonKills'] as int,
      eligibleForProgression: json['eligibleForProgression'] as bool,
      firstBloodAssist: json['firstBloodAssist'] as bool,
      firstBloodKill: json['firstBloodKill'] as bool,
      firstTowerAssist: json['firstTowerAssist'] as bool,
      firstTowerKill: json['firstTowerKill'] as bool,
      gameEndedInEarlySurrender: json['gameEndedInEarlySurrender'] as bool,
      gameEndedInSurrender: json['gameEndedInSurrender'] as bool,
      goldEarned: json['goldEarned'] as int,
      goldSpent: json['goldSpent'] as int,
      individualPosition: json['individualPosition'] as String,
      inhibitorKills: json['inhibitorKills'] as int,
      inhibitorTakedowns: json['inhibitorTakedowns'] as int,
      inhibitorsLost: json['inhibitorsLost'] as int,
      item0: json['item0'] as int,
      item1: json['item1'] as int,
      item2: json['item2'] as int,
      item3: json['item3'] as int,
      item4: json['item4'] as int,
      item5: json['item5'] as int,
      item6: json['item6'] as int,
      itemsPurchased: json['itemsPurchased'] as int,
      killingSprees: json['killingSprees'] as int,
      kills: json['kills'] as int,
      lane: json['lane'] as String,
      largestCriticalStrike: json['largestCriticalStrike'] as int,
      largestKillingSpree: json['largestKillingSpree'] as int,
      largestMultiKill: json['largestMultiKill'] as int,
      longestTimeSpentLiving: json['longestTimeSpentLiving'] as int,
      magicDamageDealt: json['magicDamageDealt'] as int,
      magicDamageDealtToChampions: json['magicDamageDealtToChampions'] as int,
      magicDamageTaken: json['magicDamageTaken'] as int,
      neutralMinionsKilled: json['neutralMinionsKilled'] as int,
      nexusKills: json['nexusKills'] as int,
      nexusLost: json['nexusLost'] as int,
      nexusTakedowns: json['nexusTakedowns'] as int,
      objectivesStolen: json['objectivesStolen'] as int,
      objectivesStolenAssists: json['objectivesStolenAssists'] as int,
      participantId: json['participantId'] as int,
      pentaKills: json['pentaKills'] as int,
      perks: Perks.fromJson(json['perks'] as Map<String, dynamic>),
      physicalDamageDealt: json['physicalDamageDealt'] as int,
      physicalDamageDealtToChampions:
          json['physicalDamageDealtToChampions'] as int,
      physicalDamageTaken: json['physicalDamageTaken'] as int,
      profileIcon: json['profileIcon'] as int,
      puuid: json['puuid'] as String,
      quadraKills: json['quadraKills'] as int,
      riotIdName: json['riotIdName'] as String,
      riotIdTagline: json['riotIdTagline'] as String,
      role: json['role'] as String,
      sightWardsBoughtInGame: json['sightWardsBoughtInGame'] as int,
      spell1Casts: json['spell1Casts'] as int,
      spell2Casts: json['spell2Casts'] as int,
      spell3Casts: json['spell3Casts'] as int,
      spell4Casts: json['spell4Casts'] as int,
      summoner1Casts: json['summoner1Casts'] as int,
      summoner1Id: json['summoner1Id'] as int,
      summoner2Casts: json['summoner2Casts'] as int,
      summoner2Id: json['summoner2Id'] as int,
      summonerId: json['summonerId'] as String,
      summonerLevel: json['summonerLevel'] as int,
      summonerName: json['summonerName'] as String,
      teamEarlySurrendered: json['teamEarlySurrendered'] as bool,
      teamId: json['teamId'] as int,
      teamPosition: json['teamPosition'] as String,
      timeCCingOthers: json['timeCCingOthers'] as int,
      timePlayed: json['timePlayed'] as int,
      totalDamageDealt: json['totalDamageDealt'] as int,
      totalDamageDealtToChampions: json['totalDamageDealtToChampions'] as int,
      totalDamageShieldedOnTeammates:
          json['totalDamageShieldedOnTeammates'] as int,
      totalDamageTaken: json['totalDamageTaken'] as int,
      totalHeal: json['totalHeal'] as int,
      totalHealsOnTeammates: json['totalHealsOnTeammates'] as int,
      totalMinionsKilled: json['totalMinionsKilled'] as int,
      totalTimeCcDealt: json['totalTimeCcDealt'] as int,
      totalTimeSpentDead: json['totalTimeSpentDead'] as int,
      totalUnitsHealed: json['totalUnitsHealed'] as int,
      tripleKills: json['tripleKills'] as int,
      trueDamageDealt: json['trueDamageDealt'] as int,
      trueDamageDealtToChampions: json['trueDamageDealtToChampions'] as int,
      trueDamageTaken: json['trueDamageTaken'] as int,
      turretKills: json['turretKills'] as int,
      turretTakedowns: json['turretTakedowns'] as int,
      turretsLost: json['turretsLost'] as int,
      unrealKills: json['unrealKills'] as int,
      visionScore: json['visionScore'] as int,
      visionWardsBoughtInGame: json['visionWardsBoughtInGame'] as int,
      wardsKilled: json['wardsKilled'] as int,
      wardsPlaced: json['wardsPlaced'] as int,
      win: json['win'] as bool,
    );

Map<String, dynamic> _$ParticipantToJson(Participant instance) =>
    <String, dynamic>{
      'assists': instance.assists,
      'baronKills': instance.baronKills,
      'basicPings': instance.basicPings,
      'bountyLevel': instance.bountyLevel,
      'challenges': instance.challenges,
      'champExperience': instance.champExperience,
      'champLevel': instance.champLevel,
      'championId': instance.championId,
      'championName': instance.championName,
      'championTransform': instance.championTransform,
      'consumablesPurchased': instance.consumablesPurchased,
      'damageDealtToBuildings': instance.damageDealtToBuildings,
      'damageDealtToObjectives': instance.damageDealtToObjectives,
      'damageDealtToTurrets': instance.damageDealtToTurrets,
      'damageSelfMitigated': instance.damageSelfMitigated,
      'deaths': instance.deaths,
      'detectorWardsPlaced': instance.detectorWardsPlaced,
      'doubleKills': instance.doubleKills,
      'dragonKills': instance.dragonKills,
      'eligibleForProgression': instance.eligibleForProgression,
      'firstBloodAssist': instance.firstBloodAssist,
      'firstBloodKill': instance.firstBloodKill,
      'firstTowerAssist': instance.firstTowerAssist,
      'firstTowerKill': instance.firstTowerKill,
      'gameEndedInEarlySurrender': instance.gameEndedInEarlySurrender,
      'gameEndedInSurrender': instance.gameEndedInSurrender,
      'goldEarned': instance.goldEarned,
      'goldSpent': instance.goldSpent,
      'individualPosition': instance.individualPosition,
      'inhibitorKills': instance.inhibitorKills,
      'inhibitorTakedowns': instance.inhibitorTakedowns,
      'inhibitorsLost': instance.inhibitorsLost,
      'item0': instance.item0,
      'item1': instance.item1,
      'item2': instance.item2,
      'item3': instance.item3,
      'item4': instance.item4,
      'item5': instance.item5,
      'item6': instance.item6,
      'itemsPurchased': instance.itemsPurchased,
      'killingSprees': instance.killingSprees,
      'kills': instance.kills,
      'lane': instance.lane,
      'largestCriticalStrike': instance.largestCriticalStrike,
      'largestKillingSpree': instance.largestKillingSpree,
      'largestMultiKill': instance.largestMultiKill,
      'longestTimeSpentLiving': instance.longestTimeSpentLiving,
      'magicDamageDealt': instance.magicDamageDealt,
      'magicDamageDealtToChampions': instance.magicDamageDealtToChampions,
      'magicDamageTaken': instance.magicDamageTaken,
      'neutralMinionsKilled': instance.neutralMinionsKilled,
      'nexusKills': instance.nexusKills,
      'nexusLost': instance.nexusLost,
      'nexusTakedowns': instance.nexusTakedowns,
      'objectivesStolen': instance.objectivesStolen,
      'objectivesStolenAssists': instance.objectivesStolenAssists,
      'participantId': instance.participantId,
      'pentaKills': instance.pentaKills,
      'perks': instance.perks,
      'physicalDamageDealt': instance.physicalDamageDealt,
      'physicalDamageDealtToChampions': instance.physicalDamageDealtToChampions,
      'physicalDamageTaken': instance.physicalDamageTaken,
      'profileIcon': instance.profileIcon,
      'puuid': instance.puuid,
      'quadraKills': instance.quadraKills,
      'riotIdName': instance.riotIdName,
      'riotIdTagline': instance.riotIdTagline,
      'role': instance.role,
      'sightWardsBoughtInGame': instance.sightWardsBoughtInGame,
      'spell1Casts': instance.spell1Casts,
      'spell2Casts': instance.spell2Casts,
      'spell3Casts': instance.spell3Casts,
      'spell4Casts': instance.spell4Casts,
      'summoner1Casts': instance.summoner1Casts,
      'summoner1Id': instance.summoner1Id,
      'summoner2Casts': instance.summoner2Casts,
      'summoner2Id': instance.summoner2Id,
      'summonerId': instance.summonerId,
      'summonerLevel': instance.summonerLevel,
      'summonerName': instance.summonerName,
      'teamEarlySurrendered': instance.teamEarlySurrendered,
      'teamId': instance.teamId,
      'teamPosition': instance.teamPosition,
      'timeCCingOthers': instance.timeCCingOthers,
      'timePlayed': instance.timePlayed,
      'totalDamageDealt': instance.totalDamageDealt,
      'totalDamageDealtToChampions': instance.totalDamageDealtToChampions,
      'totalDamageShieldedOnTeammates': instance.totalDamageShieldedOnTeammates,
      'totalDamageTaken': instance.totalDamageTaken,
      'totalHeal': instance.totalHeal,
      'totalHealsOnTeammates': instance.totalHealsOnTeammates,
      'totalMinionsKilled': instance.totalMinionsKilled,
      'totalTimeCcDealt': instance.totalTimeCcDealt,
      'totalTimeSpentDead': instance.totalTimeSpentDead,
      'totalUnitsHealed': instance.totalUnitsHealed,
      'tripleKills': instance.tripleKills,
      'trueDamageDealt': instance.trueDamageDealt,
      'trueDamageDealtToChampions': instance.trueDamageDealtToChampions,
      'trueDamageTaken': instance.trueDamageTaken,
      'turretKills': instance.turretKills,
      'turretTakedowns': instance.turretTakedowns,
      'turretsLost': instance.turretsLost,
      'unrealKills': instance.unrealKills,
      'visionScore': instance.visionScore,
      'visionWardsBoughtInGame': instance.visionWardsBoughtInGame,
      'wardsKilled': instance.wardsKilled,
      'wardsPlaced': instance.wardsPlaced,
      'win': instance.win,
    };
