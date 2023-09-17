import 'package:intl/intl.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'github_owner.dart';
import 'github_license.dart';

part 'github_repository.freezed.dart';
part 'github_repository.g.dart';

// NOTE: 
// Watch count is Incorrect value. 🔥
// Must use `subscribers_count` of Get a repository API. 
// Ref is here. (https://github.com/octokit/octokit.net/issues/1510)

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

extension GitHubRepositoryExtension on GitHubRepository {
  String get starCountWithComma {
    return _toWithSeparatedComma(starCount);
  }

  String get watchCountWithComma {
    return _toWithSeparatedComma(watchCount);
  }

  String get forkCountWithComma {
    return _toWithSeparatedComma(forkCount);
  }

  String get issueCountWithComma {
    return _toWithSeparatedComma(issueCount);
  }
}

@freezed
class GitHubGetRepository with _$GitHubGetRepository {
  const factory GitHubGetRepository({
    @JsonKey(name: 'subscribers_count') required int subscribersCount
  }) = _GitHubGetRepository;

  factory GitHubGetRepository.fromJson(Map<String, dynamic> json) => _$GitHubGetRepositoryFromJson(json);
}

extension GitHubGetRepositoryExtension on GitHubGetRepository {
  String get subscribersCountWithComma {
    return _toWithSeparatedComma(subscribersCount);
  }
}

String _toWithSeparatedComma(int value) {
  final formatter = NumberFormat("#,###");
  return formatter.format(value);
}