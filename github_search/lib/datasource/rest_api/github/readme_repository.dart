// Dart imports:
import 'dart:convert';

// Project imports:
import 'package:github_search/datasource/rest_api/api_service.dart';
import 'package:github_search/datasource/rest_api/github/request/repository_readme_request.dart';
import 'package:github_search/datasource/rest_api/result.dart';
import 'package:github_search/domain/repository_interface/entity/readme.dart';
import 'package:github_search/domain/repository_interface/readme_repository_interface.dart';

class ReadmeRepository implements ReadmeRepositoryInterface {
  final APIService apiService = APIService();

  @override
  Future<Result<Readme>> getReadme({required String ownerName, required String repositoryName}) async {
    final request = RepositoryReadmeRequest(ownerName: ownerName, repositoryName: repositoryName);
    try {
      final response = await apiService.sendRequest(request);
      return Result.success(Readme.fromJson(json.decode(response.body)));
    } catch(_) {
      return Result.error(Error()); // TODO: change custom error type
    }
  }
}
