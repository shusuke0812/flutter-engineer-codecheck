// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_view_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchViewState {
  RepositoryList? get list => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchViewStateCopyWith<SearchViewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchViewStateCopyWith<$Res> {
  factory $SearchViewStateCopyWith(
          SearchViewState value, $Res Function(SearchViewState) then) =
      _$SearchViewStateCopyWithImpl<$Res, SearchViewState>;
  @useResult
  $Res call({RepositoryList? list, String errorMessage});

  $RepositoryListCopyWith<$Res>? get list;
}

/// @nodoc
class _$SearchViewStateCopyWithImpl<$Res, $Val extends SearchViewState>
    implements $SearchViewStateCopyWith<$Res> {
  _$SearchViewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = freezed,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      list: freezed == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as RepositoryList?,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RepositoryListCopyWith<$Res>? get list {
    if (_value.list == null) {
      return null;
    }

    return $RepositoryListCopyWith<$Res>(_value.list!, (value) {
      return _then(_value.copyWith(list: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SearchViewStateImplCopyWith<$Res>
    implements $SearchViewStateCopyWith<$Res> {
  factory _$$SearchViewStateImplCopyWith(_$SearchViewStateImpl value,
          $Res Function(_$SearchViewStateImpl) then) =
      __$$SearchViewStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RepositoryList? list, String errorMessage});

  @override
  $RepositoryListCopyWith<$Res>? get list;
}

/// @nodoc
class __$$SearchViewStateImplCopyWithImpl<$Res>
    extends _$SearchViewStateCopyWithImpl<$Res, _$SearchViewStateImpl>
    implements _$$SearchViewStateImplCopyWith<$Res> {
  __$$SearchViewStateImplCopyWithImpl(
      _$SearchViewStateImpl _value, $Res Function(_$SearchViewStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = freezed,
    Object? errorMessage = null,
  }) {
    return _then(_$SearchViewStateImpl(
      list: freezed == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as RepositoryList?,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchViewStateImpl implements _SearchViewState {
  const _$SearchViewStateImpl({this.list, this.errorMessage = ''});

  @override
  final RepositoryList? list;
  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'SearchViewState(list: $list, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchViewStateImpl &&
            (identical(other.list, list) || other.list == list) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, list, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchViewStateImplCopyWith<_$SearchViewStateImpl> get copyWith =>
      __$$SearchViewStateImplCopyWithImpl<_$SearchViewStateImpl>(
          this, _$identity);
}

abstract class _SearchViewState implements SearchViewState {
  const factory _SearchViewState(
      {final RepositoryList? list,
      final String errorMessage}) = _$SearchViewStateImpl;

  @override
  RepositoryList? get list;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$SearchViewStateImplCopyWith<_$SearchViewStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
