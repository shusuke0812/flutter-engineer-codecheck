// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:github_search/domain/repository_interface/entity/repository_list.dart';

part 'search_view_state.freezed.dart';

@freezed
class SearchViewState with _$SearchViewState {
  const factory SearchViewState({
    RepositoryList? list,
    @Default('') String errorMessage
  }) = _SearchViewState;
}
