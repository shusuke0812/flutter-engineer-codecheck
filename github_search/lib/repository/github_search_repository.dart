import 'dart:convert';

import 'package:github_search/entity/github_repository.dart';
import 'package:github_search/repository/network/api_client.dart';
import 'package:github_search/repository/network/request/github_search_request.dart';

import 'package:github_search/repository/network/result.dart';

// Reference
// - repository pattern on Flutter: https://codewithandrea.com/articles/flutter-repository-pattern/#writing-tests-with-repositories

// Interface

abstract class GitHubSearchRepositoryInterface {
  Future<Result<GitHubRepository>> getRepositories({required String searchWord});
}

//  Implements

class GitHubSearchRepository implements GitHubSearchRepositoryInterface {
  GitHubSearchRepository({required this.client});

  final APIClient client;

  Future<Result<GitHubRepository>> getRepositories({required String searchWord}) async {
    final request = GitHubSearchRequest(searchWord: searchWord);
    try {
      final response = await client.sendRequest(request);
      return Result.success(GitHubRepository.fromJson(json.decode(response.body)));
    } catch(_) {
      return Result.error(Error()); // TODO: change custom error type
    }
  }
}