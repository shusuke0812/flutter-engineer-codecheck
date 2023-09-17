import 'dart:convert';

import 'package:github_search/entity/github_repository.dart';
import 'package:github_search/repository/network/request/get_repository_request.dart';
import 'package:github_search/repository/network/result.dart';
import 'package:github_search/repository/network/api_service.dart';

// Interface

abstract class GitHubRepoRepositoryInterface {
  Future<Result<GitHubGetRepository>> getRepository({required String fullName});
}

// Implements

class GitHubRepoRepository implements GitHubRepoRepositoryInterface {
  final APIService apiService = APIService();

  @override
  Future<Result<GitHubGetRepository>> getRepository({required String fullName}) async {
    final request = GetRepositoryRequest(fullName: fullName);
    try {
      final response = await apiService.sendRequest(request);
      return Result.success(GitHubGetRepository.fromJson(json.decode(response.body)));
    } catch(_) {
      return Result.error(Error()); // TODO: change custom error type
    }
  }
}