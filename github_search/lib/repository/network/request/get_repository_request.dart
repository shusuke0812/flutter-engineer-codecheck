
import 'package:github_search/utility/constant.dart';
import 'package:github_search/repository/network/http_method.dart';
import 'package:github_search/repository/network/request/request_interface.dart';

// Reference
// - doc: https://docs.github.com/ja/rest/repos/repos?apiVersion=2022-11-28#get-a-repository

class GetRepositoryRequest extends RequestInterface {
  GetRepositoryRequest({required this.fullName});

  final String fullName;

  @override
  String get baseURL {
    return Constant.githubBaseUrl;
  }

  @override
  HTTPMethod get method {
    return HTTPMethod.get;
  }

  @override
  String get path {
    return "/repos/$fullName";
  }

  @override
  Future<Map<String, String>?> parameters() async {
    return null;
  }

  @override
  Future<Map<String, String>> header() async => Constant.githubHeader;
}