import 'package:flutter/material.dart';
import 'package:github_search/entity/repository_list.dart';
import 'package:github_search/utility/logger.dart';
import 'package:github_search/repository/search_repository.dart';

class SearchViewModel with ChangeNotifier {
  SearchViewModel({required this.searchRepository});

  final SearchRepositoryInterface searchRepository;
  
  // Success notify values
  RepositoryList? _list;
  RepositoryList? get list {
    return _list;
  }

  // Error notifiy values
  String _errorMessage = "";
  String get errorMessage {
    return _errorMessage;
  }

  Future<void> loadRepositoryList(String searchWord) async {
    final result = await searchRepository.getRepositories(searchWord: searchWord);
    result.when(
      success: (data) {
        logger.d("response=$data");
        _list = data;
        notifyListeners();
      }, 
      error: (error) {
        _errorMessage = "Failed to search";
        notifyListeners();
      }, 
      exception: (exception) {
        // do nothing
      }
    );
  }
}