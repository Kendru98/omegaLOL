import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'summoner.freezed.dart';
part 'summoner.g.dart';

@freezed
abstract class Summoner with _$Summoner {
  const factory Summoner({
    required String id,
    required String accountId,
    required String puuid,
    required String name,
    required int profileIconId,
    required int revisionDate,
    required int summonerLevel,
  }) = _Summoner;

  factory Summoner.fromJson(Map<String, dynamic> json) =>
      _$SummonerFromJson(json);
}
