import 'package:flutter/material.dart';
import 'package:omega_lul/models/runes/rune_main.dart';
import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';

part 'runes_api.g.dart';

@RestApi(
    baseUrl:
        "http://ddragon.leagueoflegends.com/cdn/10.16.1/data/en_US/runesReforged.json")
abstract class RunesRestClient {
  factory RunesRestClient(Dio dio, {String baseUrl}) = _RunesRestClient;

  @GET('')
  Future<List<RuneMain>> getRunesJson();
}
