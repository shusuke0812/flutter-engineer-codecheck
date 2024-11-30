import 'package:freezed_annotation/freezed_annotation.dart';

import 'repository.dart';

part 'repository_list.freezed.dart';
part 'repository_list.g.dart';

@freezed
class RepositoryList with _$RepositoryList {
  const factory RepositoryList({
    @JsonKey(name: 'total_count') required int totalCount,
    @JsonKey(name: 'incomplete_results') required bool incompleteResults,
    required List<Repository> items,
  }) = _RepositoryList;

  factory RepositoryList.fromJson(Map<String, dynamic> json) => _$RepositoryListFromJson(json);
}