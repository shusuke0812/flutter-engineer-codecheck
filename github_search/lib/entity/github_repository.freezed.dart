// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'github_repository.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GitHubRepository _$GitHubRepositoryFromJson(Map<String, dynamic> json) {
  return _GitHubRepository.fromJson(json);
}

/// @nodoc
mixin _$GitHubRepository {
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_name')
  String get fullName => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  @JsonKey(name: 'stargazers_count')
  int get starCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'watchers_count')
  int get watchCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'forks_count')
  int get forkCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'open_issues_count')
  int get issueCount => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'homepage')
  String? get homePage => throw _privateConstructorUsedError;
  GitHubOwner? get owner => throw _privateConstructorUsedError;
  GitHubLicense? get license => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GitHubRepositoryCopyWith<GitHubRepository> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GitHubRepositoryCopyWith<$Res> {
  factory $GitHubRepositoryCopyWith(
          GitHubRepository value, $Res Function(GitHubRepository) then) =
      _$GitHubRepositoryCopyWithImpl<$Res, GitHubRepository>;
  @useResult
  $Res call(
      {String name,
      @JsonKey(name: 'full_name') String fullName,
      String? language,
      @JsonKey(name: 'stargazers_count') int starCount,
      @JsonKey(name: 'watchers_count') int watchCount,
      @JsonKey(name: 'forks_count') int forkCount,
      @JsonKey(name: 'open_issues_count') int issueCount,
      String? description,
      @JsonKey(name: 'homepage') String? homePage,
      GitHubOwner? owner,
      GitHubLicense? license});

  $GitHubOwnerCopyWith<$Res>? get owner;
  $GitHubLicenseCopyWith<$Res>? get license;
}

/// @nodoc
class _$GitHubRepositoryCopyWithImpl<$Res, $Val extends GitHubRepository>
    implements $GitHubRepositoryCopyWith<$Res> {
  _$GitHubRepositoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? fullName = null,
    Object? language = freezed,
    Object? starCount = null,
    Object? watchCount = null,
    Object? forkCount = null,
    Object? issueCount = null,
    Object? description = freezed,
    Object? homePage = freezed,
    Object? owner = freezed,
    Object? license = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      starCount: null == starCount
          ? _value.starCount
          : starCount // ignore: cast_nullable_to_non_nullable
              as int,
      watchCount: null == watchCount
          ? _value.watchCount
          : watchCount // ignore: cast_nullable_to_non_nullable
              as int,
      forkCount: null == forkCount
          ? _value.forkCount
          : forkCount // ignore: cast_nullable_to_non_nullable
              as int,
      issueCount: null == issueCount
          ? _value.issueCount
          : issueCount // ignore: cast_nullable_to_non_nullable
              as int,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      homePage: freezed == homePage
          ? _value.homePage
          : homePage // ignore: cast_nullable_to_non_nullable
              as String?,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as GitHubOwner?,
      license: freezed == license
          ? _value.license
          : license // ignore: cast_nullable_to_non_nullable
              as GitHubLicense?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GitHubOwnerCopyWith<$Res>? get owner {
    if (_value.owner == null) {
      return null;
    }

    return $GitHubOwnerCopyWith<$Res>(_value.owner!, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GitHubLicenseCopyWith<$Res>? get license {
    if (_value.license == null) {
      return null;
    }

    return $GitHubLicenseCopyWith<$Res>(_value.license!, (value) {
      return _then(_value.copyWith(license: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GitHubRepositoryCopyWith<$Res>
    implements $GitHubRepositoryCopyWith<$Res> {
  factory _$$_GitHubRepositoryCopyWith(
          _$_GitHubRepository value, $Res Function(_$_GitHubRepository) then) =
      __$$_GitHubRepositoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      @JsonKey(name: 'full_name') String fullName,
      String? language,
      @JsonKey(name: 'stargazers_count') int starCount,
      @JsonKey(name: 'watchers_count') int watchCount,
      @JsonKey(name: 'forks_count') int forkCount,
      @JsonKey(name: 'open_issues_count') int issueCount,
      String? description,
      @JsonKey(name: 'homepage') String? homePage,
      GitHubOwner? owner,
      GitHubLicense? license});

  @override
  $GitHubOwnerCopyWith<$Res>? get owner;
  @override
  $GitHubLicenseCopyWith<$Res>? get license;
}

/// @nodoc
class __$$_GitHubRepositoryCopyWithImpl<$Res>
    extends _$GitHubRepositoryCopyWithImpl<$Res, _$_GitHubRepository>
    implements _$$_GitHubRepositoryCopyWith<$Res> {
  __$$_GitHubRepositoryCopyWithImpl(
      _$_GitHubRepository _value, $Res Function(_$_GitHubRepository) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? fullName = null,
    Object? language = freezed,
    Object? starCount = null,
    Object? watchCount = null,
    Object? forkCount = null,
    Object? issueCount = null,
    Object? description = freezed,
    Object? homePage = freezed,
    Object? owner = freezed,
    Object? license = freezed,
  }) {
    return _then(_$_GitHubRepository(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      starCount: null == starCount
          ? _value.starCount
          : starCount // ignore: cast_nullable_to_non_nullable
              as int,
      watchCount: null == watchCount
          ? _value.watchCount
          : watchCount // ignore: cast_nullable_to_non_nullable
              as int,
      forkCount: null == forkCount
          ? _value.forkCount
          : forkCount // ignore: cast_nullable_to_non_nullable
              as int,
      issueCount: null == issueCount
          ? _value.issueCount
          : issueCount // ignore: cast_nullable_to_non_nullable
              as int,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      homePage: freezed == homePage
          ? _value.homePage
          : homePage // ignore: cast_nullable_to_non_nullable
              as String?,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as GitHubOwner?,
      license: freezed == license
          ? _value.license
          : license // ignore: cast_nullable_to_non_nullable
              as GitHubLicense?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GitHubRepository implements _GitHubRepository {
  const _$_GitHubRepository(
      {required this.name,
      @JsonKey(name: 'full_name') required this.fullName,
      required this.language,
      @JsonKey(name: 'stargazers_count') required this.starCount,
      @JsonKey(name: 'watchers_count') required this.watchCount,
      @JsonKey(name: 'forks_count') required this.forkCount,
      @JsonKey(name: 'open_issues_count') required this.issueCount,
      required this.description,
      @JsonKey(name: 'homepage') required this.homePage,
      required this.owner,
      required this.license});

  factory _$_GitHubRepository.fromJson(Map<String, dynamic> json) =>
      _$$_GitHubRepositoryFromJson(json);

  @override
  final String name;
  @override
  @JsonKey(name: 'full_name')
  final String fullName;
  @override
  final String? language;
  @override
  @JsonKey(name: 'stargazers_count')
  final int starCount;
  @override
  @JsonKey(name: 'watchers_count')
  final int watchCount;
  @override
  @JsonKey(name: 'forks_count')
  final int forkCount;
  @override
  @JsonKey(name: 'open_issues_count')
  final int issueCount;
  @override
  final String? description;
  @override
  @JsonKey(name: 'homepage')
  final String? homePage;
  @override
  final GitHubOwner? owner;
  @override
  final GitHubLicense? license;

  @override
  String toString() {
    return 'GitHubRepository(name: $name, fullName: $fullName, language: $language, starCount: $starCount, watchCount: $watchCount, forkCount: $forkCount, issueCount: $issueCount, description: $description, homePage: $homePage, owner: $owner, license: $license)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GitHubRepository &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.starCount, starCount) ||
                other.starCount == starCount) &&
            (identical(other.watchCount, watchCount) ||
                other.watchCount == watchCount) &&
            (identical(other.forkCount, forkCount) ||
                other.forkCount == forkCount) &&
            (identical(other.issueCount, issueCount) ||
                other.issueCount == issueCount) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.homePage, homePage) ||
                other.homePage == homePage) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.license, license) || other.license == license));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      fullName,
      language,
      starCount,
      watchCount,
      forkCount,
      issueCount,
      description,
      homePage,
      owner,
      license);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GitHubRepositoryCopyWith<_$_GitHubRepository> get copyWith =>
      __$$_GitHubRepositoryCopyWithImpl<_$_GitHubRepository>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GitHubRepositoryToJson(
      this,
    );
  }
}

abstract class _GitHubRepository implements GitHubRepository {
  const factory _GitHubRepository(
      {required final String name,
      @JsonKey(name: 'full_name') required final String fullName,
      required final String? language,
      @JsonKey(name: 'stargazers_count') required final int starCount,
      @JsonKey(name: 'watchers_count') required final int watchCount,
      @JsonKey(name: 'forks_count') required final int forkCount,
      @JsonKey(name: 'open_issues_count') required final int issueCount,
      required final String? description,
      @JsonKey(name: 'homepage') required final String? homePage,
      required final GitHubOwner? owner,
      required final GitHubLicense? license}) = _$_GitHubRepository;

  factory _GitHubRepository.fromJson(Map<String, dynamic> json) =
      _$_GitHubRepository.fromJson;

  @override
  String get name;
  @override
  @JsonKey(name: 'full_name')
  String get fullName;
  @override
  String? get language;
  @override
  @JsonKey(name: 'stargazers_count')
  int get starCount;
  @override
  @JsonKey(name: 'watchers_count')
  int get watchCount;
  @override
  @JsonKey(name: 'forks_count')
  int get forkCount;
  @override
  @JsonKey(name: 'open_issues_count')
  int get issueCount;
  @override
  String? get description;
  @override
  @JsonKey(name: 'homepage')
  String? get homePage;
  @override
  GitHubOwner? get owner;
  @override
  GitHubLicense? get license;
  @override
  @JsonKey(ignore: true)
  _$$_GitHubRepositoryCopyWith<_$_GitHubRepository> get copyWith =>
      throw _privateConstructorUsedError;
}

GitHubGetRepository _$GitHubGetRepositoryFromJson(Map<String, dynamic> json) {
  return _GitHubGetRepository.fromJson(json);
}

/// @nodoc
mixin _$GitHubGetRepository {
  @JsonKey(name: 'subscribers_count')
  String get subscribersCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GitHubGetRepositoryCopyWith<GitHubGetRepository> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GitHubGetRepositoryCopyWith<$Res> {
  factory $GitHubGetRepositoryCopyWith(
          GitHubGetRepository value, $Res Function(GitHubGetRepository) then) =
      _$GitHubGetRepositoryCopyWithImpl<$Res, GitHubGetRepository>;
  @useResult
  $Res call({@JsonKey(name: 'subscribers_count') String subscribersCount});
}

/// @nodoc
class _$GitHubGetRepositoryCopyWithImpl<$Res, $Val extends GitHubGetRepository>
    implements $GitHubGetRepositoryCopyWith<$Res> {
  _$GitHubGetRepositoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subscribersCount = null,
  }) {
    return _then(_value.copyWith(
      subscribersCount: null == subscribersCount
          ? _value.subscribersCount
          : subscribersCount // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GitHubGetRepositoryCopyWith<$Res>
    implements $GitHubGetRepositoryCopyWith<$Res> {
  factory _$$_GitHubGetRepositoryCopyWith(_$_GitHubGetRepository value,
          $Res Function(_$_GitHubGetRepository) then) =
      __$$_GitHubGetRepositoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'subscribers_count') String subscribersCount});
}

/// @nodoc
class __$$_GitHubGetRepositoryCopyWithImpl<$Res>
    extends _$GitHubGetRepositoryCopyWithImpl<$Res, _$_GitHubGetRepository>
    implements _$$_GitHubGetRepositoryCopyWith<$Res> {
  __$$_GitHubGetRepositoryCopyWithImpl(_$_GitHubGetRepository _value,
      $Res Function(_$_GitHubGetRepository) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subscribersCount = null,
  }) {
    return _then(_$_GitHubGetRepository(
      subscribersCount: null == subscribersCount
          ? _value.subscribersCount
          : subscribersCount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GitHubGetRepository implements _GitHubGetRepository {
  const _$_GitHubGetRepository(
      {@JsonKey(name: 'subscribers_count') required this.subscribersCount});

  factory _$_GitHubGetRepository.fromJson(Map<String, dynamic> json) =>
      _$$_GitHubGetRepositoryFromJson(json);

  @override
  @JsonKey(name: 'subscribers_count')
  final String subscribersCount;

  @override
  String toString() {
    return 'GitHubGetRepository(subscribersCount: $subscribersCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GitHubGetRepository &&
            (identical(other.subscribersCount, subscribersCount) ||
                other.subscribersCount == subscribersCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, subscribersCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GitHubGetRepositoryCopyWith<_$_GitHubGetRepository> get copyWith =>
      __$$_GitHubGetRepositoryCopyWithImpl<_$_GitHubGetRepository>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GitHubGetRepositoryToJson(
      this,
    );
  }
}

abstract class _GitHubGetRepository implements GitHubGetRepository {
  const factory _GitHubGetRepository(
      {@JsonKey(name: 'subscribers_count')
      required final String subscribersCount}) = _$_GitHubGetRepository;

  factory _GitHubGetRepository.fromJson(Map<String, dynamic> json) =
      _$_GitHubGetRepository.fromJson;

  @override
  @JsonKey(name: 'subscribers_count')
  String get subscribersCount;
  @override
  @JsonKey(ignore: true)
  _$$_GitHubGetRepositoryCopyWith<_$_GitHubGetRepository> get copyWith =>
      throw _privateConstructorUsedError;
}
