// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import 'package:github_search/datasource/rest_api/result.dart';
import 'package:github_search/domain/repository_interface/entity/readme.dart';

final readmeRepositoryProvider = Provider<ReadmeRepositoryInterface>(
  (ref) => throw UnimplementedError("Does not initialize ReadmeRepository()")
);

abstract class ReadmeRepositoryInterface {
  Future<Result<Readme>> getReadme({required String ownerName, required String repositoryName});
}
