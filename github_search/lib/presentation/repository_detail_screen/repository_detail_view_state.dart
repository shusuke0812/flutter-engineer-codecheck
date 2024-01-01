import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_search/entity/repository.dart';

part 'repository_detail_view_state.freezed.dart';

@freezed
class RepositoryDetailViewState with _$RepositoryDetailViewState {
  const factory RepositoryDetailViewState({
    @Default("https://flutter.dev/") String htmlUrl,
    GetRepository? getRepository,
    @Default("") String errorMessage
  }) = _RepisitoryDetailViewState;
}

extension RepositoryDetailViewStateExtension on RepositoryDetailViewState {
  RepositoryDetailViewState updateHtmlUrl(String value) => copyWith(
    htmlUrl: value
  );

  RepositoryDetailViewState updateGetRepository(GetRepository value) => copyWith(
    getRepository: value
  );

  RepositoryDetailViewState updateErrorMessage(String value) => copyWith(
    errorMessage: value
  );
}