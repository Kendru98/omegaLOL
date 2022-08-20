import 'package:json_annotation/json_annotation.dart';
import 'package:omega_lul/models/perks.dart';

part 'participant.g.dart';

enum Role {
  @JsonValue('SUPPORT')
  support,
  @JsonValue('DUO')
  duo,
  @JsonValue('SOLO')
  solo,
  @JsonValue('NONE')
  none,
  @JsonValue('CARRY')
  carry,
  @JsonValue('TOP')
  top,
}

@JsonSerializable()
class Participant {
  Participant({
    required this.assists,
    required this.baronKills,
    required this.basicPings,
    required this.bountyLevel,
    this.challenges, //asd
    required this.champExperience,
    required this.champLevel,
    required this.championId,
    required this.championName,
    required this.championTransform,
    required this.consumablesPurchased,
    required this.damageDealtToBuildings,
    required this.damageDealtToObjectives,
    required this.damageDealtToTurrets,
    required this.damageSelfMitigated,
    required this.deaths,
    required this.detectorWardsPlaced,
    required this.doubleKills,
    required this.dragonKills,
    required this.eligibleForProgression,
    required this.firstBloodAssist,
    required this.firstBloodKill,
    required this.firstTowerAssist,
    required this.firstTowerKill,
    required this.gameEndedInEarlySurrender,
    required this.gameEndedInSurrender,
    required this.goldEarned,
    required this.goldSpent,
    required this.individualPosition,
    required this.inhibitorKills,
    required this.inhibitorTakedowns,
    required this.inhibitorsLost,
    required this.item0,
    required this.item1,
    required this.item2,
    required this.item3,
    required this.item4,
    required this.item5,
    required this.item6,
    required this.itemsPurchased,
    required this.killingSprees,
    required this.kills,
    required this.lane,
    required this.largestCriticalStrike,
    required this.largestKillingSpree,
    required this.largestMultiKill,
    required this.longestTimeSpentLiving,
    required this.magicDamageDealt,
    required this.magicDamageDealtToChampions,
    required this.magicDamageTaken,
    required this.neutralMinionsKilled,
    required this.nexusKills,
    required this.nexusLost,
    required this.nexusTakedowns,
    required this.objectivesStolen,
    required this.objectivesStolenAssists,
    required this.participantId,
    required this.pentaKills,
    required this.perks,
    required this.physicalDamageDealt,
    required this.physicalDamageDealtToChampions,
    required this.physicalDamageTaken,
    required this.profileIcon,
    required this.puuid,
    required this.quadraKills,
    required this.riotIdName,
    required this.riotIdTagline,
    required this.role,
    required this.sightWardsBoughtInGame,
    required this.spell1Casts,
    required this.spell2Casts,
    required this.spell3Casts,
    required this.spell4Casts,
    required this.summoner1Casts,
    required this.summoner1Id,
    required this.summoner2Casts,
    required this.summoner2Id,
    required this.summonerId,
    required this.summonerLevel,
    required this.summonerName,
    required this.teamEarlySurrendered,
    required this.teamId,
    required this.teamPosition,
    required this.timeCCingOthers,
    required this.timePlayed,
    required this.totalDamageDealt,
    required this.totalDamageDealtToChampions,
    required this.totalDamageShieldedOnTeammates,
    required this.totalDamageTaken,
    required this.totalHeal,
    required this.totalHealsOnTeammates,
    required this.totalMinionsKilled,
    required this.totalTimeCCDealt,
    required this.totalTimeSpentDead,
    required this.totalUnitsHealed,
    required this.tripleKills,
    required this.trueDamageDealt,
    required this.trueDamageDealtToChampions,
    required this.trueDamageTaken,
    required this.turretKills,
    required this.turretTakedowns,
    required this.turretsLost,
    required this.unrealKills,
    required this.visionScore,
    required this.visionWardsBoughtInGame,
    required this.wardsKilled,
    required this.wardsPlaced,
    required this.win,
  });
  int assists;
  int baronKills;
  int basicPings;
  int bountyLevel;
  Map<String, double>? challenges;
  int champExperience;
  int champLevel;
  int championId;
  String championName;
  int championTransform;
  int consumablesPurchased;
  int damageDealtToBuildings;
  int damageDealtToObjectives;
  int damageDealtToTurrets;
  int damageSelfMitigated;
  int deaths;
  int detectorWardsPlaced;
  int doubleKills;
  int dragonKills;
  bool eligibleForProgression;
  bool firstBloodAssist;
  bool firstBloodKill;
  bool firstTowerAssist;
  bool firstTowerKill;
  bool gameEndedInEarlySurrender;
  bool gameEndedInSurrender;
  int goldEarned;
  int goldSpent;
  String individualPosition;
  int inhibitorKills;
  int inhibitorTakedowns;
  int inhibitorsLost;
  int item0;
  int item1;
  int item2;
  int item3;
  int item4;
  int item5;
  int item6;
  int itemsPurchased;
  int killingSprees;
  int kills;
  String lane;
  int largestCriticalStrike;
  int largestKillingSpree;
  int largestMultiKill;
  int longestTimeSpentLiving;
  int magicDamageDealt;
  int magicDamageDealtToChampions;
  int magicDamageTaken;
  int neutralMinionsKilled;
  int nexusKills;
  int nexusLost;
  int nexusTakedowns;
  int objectivesStolen;
  int objectivesStolenAssists;
  int participantId;
  int pentaKills;
  Perks perks;
  int physicalDamageDealt;
  int physicalDamageDealtToChampions;
  int physicalDamageTaken;
  int profileIcon;
  String puuid;
  int quadraKills;
  String riotIdName;
  String riotIdTagline;
  Role role;
  int sightWardsBoughtInGame;
  int spell1Casts;
  int spell2Casts;
  int spell3Casts;
  int spell4Casts;
  int summoner1Casts;
  int summoner1Id;
  int summoner2Casts;
  int summoner2Id;
  String summonerId;
  int summonerLevel;
  String summonerName;
  bool teamEarlySurrendered;
  int teamId;
  String teamPosition;
  int timeCCingOthers;
  int timePlayed;
  int totalDamageDealt;
  int totalDamageDealtToChampions;
  int totalDamageShieldedOnTeammates;
  int totalDamageTaken;
  int totalHeal;
  int totalHealsOnTeammates;
  int totalMinionsKilled;
  int totalTimeCCDealt;
  int totalTimeSpentDead;
  int totalUnitsHealed;
  int tripleKills;
  int trueDamageDealt;
  int trueDamageDealtToChampions;
  int trueDamageTaken;
  int turretKills;
  int turretTakedowns;
  int turretsLost;
  int unrealKills;
  int visionScore;
  int visionWardsBoughtInGame;
  int wardsKilled;
  int wardsPlaced;
  bool win;

  factory Participant.fromJson(Map<String, dynamic> json) =>
      _$ParticipantFromJson(json);
}
