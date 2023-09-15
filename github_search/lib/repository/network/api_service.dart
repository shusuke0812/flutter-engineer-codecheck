import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;

import 'package:github_search/repository/network/request/request_interface.dart';

class APIService {
  final http.Client _client = http.Client();
  final Duration _timeOut = const Duration(seconds: 30);

  Future<http.Response> sendRequest(RequestInterface request) async {
    final http.Request req = await _build(request);
    try {
      final response = await http.Response.fromStream(
        await _client.send(req).timeout(_timeOut)
      );
      if (200 <= response.statusCode && response.statusCode < 300) {
        return response;
      } else {
        throw Exception({response.body});
      }
    } catch(_) {
      rethrow;
    }
  }

  Future<http.Request> _build(RequestInterface request) async {
    final Map<String, String> header = await request.header();
    final Map<String, String>? parameters = await request.parameters();
    final Map<String, dynamic> body = await request.body();

    Uri url = Uri.https(request.baseURL, request.path, parameters);

    return http.Request(request.method.name.toUpperCase(), url)
    ..headers.addAll(header)
    ..body = json.encode(body);
  }
}