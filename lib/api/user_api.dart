import 'package:omega_lul/models/summoner.dart';
import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';

part 'user_api.g.dart';

@RestApi(
    baseUrl:
        "https://") //euw1.api.riotgames.com/lol/summoner/v4/summoners/by-name/
abstract class UserRestClient {
  factory UserRestClient(Dio dio, {String baseUrl}) = _UserRestClient;

  @GET(
      "{server}.api.riotgames.com/lol/summoner/v4/summoners/by-name/{username}")
  Future<Summoner> getUserUid(
      @Path('username') String username, @Path('server') String server);

  // @GET('{matchId}')
  // Future getMatchById(@Path('matchId') String matchId);
}
