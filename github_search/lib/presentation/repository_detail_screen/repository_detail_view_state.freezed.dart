// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repository_detail_view_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RepositoryDetailViewState {
  String get htmlUrl => throw _privateConstructorUsedError;
  GetRepository? get getRepository => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RepositoryDetailViewStateCopyWith<RepositoryDetailViewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepositoryDetailViewStateCopyWith<$Res> {
  factory $RepositoryDetailViewStateCopyWith(RepositoryDetailViewState value,
          $Res Function(RepositoryDetailViewState) then) =
      _$RepositoryDetailViewStateCopyWithImpl<$Res, RepositoryDetailViewState>;
  @useResult
  $Res call(
      {String htmlUrl, GetRepository? getRepository, String errorMessage});

  $GetRepositoryCopyWith<$Res>? get getRepository;
}

/// @nodoc
class _$RepositoryDetailViewStateCopyWithImpl<$Res,
        $Val extends RepositoryDetailViewState>
    implements $RepositoryDetailViewStateCopyWith<$Res> {
  _$RepositoryDetailViewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? htmlUrl = null,
    Object? getRepository = freezed,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      htmlUrl: null == htmlUrl
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String,
      getRepository: freezed == getRepository
          ? _value.getRepository
          : getRepository // ignore: cast_nullable_to_non_nullable
              as GetRepository?,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GetRepositoryCopyWith<$Res>? get getRepository {
    if (_value.getRepository == null) {
      return null;
    }

    return $GetRepositoryCopyWith<$Res>(_value.getRepository!, (value) {
      return _then(_value.copyWith(getRepository: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RepisitoryDetailViewStateImplCopyWith<$Res>
    implements $RepositoryDetailViewStateCopyWith<$Res> {
  factory _$$RepisitoryDetailViewStateImplCopyWith(
          _$RepisitoryDetailViewStateImpl value,
          $Res Function(_$RepisitoryDetailViewStateImpl) then) =
      __$$RepisitoryDetailViewStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String htmlUrl, GetRepository? getRepository, String errorMessage});

  @override
  $GetRepositoryCopyWith<$Res>? get getRepository;
}

/// @nodoc
class __$$RepisitoryDetailViewStateImplCopyWithImpl<$Res>
    extends _$RepositoryDetailViewStateCopyWithImpl<$Res,
        _$RepisitoryDetailViewStateImpl>
    implements _$$RepisitoryDetailViewStateImplCopyWith<$Res> {
  __$$RepisitoryDetailViewStateImplCopyWithImpl(
      _$RepisitoryDetailViewStateImpl _value,
      $Res Function(_$RepisitoryDetailViewStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? htmlUrl = null,
    Object? getRepository = freezed,
    Object? errorMessage = null,
  }) {
    return _then(_$RepisitoryDetailViewStateImpl(
      htmlUrl: null == htmlUrl
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String,
      getRepository: freezed == getRepository
          ? _value.getRepository
          : getRepository // ignore: cast_nullable_to_non_nullable
              as GetRepository?,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RepisitoryDetailViewStateImpl implements _RepisitoryDetailViewState {
  const _$RepisitoryDetailViewStateImpl(
      {this.htmlUrl = "https://flutter.dev/",
      this.getRepository,
      this.errorMessage = ""});

  @override
  @JsonKey()
  final String htmlUrl;
  @override
  final GetRepository? getRepository;
  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'RepositoryDetailViewState(htmlUrl: $htmlUrl, getRepository: $getRepository, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepisitoryDetailViewStateImpl &&
            (identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl) &&
            (identical(other.getRepository, getRepository) ||
                other.getRepository == getRepository) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, htmlUrl, getRepository, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RepisitoryDetailViewStateImplCopyWith<_$RepisitoryDetailViewStateImpl>
      get copyWith => __$$RepisitoryDetailViewStateImplCopyWithImpl<
          _$RepisitoryDetailViewStateImpl>(this, _$identity);
}

abstract class _RepisitoryDetailViewState implements RepositoryDetailViewState {
  const factory _RepisitoryDetailViewState(
      {final String htmlUrl,
      final GetRepository? getRepository,
      final String errorMessage}) = _$RepisitoryDetailViewStateImpl;

  @override
  String get htmlUrl;
  @override
  GetRepository? get getRepository;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$RepisitoryDetailViewStateImplCopyWith<_$RepisitoryDetailViewStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
