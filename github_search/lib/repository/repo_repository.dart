import 'dart:convert';

import 'package:github_search/entity/repository.dart';
import 'package:github_search/repository/network/request/get_repository_request.dart';
import 'package:github_search/repository/network/result.dart';
import 'package:github_search/repository/network/api_service.dart';

// Interface

abstract class RepoRepositoryInterface {
  Future<Result<GetRepository>> getRepository({required String fullName});
}

// Implements

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