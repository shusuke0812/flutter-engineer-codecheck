import '../http_method.dart';

abstract class RequestInterface {
  abstract String baseURL;
  String get path;
  abstract HTTPMethod method;

  Future<Map<String, String>> parameters() async => {};
  Future<Map<String, dynamic>> body() async => {};
  
  Future<Map<String, String>> header() async {
    return {
      'Accept': 'application/json',
      'Content-Type': 'application/json'
    };
  }
}