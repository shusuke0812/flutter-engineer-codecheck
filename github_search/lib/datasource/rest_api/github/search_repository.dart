// Dart imports:
import 'dart:convert';

// Project imports:
import 'package:github_search/datasource/rest_api/api_service.dart';
import 'package:github_search/datasource/rest_api/github/request/search_request.dart';
import 'package:github_search/datasource/rest_api/result.dart';
import 'package:github_search/domain/repository_interface/entity/repository_list.dart';
import 'package:github_search/domain/repository_interface/search_repository_interface.dart';

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
