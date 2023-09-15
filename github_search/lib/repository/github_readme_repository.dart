import 'dart:convert';

import 'package:github_search/entity/github_readme.dart';
import 'package:github_search/repository/network/api_service.dart';
import 'package:github_search/repository/network/result.dart';
import 'package:github_search/repository/network/request/repository_readme_request.dart';

// Interface

abstract class GitHubReadmeRepositoryInterface {
  Future<Result<GitHubReadme>> getReadme({required String ownerName, required String repositoryName});
}

// Implements

class GitHubReadmeRepository implements GitHubReadmeRepositoryInterface {
  final APIService apiService = APIService();

  @override
  Future<Result<GitHubReadme>> getReadme({required String ownerName, required String repositoryName}) async {
    final request = RepositoryReadmeRequest(ownerName: ownerName, repositoryName: repositoryName);
    try {
      final response = await apiService.sendRequest(request);
      return Result.success(GitHubReadme.fromJson(json.decode(response.body)));
    } catch(_) {
      return Result.error(Error()); // TODO: change custom error type
    }
  }
}