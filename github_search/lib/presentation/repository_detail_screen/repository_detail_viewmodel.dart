import 'package:flutter/material.dart';
import 'package:github_search/entity/repository.dart';
import 'package:github_search/repository/readme_repository.dart';
import 'package:github_search/repository/repo_repository.dart';
import 'package:github_search/utility/logger.dart';

class RepositoryDetailViewModel with ChangeNotifier {
  RepositoryDetailViewModel({
    required this.readmeRepository,
    required this.repoRepository
  });

  final ReadmeRepository readmeRepository;
  final RepoRepository repoRepository;

  // Success notify values
  String _htmlUrl = "https://flutter.dev/";
  String get htmlUrl {
    return _htmlUrl;
  }

  GetRepository? _getRepository;
  GetRepository? get getRepository {
    return _getRepository;
  }

  // Error notifiy values
  String _errorMessage = "";
  String get errorMessage {
    return _errorMessage;
  }

  Future<void> loadRepositoryReadme(String ownerName, String repositoryName) async {
    final result = await readmeRepository.getReadme(ownerName: ownerName, repositoryName: repositoryName);
    result.when(
      success: (data) {
        if (data.htmlUrl != null) {
          _htmlUrl = data.htmlUrl!;
          logger.d("url=$_htmlUrl");
          notifyListeners();
        }
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

  Future<void> loadSubscribersCount(String fullName) async {
    final result = await repoRepository.getRepository(fullName: fullName);
    result.when(
      success: (data) {
        _getRepository = data;
        notifyListeners();
      },
      error: (error) {
        _errorMessage = "Not found subscribers count";
        notifyListeners();
      },
      exception: (exception) {
        // do nothing
      }
    );
  }
}