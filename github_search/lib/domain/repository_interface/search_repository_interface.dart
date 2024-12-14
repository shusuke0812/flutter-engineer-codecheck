// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import 'package:github_search/datasource/rest_api/result.dart';
import 'package:github_search/domain/repository_interface/entity/repository_list.dart';

// Reference
// - repository pattern on Flutter: https://codewithandrea.com/articles/flutter-repository-pattern/#writing-tests-with-repositories
// - repository with Riverpod: https://riverpod.dev/docs/cookbooks/testing#overriding-the-behavior-of-a-provider-during-tests

final searchRepositoryProvider = Provider<SearchRepositoryInterface>(
  (ref) => throw UnimplementedError("Does not initialze SearchRepository()")
);

abstract class SearchRepositoryInterface {
  Future<Result<RepositoryList>> getRepositories({required String searchWord});
}
