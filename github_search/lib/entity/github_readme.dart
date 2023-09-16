import 'package:freezed_annotation/freezed_annotation.dart';

part 'github_readme.freezed.dart';
part 'github_readme.g.dart';

@freezed
class GitHubReadme with _$GitHubReadme {
  const factory GitHubReadme({
    @JsonKey(name: 'html_url') required String? htmlUrl
  }) = _GitHubReadme;

  factory GitHubReadme.fromJson(Map<String, dynamic> json) => _$GitHubReadmeFromJson(json);
}