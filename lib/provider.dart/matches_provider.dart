import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:omega_lul/api/matches_api.dart';
import 'package:omega_lul/api/runes_api.dart';
import 'package:omega_lul/api/user_api.dart';
import 'package:omega_lul/apikey.dart';
import 'package:omega_lul/models/main_data.dart';
import 'package:omega_lul/models/info.dart';
import 'package:omega_lul/models/runes/rune_main.dart';
import 'package:omega_lul/models/summoner.dart';
import 'package:omega_lul/widgets/search_field.dart';

class MatchesProvider extends ChangeNotifier {
  final List<Info> _matchDataList = [];
  List<Info> get matchDataList => _matchDataList;

  Servers _currentServer = Servers.eun1;
  Servers get currentServer => _currentServer;

  final Map<String, bool> _dataLoading = {};
  Map<String, bool> get dataLoading => _dataLoading;

  String _userPuuid = '';
  String get userPuuid => _userPuuid;

  List<String> _matchesIds = [];
  List<String> get matchesIds => _matchesIds;

  final Map<String, List<Info>> _matchData = {};
  Map<String, List<Info>> get matchData => _matchData;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  List<RuneMain> _runesInfo = [];
  List<RuneMain> get runesInfo => _runesInfo;

  List<Info>? getMatchData() {
    _isLoading = true;

    List<Info>? matchData = _matchData[userPuuid]; //Map<matchId,Info>
    if (matchData != null) {
      return matchData;
    }
    fetchMatchData(_matchesIds);

    // print(matchDataList);
    return null;
  }

  getRunesInfo() async {
    final dio = Dio();
    final client = RunesRestClient(dio);
    try {
      List<RuneMain> response = await client.getRunesJson();
      _runesInfo = response;
    } catch (e) {
      print(e); //isError
    }
    notifyListeners();
  }

  Future<void> fetchMatchData(List<String> matchesIds) async {
    print(matchesIds);
    final dio = Dio(
      BaseOptions(
        headers: {
          "X-Riot-Token": ApiKeys.riotKey,
          "Origin": "https://developer.riotgames.com",
        },
      ),
    );
    final client = MatchesRestClient(dio);
    List<Info> matchListData = [];
    try {
      for (String matchId in matchesIds) {
        MainData response = await client.getMatchDetails(matchId);
        matchListData.add(response.info); //info mam
      }
      _matchData[_userPuuid] = matchListData;
    } catch (e) {
      print(e);
      //isError
    }

    // _loadings[key] = false;
    _isLoading = false;
    notifyListeners();
  }

  Future<void> getMatchesIds() async {
    final dio = Dio(
      BaseOptions(
        headers: {
          "X-Riot-Token": ApiKeys.riotKey,
          "Origin": "https://developer.riotgames.com",
        },
      ),
    );
    final client = MatchesRestClient(dio);

    try {
      List<String> response = await client.getMatchesId(userPuuid);
      _matchesIds = response;
      notifyListeners();
    } catch (e) {
      print(e);
    }
  }

  Future<void> getSummoner(String username, Servers server) async {
    final dio = Dio(
      BaseOptions(
        headers: {
          "X-Riot-Token": ApiKeys.riotKey,
          "Origin": "https://developer.riotgames.com",
        },
      ),
    );
    final client = UserRestClient(dio);
    try {
      Summoner response = await client.getUserUid(username, server.name);
      _userPuuid = response.puuid; //fullaccount
      print(_userPuuid);
    } catch (e) {
      print(e);
    }
    notifyListeners();
  }

  void setServer(Servers server) {
    _currentServer = server;
    notifyListeners();
  }
}
