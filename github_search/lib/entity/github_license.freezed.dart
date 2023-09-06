// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'github_license.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GitHubLicense _$GitHubLicenseFromJson(Map<String, dynamic> json) {
  return _GitHubLicense.fromJson(json);
}

/// @nodoc
mixin _$GitHubLicense {
  String? get key => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get urlString => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GitHubLicenseCopyWith<GitHubLicense> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GitHubLicenseCopyWith<$Res> {
  factory $GitHubLicenseCopyWith(
          GitHubLicense value, $Res Function(GitHubLicense) then) =
      _$GitHubLicenseCopyWithImpl<$Res, GitHubLicense>;
  @useResult
  $Res call({String? key, String? name, String? urlString});
}

/// @nodoc
class _$GitHubLicenseCopyWithImpl<$Res, $Val extends GitHubLicense>
    implements $GitHubLicenseCopyWith<$Res> {
  _$GitHubLicenseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? name = freezed,
    Object? urlString = freezed,
  }) {
    return _then(_value.copyWith(
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      urlString: freezed == urlString
          ? _value.urlString
          : urlString // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GitHubLicenseCopyWith<$Res>
    implements $GitHubLicenseCopyWith<$Res> {
  factory _$$_GitHubLicenseCopyWith(
          _$_GitHubLicense value, $Res Function(_$_GitHubLicense) then) =
      __$$_GitHubLicenseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? key, String? name, String? urlString});
}

/// @nodoc
class __$$_GitHubLicenseCopyWithImpl<$Res>
    extends _$GitHubLicenseCopyWithImpl<$Res, _$_GitHubLicense>
    implements _$$_GitHubLicenseCopyWith<$Res> {
  __$$_GitHubLicenseCopyWithImpl(
      _$_GitHubLicense _value, $Res Function(_$_GitHubLicense) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? name = freezed,
    Object? urlString = freezed,
  }) {
    return _then(_$_GitHubLicense(
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      urlString: freezed == urlString
          ? _value.urlString
          : urlString // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GitHubLicense implements _GitHubLicense {
  const _$_GitHubLicense({this.key, this.name, this.urlString});

  factory _$_GitHubLicense.fromJson(Map<String, dynamic> json) =>
      _$$_GitHubLicenseFromJson(json);

  @override
  final String? key;
  @override
  final String? name;
  @override
  final String? urlString;

  @override
  String toString() {
    return 'GitHubLicense(key: $key, name: $name, urlString: $urlString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GitHubLicense &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.urlString, urlString) ||
                other.urlString == urlString));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, name, urlString);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GitHubLicenseCopyWith<_$_GitHubLicense> get copyWith =>
      __$$_GitHubLicenseCopyWithImpl<_$_GitHubLicense>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GitHubLicenseToJson(
      this,
    );
  }
}

abstract class _GitHubLicense implements GitHubLicense {
  const factory _GitHubLicense(
      {final String? key,
      final String? name,
      final String? urlString}) = _$_GitHubLicense;

  factory _GitHubLicense.fromJson(Map<String, dynamic> json) =
      _$_GitHubLicense.fromJson;

  @override
  String? get key;
  @override
  String? get name;
  @override
  String? get urlString;
  @override
  @JsonKey(ignore: true)
  _$$_GitHubLicenseCopyWith<_$_GitHubLicense> get copyWith =>
      throw _privateConstructorUsedError;
}
