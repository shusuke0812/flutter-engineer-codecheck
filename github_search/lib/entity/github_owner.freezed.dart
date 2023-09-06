// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'github_owner.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GitHubOwner _$GitHubOwnerFromJson(Map<String, dynamic> json) {
  return _GitHubOwner.fromJson(json);
}

/// @nodoc
mixin _$GitHubOwner {
  String? get login => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar_url')
  String? get avatarUrlString => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GitHubOwnerCopyWith<GitHubOwner> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GitHubOwnerCopyWith<$Res> {
  factory $GitHubOwnerCopyWith(
          GitHubOwner value, $Res Function(GitHubOwner) then) =
      _$GitHubOwnerCopyWithImpl<$Res, GitHubOwner>;
  @useResult
  $Res call(
      {String? login, @JsonKey(name: 'avatar_url') String? avatarUrlString});
}

/// @nodoc
class _$GitHubOwnerCopyWithImpl<$Res, $Val extends GitHubOwner>
    implements $GitHubOwnerCopyWith<$Res> {
  _$GitHubOwnerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = freezed,
    Object? avatarUrlString = freezed,
  }) {
    return _then(_value.copyWith(
      login: freezed == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrlString: freezed == avatarUrlString
          ? _value.avatarUrlString
          : avatarUrlString // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GitHubOwnerCopyWith<$Res>
    implements $GitHubOwnerCopyWith<$Res> {
  factory _$$_GitHubOwnerCopyWith(
          _$_GitHubOwner value, $Res Function(_$_GitHubOwner) then) =
      __$$_GitHubOwnerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? login, @JsonKey(name: 'avatar_url') String? avatarUrlString});
}

/// @nodoc
class __$$_GitHubOwnerCopyWithImpl<$Res>
    extends _$GitHubOwnerCopyWithImpl<$Res, _$_GitHubOwner>
    implements _$$_GitHubOwnerCopyWith<$Res> {
  __$$_GitHubOwnerCopyWithImpl(
      _$_GitHubOwner _value, $Res Function(_$_GitHubOwner) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = freezed,
    Object? avatarUrlString = freezed,
  }) {
    return _then(_$_GitHubOwner(
      login: freezed == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrlString: freezed == avatarUrlString
          ? _value.avatarUrlString
          : avatarUrlString // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GitHubOwner implements _GitHubOwner {
  const _$_GitHubOwner(
      {this.login, @JsonKey(name: 'avatar_url') this.avatarUrlString});

  factory _$_GitHubOwner.fromJson(Map<String, dynamic> json) =>
      _$$_GitHubOwnerFromJson(json);

  @override
  final String? login;
  @override
  @JsonKey(name: 'avatar_url')
  final String? avatarUrlString;

  @override
  String toString() {
    return 'GitHubOwner(login: $login, avatarUrlString: $avatarUrlString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GitHubOwner &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.avatarUrlString, avatarUrlString) ||
                other.avatarUrlString == avatarUrlString));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, login, avatarUrlString);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GitHubOwnerCopyWith<_$_GitHubOwner> get copyWith =>
      __$$_GitHubOwnerCopyWithImpl<_$_GitHubOwner>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GitHubOwnerToJson(
      this,
    );
  }
}

abstract class _GitHubOwner implements GitHubOwner {
  const factory _GitHubOwner(
          {final String? login,
          @JsonKey(name: 'avatar_url') final String? avatarUrlString}) =
      _$_GitHubOwner;

  factory _GitHubOwner.fromJson(Map<String, dynamic> json) =
      _$_GitHubOwner.fromJson;

  @override
  String? get login;
  @override
  @JsonKey(name: 'avatar_url')
  String? get avatarUrlString;
  @override
  @JsonKey(ignore: true)
  _$$_GitHubOwnerCopyWith<_$_GitHubOwner> get copyWith =>
      throw _privateConstructorUsedError;
}
