import 'dart:convert';

import 'package:github_search/entity/github_repository_list.dart';
import 'package:github_search/logger.dart';
import 'package:github_search/repository/network/api_service.dart';
import 'package:github_search/repository/network/request/github_search_request.dart';

import 'package:github_search/repository/network/result.dart';

// Reference
// - repository pattern on Flutter: https://codewithandrea.com/articles/flutter-repository-pattern/#writing-tests-with-repositories

// Interface

abstract class GitHubSearchRepositoryInterface {
  Future<Result<GitHubRepositoryList>> getRepositories({required String searchWord});
}

//  Implements

class GitHubSearchRepository implements GitHubSearchRepositoryInterface {
  final APIService apiService = APIService();

  @override
  Future<Result<GitHubRepositoryList>> getRepositories({required String searchWord}) async {
    final request = GitHubSearchRequest(searchWord: searchWord);
    try {
      final response = await apiService.sendRequest(request);
      return Result.success(GitHubRepositoryList.fromJson(json.decode(response.body)));
    } catch(_) {
      return Result.error(Error()); // TODO: change custom error type
    }
  }
}