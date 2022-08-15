import 'package:omega_lul/apikey.dart';
import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';

part 'matches_api.g.dart';

@RestApi(baseUrl: "https://europe.api.riotgames.com/lol/match/v5/matches/")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET('by-puuid/{puuid}/ids?start=0&count=20&api_key=${ApiKeys.riotKey}')
  Future<List<String>> getMatchesId(@Path('puuid') String puuid);

  @GET('{matchId}?api_key=${ApiKeys.riotKey}')
  Future<List<String>> getMatchDetails(@Path('matchId') String matchId);
}
