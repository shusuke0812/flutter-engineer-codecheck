import 'package:github_search/utility/constant.dart';
import 'package:github_search/repository/network/http_method.dart';
import 'package:github_search/repository/network/request/request_interface.dart';


// Reference
// - doc: https://docs.github.com/ja/free-pro-team@latest/rest/repos/contents?apiVersion=2022-11-28#get-a-repository-readme

class RepositoryReadmeRequest extends RequestInterface {
  RepositoryReadmeRequest({
    required this.repositoryName,
    required this.ownerName
  });

  final String repositoryName;
  final String ownerName;

  @override
  String baseURL = Constant.githubBaseUrl;

  @override
  HTTPMethod method = HTTPMethod.get;

  @override
  String get path { return "/repos/$ownerName/$repositoryName/readme"; }

  @override
  Future<Map<String ,String>?> parameters() async {
    return null;
  }
}