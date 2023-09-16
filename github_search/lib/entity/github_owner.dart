import 'package:freezed_annotation/freezed_annotation.dart';

part 'github_owner.freezed.dart';
part 'github_owner.g.dart';

@freezed
class GitHubOwner with _$GitHubOwner {
  const factory GitHubOwner({
    required String login,
    @JsonKey(name: 'avatar_url') required String avatarUrlString
  }) = _GitHubOwner;

  factory GitHubOwner.fromJson(Map<String, dynamic> json) => _$GitHubOwnerFromJson(json);
}