// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'matches_api.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _RestClient implements RestClient {
  _RestClient(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://europe.api.riotgames.com/lol/match/v5/matches/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<List<String>> getMatchesId(puuid) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(_setStreamType<
        List<String>>(Options(
            method: 'GET', headers: _headers, extra: _extra)
        .compose(_dio.options,
            'by-puuid/${puuid}/ids?start=0&count=20&api_key=RGAPI-b9fee0c0-a48c-4fac-8677-759b345ce5ea',
            queryParameters: queryParameters, data: _data)
        .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data!.cast<String>();
    return value;
  }

  @override
  Future<List<String>> getMatchDetails(matchId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<String>>(Options(
                method: 'GET', headers: _headers, extra: _extra)
            .compose(_dio.options,
                '${matchId}?api_key=RGAPI-b9fee0c0-a48c-4fac-8677-759b345ce5ea',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data!.cast<String>();
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
