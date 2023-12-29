import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_search/presentation/search_screen/search_view_state.dart';
import 'package:github_search/utility/logger.dart';
import 'package:github_search/repository/search_repository.dart';

final searchViewModelProvider = StateNotifierProvider.autoDispose<SearchViewModel, SearchViewState>((ref) {
  return SearchViewModel(searchRepository: SearchRepository());
});

class SearchViewModel extends StateNotifier<SearchViewState> {
  SearchViewModel({
    required this.searchRepository
  }) : super(const SearchViewState());

  final SearchRepositoryInterface searchRepository;

  Future<void> loadRepositoryList(String searchWord) async {
    final result = await searchRepository.getRepositories(searchWord: searchWord);
    result.when(
      success: (data) {
        logger.d("response=$data");
        state = state.updateList(data);
      }, 
      error: (error) {
        state = state.updateErrorMessage('Failed to search');
      }, 
      exception: (exception) {
        // do nothing
      }
    );
  }
}