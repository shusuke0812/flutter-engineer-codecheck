import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_search/entity/repository_list.dart';

part 'search_view_state.freezed.dart';

@freezed
class SearchViewState with _$SearchViewState {
  const factory SearchViewState({
    RepositoryList? list,
    @Default('') String errorMessage
  }) = _SearchViewState;
}
