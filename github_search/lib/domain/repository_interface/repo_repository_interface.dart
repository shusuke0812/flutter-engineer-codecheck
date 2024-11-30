import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_search/domain/repository_interface/entity/repository.dart';
import 'package:github_search/datasource/rest_api/result.dart';

final repoRepositoryProvider = Provider<RepoRepositoryInterface>(
  (ref) => throw UnimplementedError("Does not initialize RepoRepository()")
);

abstract class RepoRepositoryInterface {
  Future<Result<GetRepository>> getRepository({required String fullName});
}
