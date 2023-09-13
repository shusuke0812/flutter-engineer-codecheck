import 'package:flutter/material.dart';
import 'package:github_search/repository/github_readme_repository.dart';
import 'package:github_search/utility/logger.dart';

class GitHubRepositoryDetalViewModel with ChangeNotifier {
  GitHubRepositoryDetalViewModel({required this.githubReadmeRepository});

  final GitHubReadmeRepository githubReadmeRepository;

  // Success notify values
  String _htmlUrl = "";
  String get htmlUrl {
    return _htmlUrl;
  }

  // Error notifiy values
  String _errorMessage = "";
  String get errorMessage {
    return _errorMessage;
  }

  Future<void> loadRepositoryReadme(String ownerName, String repositoryName) async {
    final result = await githubReadmeRepository.getReadme(ownerName: ownerName, repositoryName: repositoryName);
    result.when(
      success: (data) {
        logger.d("response=$data");
        _htmlUrl = data.htmlUrl;
        notifyListeners();
      }, 
      error: (error) {
        _errorMessage = "Not found README";
        notifyListeners();
      }, 
      exception: (exception) {
        // do nothing
      }
    );
  }
}