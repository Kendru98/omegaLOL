import 'package:omega_lul/apikey.dart';
import 'package:omega_lul/models/summoner.dart';
import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';

part 'user_api.g.dart';

@RestApi(baseUrl: "https://europe.api.riotgames.com/riot/account/v1/accounts/")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET('by-riot-id/{username}/{server}?api_key=${ApiKeys.riotKey}')
  Future<Summoner> getUserUid(
      @Path('username') String username, @Path('server') String server);

  // @GET('{matchId}')
  // Future getMatchById(@Path('matchId') String matchId);
}
