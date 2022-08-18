import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:omega_lul/api/matches_api.dart';
import 'package:omega_lul/api/user_api.dart';
import 'package:omega_lul/apikey.dart';
import 'package:omega_lul/models/main_data.dart';
import 'package:omega_lul/models/info.dart';

class MatchesProvider extends ChangeNotifier {
  final List<Info> _matchDataList = [];
  List<Info> get matchDataList => _matchDataList;

  String _currentServer = 'eune';
  String get currentServer => _currentServer;

  final Map<String, bool> _dataLoading = {};
  Map<String, bool> get dataLoading => _dataLoading;

  String _userPuuid = '';
  String get userPuuid => _userPuuid;

  List<String> _matchesIds = [];
  List<String> get matchesIds => _matchesIds;

  Map<String, List<Info>> _matchData = {};
  Map<String, List<Info>> get matchData => _matchData;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  List<Info>? getMatchData() {
    _isLoading = true;

    List<Info>? matchData = _matchData[userPuuid]; //Map<matchId,Info>
    if (matchData != null) {
      return matchData;
    }
    fetchMatchData(_matchesIds);

    print(matchDataList);
    return null;
  }

  Future<void> fetchMatchData(List<String> matchesIds) async {
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
        matchListData.add(response.info);
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
      var response = await client.getMatchesId(userPuuid);
      _matchesIds = response;
      notifyListeners();
    } catch (e) {
      print(e);
    }
  }

  Future<void> getPuuid(String username, String server) async {
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
      var response = await client.getUserUid(username, server);
      _userPuuid = response.puuid;
      print(_userPuuid);
    } catch (e) {
      print(e);
    }
    notifyListeners();
  }

  void setServer(String server) {
    _currentServer = server;
    notifyListeners();
  }
}
