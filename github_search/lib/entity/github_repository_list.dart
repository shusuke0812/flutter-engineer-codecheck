import 'package:freezed_annotation/freezed_annotation.dart';

import 'github_repository.dart';

part 'github_repository_list.freezed.dart';
part 'github_repository_list.g.dart';

@freezed
class GitHubRepositoryList with _$GitHubRepositoryList {
  const factory GitHubRepositoryList({
    @JsonKey(name: 'total_count') required int totalCount,
    @JsonKey(name: 'incomplete_results') bool? incompleteResults,
    required List<GitHubRepository> items,
  }) = _GitHubRepositoryList;

  factory GitHubRepositoryList.fromJson(Map<String, dynamic> json) => _$GitHubRepositoryListFromJson(json);
}