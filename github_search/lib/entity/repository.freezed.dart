// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repository.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Repository _$RepositoryFromJson(Map<String, dynamic> json) {
  return _Repository.fromJson(json);
}

/// @nodoc
mixin _$Repository {
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
  Owner? get owner => throw _privateConstructorUsedError;
  License? get license => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RepositoryCopyWith<Repository> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepositoryCopyWith<$Res> {
  factory $RepositoryCopyWith(
          Repository value, $Res Function(Repository) then) =
      _$RepositoryCopyWithImpl<$Res, Repository>;
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
      Owner? owner,
      License? license});

  $OwnerCopyWith<$Res>? get owner;
  $LicenseCopyWith<$Res>? get license;
}

/// @nodoc
class _$RepositoryCopyWithImpl<$Res, $Val extends Repository>
    implements $RepositoryCopyWith<$Res> {
  _$RepositoryCopyWithImpl(this._value, this._then);

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
              as Owner?,
      license: freezed == license
          ? _value.license
          : license // ignore: cast_nullable_to_non_nullable
              as License?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OwnerCopyWith<$Res>? get owner {
    if (_value.owner == null) {
      return null;
    }

    return $OwnerCopyWith<$Res>(_value.owner!, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LicenseCopyWith<$Res>? get license {
    if (_value.license == null) {
      return null;
    }

    return $LicenseCopyWith<$Res>(_value.license!, (value) {
      return _then(_value.copyWith(license: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RepositoryImplCopyWith<$Res>
    implements $RepositoryCopyWith<$Res> {
  factory _$$RepositoryImplCopyWith(
          _$RepositoryImpl value, $Res Function(_$RepositoryImpl) then) =
      __$$RepositoryImplCopyWithImpl<$Res>;
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
      Owner? owner,
      License? license});

  @override
  $OwnerCopyWith<$Res>? get owner;
  @override
  $LicenseCopyWith<$Res>? get license;
}

/// @nodoc
class __$$RepositoryImplCopyWithImpl<$Res>
    extends _$RepositoryCopyWithImpl<$Res, _$RepositoryImpl>
    implements _$$RepositoryImplCopyWith<$Res> {
  __$$RepositoryImplCopyWithImpl(
      _$RepositoryImpl _value, $Res Function(_$RepositoryImpl) _then)
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
    return _then(_$RepositoryImpl(
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
              as Owner?,
      license: freezed == license
          ? _value.license
          : license // ignore: cast_nullable_to_non_nullable
              as License?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RepositoryImpl implements _Repository {
  const _$RepositoryImpl(
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

  factory _$RepositoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$RepositoryImplFromJson(json);

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
  final Owner? owner;
  @override
  final License? license;

  @override
  String toString() {
    return 'Repository(name: $name, fullName: $fullName, language: $language, starCount: $starCount, watchCount: $watchCount, forkCount: $forkCount, issueCount: $issueCount, description: $description, homePage: $homePage, owner: $owner, license: $license)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepositoryImpl &&
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
  _$$RepositoryImplCopyWith<_$RepositoryImpl> get copyWith =>
      __$$RepositoryImplCopyWithImpl<_$RepositoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RepositoryImplToJson(
      this,
    );
  }
}

abstract class _Repository implements Repository {
  const factory _Repository(
      {required final String name,
      @JsonKey(name: 'full_name') required final String fullName,
      required final String? language,
      @JsonKey(name: 'stargazers_count') required final int starCount,
      @JsonKey(name: 'watchers_count') required final int watchCount,
      @JsonKey(name: 'forks_count') required final int forkCount,
      @JsonKey(name: 'open_issues_count') required final int issueCount,
      required final String? description,
      @JsonKey(name: 'homepage') required final String? homePage,
      required final Owner? owner,
      required final License? license}) = _$RepositoryImpl;

  factory _Repository.fromJson(Map<String, dynamic> json) =
      _$RepositoryImpl.fromJson;

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
  Owner? get owner;
  @override
  License? get license;
  @override
  @JsonKey(ignore: true)
  _$$RepositoryImplCopyWith<_$RepositoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GetRepository _$GetRepositoryFromJson(Map<String, dynamic> json) {
  return _GetRepository.fromJson(json);
}

/// @nodoc
mixin _$GetRepository {
  @JsonKey(name: 'subscribers_count')
  int get subscribersCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetRepositoryCopyWith<GetRepository> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetRepositoryCopyWith<$Res> {
  factory $GetRepositoryCopyWith(
          GetRepository value, $Res Function(GetRepository) then) =
      _$GetRepositoryCopyWithImpl<$Res, GetRepository>;
  @useResult
  $Res call({@JsonKey(name: 'subscribers_count') int subscribersCount});
}

/// @nodoc
class _$GetRepositoryCopyWithImpl<$Res, $Val extends GetRepository>
    implements $GetRepositoryCopyWith<$Res> {
  _$GetRepositoryCopyWithImpl(this._value, this._then);

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
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetRepositoryImplCopyWith<$Res>
    implements $GetRepositoryCopyWith<$Res> {
  factory _$$GetRepositoryImplCopyWith(
          _$GetRepositoryImpl value, $Res Function(_$GetRepositoryImpl) then) =
      __$$GetRepositoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'subscribers_count') int subscribersCount});
}

/// @nodoc
class __$$GetRepositoryImplCopyWithImpl<$Res>
    extends _$GetRepositoryCopyWithImpl<$Res, _$GetRepositoryImpl>
    implements _$$GetRepositoryImplCopyWith<$Res> {
  __$$GetRepositoryImplCopyWithImpl(
      _$GetRepositoryImpl _value, $Res Function(_$GetRepositoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subscribersCount = null,
  }) {
    return _then(_$GetRepositoryImpl(
      subscribersCount: null == subscribersCount
          ? _value.subscribersCount
          : subscribersCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetRepositoryImpl implements _GetRepository {
  const _$GetRepositoryImpl(
      {@JsonKey(name: 'subscribers_count') required this.subscribersCount});

  factory _$GetRepositoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetRepositoryImplFromJson(json);

  @override
  @JsonKey(name: 'subscribers_count')
  final int subscribersCount;

  @override
  String toString() {
    return 'GetRepository(subscribersCount: $subscribersCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRepositoryImpl &&
            (identical(other.subscribersCount, subscribersCount) ||
                other.subscribersCount == subscribersCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, subscribersCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetRepositoryImplCopyWith<_$GetRepositoryImpl> get copyWith =>
      __$$GetRepositoryImplCopyWithImpl<_$GetRepositoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetRepositoryImplToJson(
      this,
    );
  }
}

abstract class _GetRepository implements GetRepository {
  const factory _GetRepository(
      {@JsonKey(name: 'subscribers_count')
      required final int subscribersCount}) = _$GetRepositoryImpl;

  factory _GetRepository.fromJson(Map<String, dynamic> json) =
      _$GetRepositoryImpl.fromJson;

  @override
  @JsonKey(name: 'subscribers_count')
  int get subscribersCount;
  @override
  @JsonKey(ignore: true)
  _$$GetRepositoryImplCopyWith<_$GetRepositoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
