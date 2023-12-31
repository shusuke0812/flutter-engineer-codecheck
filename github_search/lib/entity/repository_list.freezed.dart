// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repository_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RepositoryList _$RepositoryListFromJson(Map<String, dynamic> json) {
  return _RepositoryList.fromJson(json);
}

/// @nodoc
mixin _$RepositoryList {
  @JsonKey(name: 'total_count')
  int get totalCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'incomplete_results')
  bool get incompleteResults => throw _privateConstructorUsedError;
  List<Repository> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RepositoryListCopyWith<RepositoryList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepositoryListCopyWith<$Res> {
  factory $RepositoryListCopyWith(
          RepositoryList value, $Res Function(RepositoryList) then) =
      _$RepositoryListCopyWithImpl<$Res, RepositoryList>;
  @useResult
  $Res call(
      {@JsonKey(name: 'total_count') int totalCount,
      @JsonKey(name: 'incomplete_results') bool incompleteResults,
      List<Repository> items});
}

/// @nodoc
class _$RepositoryListCopyWithImpl<$Res, $Val extends RepositoryList>
    implements $RepositoryListCopyWith<$Res> {
  _$RepositoryListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = null,
    Object? incompleteResults = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      incompleteResults: null == incompleteResults
          ? _value.incompleteResults
          : incompleteResults // ignore: cast_nullable_to_non_nullable
              as bool,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Repository>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RepositoryListImplCopyWith<$Res>
    implements $RepositoryListCopyWith<$Res> {
  factory _$$RepositoryListImplCopyWith(_$RepositoryListImpl value,
          $Res Function(_$RepositoryListImpl) then) =
      __$$RepositoryListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'total_count') int totalCount,
      @JsonKey(name: 'incomplete_results') bool incompleteResults,
      List<Repository> items});
}

/// @nodoc
class __$$RepositoryListImplCopyWithImpl<$Res>
    extends _$RepositoryListCopyWithImpl<$Res, _$RepositoryListImpl>
    implements _$$RepositoryListImplCopyWith<$Res> {
  __$$RepositoryListImplCopyWithImpl(
      _$RepositoryListImpl _value, $Res Function(_$RepositoryListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = null,
    Object? incompleteResults = null,
    Object? items = null,
  }) {
    return _then(_$RepositoryListImpl(
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      incompleteResults: null == incompleteResults
          ? _value.incompleteResults
          : incompleteResults // ignore: cast_nullable_to_non_nullable
              as bool,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Repository>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RepositoryListImpl implements _RepositoryList {
  const _$RepositoryListImpl(
      {@JsonKey(name: 'total_count') required this.totalCount,
      @JsonKey(name: 'incomplete_results') required this.incompleteResults,
      required final List<Repository> items})
      : _items = items;

  factory _$RepositoryListImpl.fromJson(Map<String, dynamic> json) =>
      _$$RepositoryListImplFromJson(json);

  @override
  @JsonKey(name: 'total_count')
  final int totalCount;
  @override
  @JsonKey(name: 'incomplete_results')
  final bool incompleteResults;
  final List<Repository> _items;
  @override
  List<Repository> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'RepositoryList(totalCount: $totalCount, incompleteResults: $incompleteResults, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepositoryListImpl &&
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
  _$$RepositoryListImplCopyWith<_$RepositoryListImpl> get copyWith =>
      __$$RepositoryListImplCopyWithImpl<_$RepositoryListImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RepositoryListImplToJson(
      this,
    );
  }
}

abstract class _RepositoryList implements RepositoryList {
  const factory _RepositoryList(
      {@JsonKey(name: 'total_count') required final int totalCount,
      @JsonKey(name: 'incomplete_results')
      required final bool incompleteResults,
      required final List<Repository> items}) = _$RepositoryListImpl;

  factory _RepositoryList.fromJson(Map<String, dynamic> json) =
      _$RepositoryListImpl.fromJson;

  @override
  @JsonKey(name: 'total_count')
  int get totalCount;
  @override
  @JsonKey(name: 'incomplete_results')
  bool get incompleteResults;
  @override
  List<Repository> get items;
  @override
  @JsonKey(ignore: true)
  _$$RepositoryListImplCopyWith<_$RepositoryListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
