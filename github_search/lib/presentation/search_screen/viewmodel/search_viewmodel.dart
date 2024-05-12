import 'package:flutter/material.dart';
import 'package:github_search/presentation/search_screen/search_view_state.dart';
import 'package:github_search/utility/loading_dialog.dart';
import 'package:github_search/utility/logger.dart';
import 'package:github_search/repository/search_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_viewmodel.g.dart';

@riverpod
class SearchViewModel extends _$SearchViewModel {
  final searchRepository = SearchRepository();

  @override
  SearchViewState build() => const SearchViewState();

  Future<void> loadRepositoryList(String searchWord, BuildContext context) async {
    showLoadingDialog(context: context);

    final result = await searchRepository.getRepositories(searchWord: searchWord);
    result.when(
      success: (data) {
        logger.d("response=$data");
        state = state.updateList(data);
        closeLoadingDialog(context);
      }, 
      error: (error) {
        state = state.updateErrorMessage('Failed to search');
        closeLoadingDialog(context);
      }, 
      exception: (exception) {
        closeLoadingDialog(context);
      }
    );
  }
}