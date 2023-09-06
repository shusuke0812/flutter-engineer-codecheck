import 'package:freezed_annotation/freezed_annotation.dart';

part 'github_license.freezed.dart';
part 'github_license.g.dart';

@freezed
class GitHubLicense with _$GitHubLicense {
  const factory GitHubLicense({
    String? key,
    String? name,
    String? urlString
  }) = _GitHubLicense;

  factory GitHubLicense.fromJson(Map<String, dynamic> json) => _$GitHubLicenseFromJson(json);
}