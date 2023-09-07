
import 'package:github_search/constant.dart';
import 'package:github_search/repository/network/http_method.dart';
import 'package:github_search/repository/network/request/request_interface.dart';

class GitHubSearchRequest extends RequestInterface {
  GitHubSearchRequest({required this.searchWord});

  final String searchWord;
  final int searchCount = 20;
  final int page = 1;

  @override
  String baseURL = Constant.githubBaseUrl;

  @override
  HTTPMethod method = HTTPMethod.get;

  @override
  String path = "/search/repositories";

  @override
  Future<Map<String, String>> parameters() async {
    return {
      'q': searchWord,
      'per_page': '$searchCount',
      'page': '$page'
    };
  }
}