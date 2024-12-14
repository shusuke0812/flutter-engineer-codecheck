// Dart imports:
import 'dart:convert';

// Project imports:
import 'package:github_search/datasource/rest_api/api_service.dart';
import 'package:github_search/datasource/rest_api/github/request/get_repository_request.dart';
import 'package:github_search/datasource/rest_api/result.dart';
import 'package:github_search/domain/repository_interface/entity/repository.dart';
import 'package:github_search/domain/repository_interface/repo_repository_interface.dart';

class RepoRepository implements RepoRepositoryInterface {
  final APIService apiService = APIService();

  @override
  Future<Result<GetRepository>> getRepository({required String fullName}) async {
    final request = GetRepositoryRequest(fullName: fullName);
    try {
      final response = await apiService.sendRequest(request);
      return Result.success(GetRepository.fromJson(json.decode(response.body)));
    } catch(_) {
      return Result.error(Error()); // TODO: change custom error type
    }
  }
}
