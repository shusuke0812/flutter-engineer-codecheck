
import 'package:github_search/utility/constant.dart';
import 'package:github_search/repository/network/http_method.dart';
import 'package:github_search/repository/network/request/request_interface.dart';

// Reference
// - doc: https://docs.github.com/ja/rest/search/search?apiVersion=2022-11-28#search-repositories

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
  String get path {
    return "/search/repositories";
  }

  @override
  Future<Map<String, String>?> parameters() async {
    return {
      'q': searchWord,
      'per_page': '$searchCount',
      'page': '$page'
    };
  }
}