import 'package:github_search/presentation/screen/repository_detail_screen/repository_detail_view_state.dart';
import 'package:github_search/domain/repository_interface/readme_repository_interface.dart';
import 'package:github_search/domain/repository_interface/repo_repository_interface.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'repository_detail_viewmodel.g.dart';

@riverpod
class RepositoryDetailViewModel extends _$RepositoryDetailViewModel {
  @override
  RepositoryDetailViewState build() => const RepositoryDetailViewState();

  Future<void> loadRepositoryReadme(String ownerName, String repositoryName) async {
    final result = await ref.read(readmeRepositoryProvider).getReadme(ownerName: ownerName, repositoryName: repositoryName);
    result.when(
      success: (data) {
        if (data.htmlUrl != null) {
          state = state.copyWith(htmlUrl: data.htmlUrl!);
        }
      }, 
      error: (error) {
        state = state.copyWith(errorMessage: "Not found README");
      }, 
      exception: (exception) {
        // do nothing
      }
    );
  }

  Future<void> loadSubscribersCount(String fullName) async {
    final result = await ref.read(repoRepositoryProvider).getRepository(fullName: fullName);
    result.when(
      success: (data) {
        state = state.copyWith(getRepository: data);
      },
      error: (error) {
        state = state.copyWith(errorMessage: "Not found subscribers count");
      },
      exception: (exception) {
        // do nothing
      }
    );
  }
}