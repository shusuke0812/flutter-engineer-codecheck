import 'dart:convert';

import 'package:github_search/entity/repository_list.dart';
import 'package:github_search/repository/network/api_service.dart';
import 'package:github_search/repository/network/request/search_request.dart';

import 'package:github_search/repository/network/result.dart';

// Reference
// - repository pattern on Flutter: https://codewithandrea.com/articles/flutter-repository-pattern/#writing-tests-with-repositories
// - repository with Riverpod: https://riverpod.dev/docs/cookbooks/testing#overriding-the-behavior-of-a-provider-during-tests

// Interface

abstract class SearchRepositoryInterface {
  Future<Result<RepositoryList>> getRepositories({required String searchWord});
}

//  Implements

class SearchRepository implements SearchRepositoryInterface {
  final APIService apiService = APIService();

  @override
  Future<Result<RepositoryList>> getRepositories({required String searchWord}) async {
    final request = SearchRequest(searchWord: searchWord);
    try {
      final response = await apiService.sendRequest(request);
      return Result.success(RepositoryList.fromJson(json.decode(response.body)));
    } catch(_) {
      return Result.error(Error()); // TODO: change custom error type
    }
  }
}