import 'package:freezed_annotation/freezed_annotation.dart';

import 'github_owner.dart';
import 'github_license.dart';

part 'github_repository.freezed.dart';
part 'github_repository.g.dart';

@freezed
class GitHubRepository with _$GitHubRepository {
  const factory GitHubRepository({
    required String name,
    @JsonKey(name: 'full_name') required String fullName,
    required String? language,
    @JsonKey(name: 'stargazers_count') required int starCount,
    @JsonKey(name: 'watchers_count') required int watchCount,
    @JsonKey(name: 'forks_count') required int forkCount,
    @JsonKey(name: 'open_issues_count') required int issueCount,
    required String? description,
    @JsonKey(name: 'homepage') required String? homePage,
    required GitHubOwner? owner,
    required GitHubLicense? license,
  }) = _GitHubRepository;

  factory GitHubRepository.fromJson(Map<String, dynamic> json) => _$GitHubRepositoryFromJson(json);
}