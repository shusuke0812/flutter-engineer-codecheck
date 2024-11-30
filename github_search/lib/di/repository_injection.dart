
import 'package:github_search/repository/readme_repository.dart';
import 'package:github_search/repository/repo_repository.dart';
import 'package:github_search/repository/search_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

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