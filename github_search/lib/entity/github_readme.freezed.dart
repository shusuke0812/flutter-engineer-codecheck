// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'github_readme.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GitHubReadme _$GitHubReadmeFromJson(Map<String, dynamic> json) {
  return _GitHubReadme.fromJson(json);
}

/// @nodoc
mixin _$GitHubReadme {
  @JsonKey(name: 'html_url')
  String get htmlUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GitHubReadmeCopyWith<GitHubReadme> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GitHubReadmeCopyWith<$Res> {
  factory $GitHubReadmeCopyWith(
          GitHubReadme value, $Res Function(GitHubReadme) then) =
      _$GitHubReadmeCopyWithImpl<$Res, GitHubReadme>;
  @useResult
  $Res call({@JsonKey(name: 'html_url') String htmlUrl});
}

/// @nodoc
class _$GitHubReadmeCopyWithImpl<$Res, $Val extends GitHubReadme>
    implements $GitHubReadmeCopyWith<$Res> {
  _$GitHubReadmeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? htmlUrl = null,
  }) {
    return _then(_value.copyWith(
      htmlUrl: null == htmlUrl
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GitHubReadmeCopyWith<$Res>
    implements $GitHubReadmeCopyWith<$Res> {
  factory _$$_GitHubReadmeCopyWith(
          _$_GitHubReadme value, $Res Function(_$_GitHubReadme) then) =
      __$$_GitHubReadmeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'html_url') String htmlUrl});
}

/// @nodoc
class __$$_GitHubReadmeCopyWithImpl<$Res>
    extends _$GitHubReadmeCopyWithImpl<$Res, _$_GitHubReadme>
    implements _$$_GitHubReadmeCopyWith<$Res> {
  __$$_GitHubReadmeCopyWithImpl(
      _$_GitHubReadme _value, $Res Function(_$_GitHubReadme) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? htmlUrl = null,
  }) {
    return _then(_$_GitHubReadme(
      htmlUrl: null == htmlUrl
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GitHubReadme implements _GitHubReadme {
  const _$_GitHubReadme({@JsonKey(name: 'html_url') required this.htmlUrl});

  factory _$_GitHubReadme.fromJson(Map<String, dynamic> json) =>
      _$$_GitHubReadmeFromJson(json);

  @override
  @JsonKey(name: 'html_url')
  final String htmlUrl;

  @override
  String toString() {
    return 'GitHubReadme(htmlUrl: $htmlUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GitHubReadme &&
            (identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, htmlUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GitHubReadmeCopyWith<_$_GitHubReadme> get copyWith =>
      __$$_GitHubReadmeCopyWithImpl<_$_GitHubReadme>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GitHubReadmeToJson(
      this,
    );
  }
}

abstract class _GitHubReadme implements GitHubReadme {
  const factory _GitHubReadme(
          {@JsonKey(name: 'html_url') required final String htmlUrl}) =
      _$_GitHubReadme;

  factory _GitHubReadme.fromJson(Map<String, dynamic> json) =
      _$_GitHubReadme.fromJson;

  @override
  @JsonKey(name: 'html_url')
  String get htmlUrl;
  @override
  @JsonKey(ignore: true)
  _$$_GitHubReadmeCopyWith<_$_GitHubReadme> get copyWith =>
      throw _privateConstructorUsedError;
}
