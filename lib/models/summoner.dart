import 'package:json_annotation/json_annotation.dart';

part 'summoner.g.dart';

@JsonSerializable()
class Summoner {
  Summoner({
    required this.puuid,
    required this.gameName,
    required this.tagLine,
  });

  String puuid;
  String gameName;
  String tagLine;

  factory Summoner.fromJson(Map<String, dynamic> json) =>
      _$SummonerFromJson(json);
}
