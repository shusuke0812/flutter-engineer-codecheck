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

extension SearchViewStateExtension on SearchViewState {
  SearchViewState updateList(RepositoryList value) => copyWith(
    list: value
  );

  SearchViewState updateErrorMessage(String value) => copyWith(
    errorMessage: value
  );
}