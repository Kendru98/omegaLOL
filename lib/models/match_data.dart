import 'package:json_annotation/json_annotation.dart';
import 'package:omega_lul/models/participant.dart';
import 'package:omega_lul/models/team.dart';

part 'match_data.g.dart';

@JsonSerializable()
class MatchData {
  MatchData({
    required this.gameCreation,
    required this.gameDuration,
    required this.gameEndTimestamp,
    required this.gameId,
    required this.gameMode,
    required this.gameName,
    required this.gameStartTimestamp,
    required this.gameType,
    required this.gameVersion,
    required this.mapId,
    required this.participants,
    required this.platformId,
    required this.queueId,
    required this.teams,
  });

  int gameCreation;
  int gameDuration;
  int gameEndTimestamp;
  int gameId;
  String gameMode;
  String gameName;
  int gameStartTimestamp;
  String gameType;
  String gameVersion;
  int mapId;
  List<Participant> participants;
  String platformId;
  int queueId;
  List<Team> teams;

  factory MatchData.fromJson(Map<String, dynamic> json) =>
      _$MatchDataFromJson(json);
}
