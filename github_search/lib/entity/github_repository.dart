import 'package:freezed_annotation/freezed_annotation.dart';

import 'github_owner.dart';
import 'github_license.dart';

part 'github_repository.freezed.dart';
part 'github_repository.g.dart';

@freezed
class GitHubRepository with _$GitHubRepository {
  const factory GitHubRepository({
    String? name,
    @JsonKey(name: 'full_name') String? fullName,
    String? language,
    @JsonKey(name: 'stargazers_count') int? starCount,
    @JsonKey(name: 'watchers_count') int? watchCount,
    @JsonKey(name: 'forks_count') int? forkCount,
    @JsonKey(name: 'open_issues_count') int? issueCount,
    String? description,
    @JsonKey(name: 'homepage') String? homePage,
    GitHubOwner? owner,
    GitHubLicense? license,
  }) = _GitHubRepository;

  factory GitHubRepository.fromJson(Map<String, dynamic> json) => _$GitHubRepositoryFromJson(json);
}