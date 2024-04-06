import 'package:github_search/presentation/repository_detail_screen/repository_detail_view_state.dart';
import 'package:github_search/repository/readme_repository.dart';
import 'package:github_search/repository/repo_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'repository_detail_viewmodel.g.dart';

@riverpod
class RepositoryDetailViewModel extends _$RepositoryDetailViewModel {
  final readmeRepository = ReadmeRepository();
  final repoRepository = RepoRepository();

  @override
  RepositoryDetailViewState build() => const RepositoryDetailViewState();

  Future<void> loadRepositoryReadme(String ownerName, String repositoryName) async {
    final result = await readmeRepository.getReadme(ownerName: ownerName, repositoryName: repositoryName);
    result.when(
      success: (data) {
        if (data.htmlUrl != null) {
          state = state.updateHtmlUrl(data.htmlUrl!);
        }
      }, 
      error: (error) {
        state = state.updateErrorMessage("Not found README");
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
        state = state.updateGetRepository(data);
      },
      error: (error) {
        state = state.updateErrorMessage("Not found subscribers count");
      },
      exception: (exception) {
        // do nothing
      }
    );
  }
}