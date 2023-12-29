// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'readme.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Readme _$ReadmeFromJson(Map<String, dynamic> json) {
  return _Readme.fromJson(json);
}

/// @nodoc
mixin _$Readme {
  @JsonKey(name: 'html_url')
  String? get htmlUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReadmeCopyWith<Readme> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadmeCopyWith<$Res> {
  factory $ReadmeCopyWith(Readme value, $Res Function(Readme) then) =
      _$ReadmeCopyWithImpl<$Res, Readme>;
  @useResult
  $Res call({@JsonKey(name: 'html_url') String? htmlUrl});
}

/// @nodoc
class _$ReadmeCopyWithImpl<$Res, $Val extends Readme>
    implements $ReadmeCopyWith<$Res> {
  _$ReadmeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? htmlUrl = freezed,
  }) {
    return _then(_value.copyWith(
      htmlUrl: freezed == htmlUrl
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReadmeImplCopyWith<$Res> implements $ReadmeCopyWith<$Res> {
  factory _$$ReadmeImplCopyWith(
          _$ReadmeImpl value, $Res Function(_$ReadmeImpl) then) =
      __$$ReadmeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'html_url') String? htmlUrl});
}

/// @nodoc
class __$$ReadmeImplCopyWithImpl<$Res>
    extends _$ReadmeCopyWithImpl<$Res, _$ReadmeImpl>
    implements _$$ReadmeImplCopyWith<$Res> {
  __$$ReadmeImplCopyWithImpl(
      _$ReadmeImpl _value, $Res Function(_$ReadmeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? htmlUrl = freezed,
  }) {
    return _then(_$ReadmeImpl(
      htmlUrl: freezed == htmlUrl
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReadmeImpl implements _Readme {
  const _$ReadmeImpl({@JsonKey(name: 'html_url') required this.htmlUrl});

  factory _$ReadmeImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReadmeImplFromJson(json);

  @override
  @JsonKey(name: 'html_url')
  final String? htmlUrl;

  @override
  String toString() {
    return 'Readme(htmlUrl: $htmlUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadmeImpl &&
            (identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, htmlUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadmeImplCopyWith<_$ReadmeImpl> get copyWith =>
      __$$ReadmeImplCopyWithImpl<_$ReadmeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReadmeImplToJson(
      this,
    );
  }
}

abstract class _Readme implements Readme {
  const factory _Readme(
          {@JsonKey(name: 'html_url') required final String? htmlUrl}) =
      _$ReadmeImpl;

  factory _Readme.fromJson(Map<String, dynamic> json) = _$ReadmeImpl.fromJson;

  @override
  @JsonKey(name: 'html_url')
  String? get htmlUrl;
  @override
  @JsonKey(ignore: true)
  _$$ReadmeImplCopyWith<_$ReadmeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
