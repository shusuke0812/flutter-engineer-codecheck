// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'github_repository_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GitHubRepositoryList _$GitHubRepositoryListFromJson(Map<String, dynamic> json) {
  return _GitHubRepositoryList.fromJson(json);
}

/// @nodoc
mixin _$GitHubRepositoryList {
  @JsonKey(name: 'total_count')
  int get totalCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'incomplete_results')
  bool? get incompleteResults => throw _privateConstructorUsedError;
  List<GitHubRepository> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GitHubRepositoryListCopyWith<GitHubRepositoryList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GitHubRepositoryListCopyWith<$Res> {
  factory $GitHubRepositoryListCopyWith(GitHubRepositoryList value,
          $Res Function(GitHubRepositoryList) then) =
      _$GitHubRepositoryListCopyWithImpl<$Res, GitHubRepositoryList>;
  @useResult
  $Res call(
      {@JsonKey(name: 'total_count') int totalCount,
      @JsonKey(name: 'incomplete_results') bool? incompleteResults,
      List<GitHubRepository> items});
}

/// @nodoc
class _$GitHubRepositoryListCopyWithImpl<$Res,
        $Val extends GitHubRepositoryList>
    implements $GitHubRepositoryListCopyWith<$Res> {
  _$GitHubRepositoryListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = null,
    Object? incompleteResults = freezed,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      incompleteResults: freezed == incompleteResults
          ? _value.incompleteResults
          : incompleteResults // ignore: cast_nullable_to_non_nullable
              as bool?,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<GitHubRepository>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GitHubRepositoryListCopyWith<$Res>
    implements $GitHubRepositoryListCopyWith<$Res> {
  factory _$$_GitHubRepositoryListCopyWith(_$_GitHubRepositoryList value,
          $Res Function(_$_GitHubRepositoryList) then) =
      __$$_GitHubRepositoryListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'total_count') int totalCount,
      @JsonKey(name: 'incomplete_results') bool? incompleteResults,
      List<GitHubRepository> items});
}

/// @nodoc
class __$$_GitHubRepositoryListCopyWithImpl<$Res>
    extends _$GitHubRepositoryListCopyWithImpl<$Res, _$_GitHubRepositoryList>
    implements _$$_GitHubRepositoryListCopyWith<$Res> {
  __$$_GitHubRepositoryListCopyWithImpl(_$_GitHubRepositoryList _value,
      $Res Function(_$_GitHubRepositoryList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = null,
    Object? incompleteResults = freezed,
    Object? items = null,
  }) {
    return _then(_$_GitHubRepositoryList(
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      incompleteResults: freezed == incompleteResults
          ? _value.incompleteResults
          : incompleteResults // ignore: cast_nullable_to_non_nullable
              as bool?,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<GitHubRepository>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GitHubRepositoryList implements _GitHubRepositoryList {
  const _$_GitHubRepositoryList(
      {@JsonKey(name: 'total_count') required this.totalCount,
      @JsonKey(name: 'incomplete_results') this.incompleteResults,
      required final List<GitHubRepository> items})
      : _items = items;

  factory _$_GitHubRepositoryList.fromJson(Map<String, dynamic> json) =>
      _$$_GitHubRepositoryListFromJson(json);

  @override
  @JsonKey(name: 'total_count')
  final int totalCount;
  @override
  @JsonKey(name: 'incomplete_results')
  final bool? incompleteResults;
  final List<GitHubRepository> _items;
  @override
  List<GitHubRepository> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'GitHubRepositoryList(totalCount: $totalCount, incompleteResults: $incompleteResults, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GitHubRepositoryList &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.incompleteResults, incompleteResults) ||
                other.incompleteResults == incompleteResults) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, totalCount, incompleteResults,
      const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GitHubRepositoryListCopyWith<_$_GitHubRepositoryList> get copyWith =>
      __$$_GitHubRepositoryListCopyWithImpl<_$_GitHubRepositoryList>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GitHubRepositoryListToJson(
      this,
    );
  }
}

abstract class _GitHubRepositoryList implements GitHubRepositoryList {
  const factory _GitHubRepositoryList(
      {@JsonKey(name: 'total_count') required final int totalCount,
      @JsonKey(name: 'incomplete_results') final bool? incompleteResults,
      required final List<GitHubRepository> items}) = _$_GitHubRepositoryList;

  factory _GitHubRepositoryList.fromJson(Map<String, dynamic> json) =
      _$_GitHubRepositoryList.fromJson;

  @override
  @JsonKey(name: 'total_count')
  int get totalCount;
  @override
  @JsonKey(name: 'incomplete_results')
  bool? get incompleteResults;
  @override
  List<GitHubRepository> get items;
  @override
  @JsonKey(ignore: true)
  _$$_GitHubRepositoryListCopyWith<_$_GitHubRepositoryList> get copyWith =>
      throw _privateConstructorUsedError;
}
