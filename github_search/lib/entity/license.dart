import 'package:freezed_annotation/freezed_annotation.dart';

part 'license.freezed.dart';
part 'license.g.dart';

@freezed
class License with _$License {
  const factory License({
    required String key,
    required String? name,
    @JsonKey(name: 'url') required String? urlString
  }) = _License;

  factory License.fromJson(Map<String, dynamic> json) => _$LicenseFromJson(json);
}

extension LicenseExtension on License {
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