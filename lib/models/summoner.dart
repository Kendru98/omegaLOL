import 'package:json_annotation/json_annotation.dart';

part 'summoner.g.dart';

@JsonSerializable()
class Summoner {
  Summoner({
    required this.puuid,
  });

  String puuid;

  factory Summoner.fromJson(Map<String, dynamic> json) =>
      _$SummonerFromJson(json);
}
