// Package imports:
import 'package:riverpod_annotation/riverpod_annotation.dart';

// Project imports:
import 'package:github_search/domain/repository_interface/search_repository_interface.dart';
import 'package:github_search/presentation/screen/search_screen/search_view_state.dart';
import 'package:github_search/utility/logger.dart';

part 'search_viewmodel.g.dart';

@riverpod
class SearchViewModel extends _$SearchViewModel {
  @override
  SearchViewState build() => const SearchViewState();

  Future<void> loadRepositoryList(String searchWord) async {
    final result = await ref.read(searchRepositoryProvider).getRepositories(searchWord: searchWord);
    result.when(
      success: (data) {
        logger.d("response=$data");
        state = state.copyWith(list: data);
      }, 
      error: (error) {
        state = state.copyWith(errorMessage: "Failed to search");
      }, 
      exception: (exception) {
        // do nothing
      }
    );
  }
}
