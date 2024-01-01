import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_search/presentation/repository_detail_screen/repository_detail_view_state.dart';
import 'package:github_search/repository/readme_repository.dart';
import 'package:github_search/repository/repo_repository.dart';

final repositoryDetailViewModelProvider = ChangeNotifierProvider((ref) {
  return RepositoryDetailViewModel(
    readmeRepository: ReadmeRepository(), 
    repoRepository: RepoRepository()
  );
});

class RepositoryDetailViewModel extends ChangeNotifier {
  RepositoryDetailViewModel({
    required this.readmeRepository,
    required this.repoRepository
  });

  final ReadmeRepository readmeRepository;
  final RepoRepository repoRepository;

  RepositoryDetailViewState _state = const RepositoryDetailViewState(getRepository: null);
  RepositoryDetailViewState get state {
    return _state;
  }

  Future<void> loadRepositoryReadme(String ownerName, String repositoryName) async {
    final result = await readmeRepository.getReadme(ownerName: ownerName, repositoryName: repositoryName);
    result.when(
      success: (data) {
        if (data.htmlUrl != null) {
          _state = _state.updateHtmlUrl(data.htmlUrl!);
          notifyListeners();
        }
      }, 
      error: (error) {
        _state = _state.updateErrorMessage("Not found README");
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
        _state = _state.updateGetRepository(data);
        notifyListeners();
      },
      error: (error) {
        _state = _state.updateErrorMessage("Not found subscribers count");
        notifyListeners();
      },
      exception: (exception) {
        // do nothing
      }
    );
  }
}