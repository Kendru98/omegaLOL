import 'package:omega_lul/models/main_data.dart';
import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';

part 'matches_api.g.dart';

@RestApi(baseUrl: "https://europe.api.riotgames.com/lol/match/v5/matches/")
abstract class MatchesRestClient {
  factory MatchesRestClient(Dio dio, {String baseUrl}) = _MatchesRestClient;

  @GET('by-puuid/{puuid}/ids?start=0&count=5')
  Future<List<String>> getMatchesId(@Path('puuid') String puuid);

  @GET('{matchId}')
  Future<MainData> getMatchDetails(@Path('matchId') String matchId);
}
