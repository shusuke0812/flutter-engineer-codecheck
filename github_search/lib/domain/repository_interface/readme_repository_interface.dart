import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_search/domain/repository_interface/entity/readme.dart';
import 'package:github_search/infrastructure/rest_api/result.dart';

final readmeRepositoryProvider = Provider<ReadmeRepositoryInterface>(
  (ref) => throw UnimplementedError("Does not initialize ReadmeRepository()")
);

abstract class ReadmeRepositoryInterface {
  Future<Result<Readme>> getReadme({required String ownerName, required String repositoryName});
}
