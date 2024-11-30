
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:github_search/domain/repository_interface/readme_repository_interface.dart';
import 'package:github_search/domain/repository_interface/repo_repository_interface.dart';
import 'package:github_search/domain/repository_interface/search_repository_interface.dart';
import 'package:github_search/datasource/rest_api/github/readme_repository.dart';
import 'package:github_search/datasource/rest_api/github/repo_repository.dart';
import 'package:github_search/datasource/rest_api/github/search_repository.dart';

final List<Override> repositoryInjection = [
  searchRepositoryProvider.overrideWith(
    (ref) => SearchRepository()
  ),
  repoRepositoryProvider.overrideWith(
    (ref) => RepoRepository()
  ),
  readmeRepositoryProvider.overrideWith(
    (ref) => ReadmeRepository()
  )
];