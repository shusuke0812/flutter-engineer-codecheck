import 'package:intl/intl.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'owner.dart';
import 'license.dart';

part 'repository.freezed.dart';
part 'repository.g.dart';

// NOTE: 
// Watch count is Incorrect value. 🔥
// Must use `subscribers_count` of Get a repository API. 
// Ref is here. (https://github.com/octokit/octokit.net/issues/1510)

@freezed
class Repository with _$Repository {
  const factory Repository({
    required String name,
    @JsonKey(name: 'full_name') required String fullName,
    required String? language,
    @JsonKey(name: 'stargazers_count') required int starCount,
    @JsonKey(name: 'watchers_count') required int watchCount,
    @JsonKey(name: 'forks_count') required int forkCount,
    @JsonKey(name: 'open_issues_count') required int issueCount,
    required String? description,
    @JsonKey(name: 'homepage') required String? homePage,
    required Owner? owner,
    required License? license,
  }) = _Repository;

  factory Repository.fromJson(Map<String, dynamic> json) => _$RepositoryFromJson(json);
}

extension RepositoryExtension on Repository {
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
class GetRepository with _$GetRepository {
  const factory GetRepository({
    @JsonKey(name: 'subscribers_count') required int subscribersCount
  }) = _GetRepository;

  factory GetRepository.fromJson(Map<String, dynamic> json) => _$GetRepositoryFromJson(json);
}

extension GetRepositoryExtension on GetRepository {
  String get subscribersCountWithComma {
    return _toWithSeparatedComma(subscribersCount);
  }
}

String _toWithSeparatedComma(int value) {
  final formatter = NumberFormat("#,###");
  return formatter.format(value);
}