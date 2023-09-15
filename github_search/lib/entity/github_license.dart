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

extension GitHubLicenseExtension on GitHubLicense {
  String displayName() {
    if (name == null) {
      return "No License";
    } else {
      if (name!.substring(0, 3) == "BSD") {
        return "BSD";
      } else if (name!.substring(0, 3) == "GNU") {
        return "GPL";
      } else {
        return name!;
      }
    }
  }
}