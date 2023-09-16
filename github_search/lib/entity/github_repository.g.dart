// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_repository.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GitHubRepository _$$_GitHubRepositoryFromJson(Map<String, dynamic> json) =>
    _$_GitHubRepository(
      name: json['name'] as String,
      fullName: json['full_name'] as String,
      language: json['language'] as String?,
      starCount: json['stargazers_count'] as int,
      watchCount: json['watchers_count'] as int,
      forkCount: json['forks_count'] as int,
      issueCount: json['open_issues_count'] as int,
      description: json['description'] as String?,
      homePage: json['homepage'] as String?,
      owner: json['owner'] == null
          ? null
          : GitHubOwner.fromJson(json['owner'] as Map<String, dynamic>),
      license: json['license'] == null
          ? null
          : GitHubLicense.fromJson(json['license'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GitHubRepositoryToJson(_$_GitHubRepository instance) =>
    <String, dynamic>{
      'name': instance.name,
      'full_name': instance.fullName,
      'language': instance.language,
      'stargazers_count': instance.starCount,
      'watchers_count': instance.watchCount,
      'forks_count': instance.forkCount,
      'open_issues_count': instance.issueCount,
      'description': instance.description,
      'homepage': instance.homePage,
      'owner': instance.owner,
      'license': instance.license,
    };
