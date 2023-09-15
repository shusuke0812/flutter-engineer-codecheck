import 'package:flutter/material.dart';
import 'package:github_search/entity/github_repository_list.dart';
import 'package:github_search/utility/logger.dart';
import 'package:github_search/repository/github_search_repository.dart';

class GitHubSearchViewModel with ChangeNotifier {
  GitHubSearchViewModel({required this.githubSearchRepository});

  final GitHubSearchRepositoryInterface githubSearchRepository;
  
  // Success notify values
  GitHubRepositoryList? _list;
  GitHubRepositoryList? get list {
    return _list;
  }

  // Error notifiy values
  String _errorMessage = "";
  String get errorMessage {
    return _errorMessage;
  }

  Future<void> loadRepositoryList(String searchWord) async {
    final result = await githubSearchRepository.getRepositories(searchWord: searchWord);
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