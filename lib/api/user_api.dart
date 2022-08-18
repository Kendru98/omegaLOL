import 'package:omega_lul/models/summoner.dart';
import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';

part 'user_api.g.dart';

@RestApi(
    baseUrl:
        "https://europe.api.riotgames.com/riot/account/v1/accounts/by-riot-id/")
abstract class UserRestClient {
  factory UserRestClient(Dio dio, {String baseUrl}) = _UserRestClient;

  @GET("{username}/{server}")
  Future<Summoner> getUserUid(
      @Path('username') String username, @Path('server') String server);

  // @GET('{matchId}')
  // Future getMatchById(@Path('matchId') String matchId);
}
