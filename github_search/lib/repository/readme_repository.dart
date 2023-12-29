import 'dart:convert';

import 'package:github_search/entity/readme.dart';
import 'package:github_search/repository/network/api_service.dart';
import 'package:github_search/repository/network/result.dart';
import 'package:github_search/repository/network/request/repository_readme_request.dart';

// Interface

abstract class ReadmeRepositoryInterface {
  Future<Result<Readme>> getReadme({required String ownerName, required String repositoryName});
}

// Implements

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