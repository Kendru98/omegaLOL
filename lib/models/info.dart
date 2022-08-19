import 'package:json_annotation/json_annotation.dart';
import 'package:omega_lul/models/participant.dart';
import 'package:omega_lul/models/team.dart';

part 'info.g.dart';

enum QueueEnum {
  @JsonValue(400)
  normaldraft,
  @JsonValue(420)
  ranked,
  @JsonValue(430)
  normalblind,
  @JsonValue(440)
  rankedflex,
  @JsonValue(450)
  aram,
  @JsonValue(700)
  clash,
  @JsonValue(830)
  introbotgame,
  @JsonValue(840)
  beginnerbots,
  @JsonValue(850)
  intermediatebots,
  @JsonValue(900)
  arurf
}

extension ToStringQueue on QueueEnum {
  String queueTranslation() {
    final String enumValue = name;
    if (enumValue == 'normaldraft') {
      return 'Normal Draft';
    } else if (enumValue == 'normalblind') {
      return 'Normal Blind';
    } else if (enumValue == 'rankedflex') {
      return 'Flex';
    } else if (enumValue == 'aram') {
      return 'ARAM';
    } else if (enumValue == 'arurf') {
      return 'ARURF';
    } else if (enumValue == 'ranked') {
      return 'Ranked';
    } else if (enumValue == 'clash') {
      return 'CLASH';
    } else if (enumValue == 'beginnerbots') {
      return 'Bots Beginner';
    } else if (enumValue == 'intermediatebots') {
      return 'Bots Intermediate';
    } else {
      return 'Other';
    }
  }
}

@JsonSerializable()
class Info {
  Info({
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
    required this.tournamentCode,
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
  QueueEnum queueId;
  List<Team> teams;
  String tournamentCode;

  factory Info.fromJson(Map<String, dynamic> json) => _$InfoFromJson(json);
}
