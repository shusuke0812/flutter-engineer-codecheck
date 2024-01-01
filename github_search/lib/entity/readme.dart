import 'package:freezed_annotation/freezed_annotation.dart';

part 'readme.freezed.dart';
part 'readme.g.dart';

@freezed
class Readme with _$Readme {
  const factory Readme({
    @JsonKey(name: 'html_url') required String? htmlUrl
  }) = _Readme;

  factory Readme.fromJson(Map<String, dynamic> json) => _$ReadmeFromJson(json);
}