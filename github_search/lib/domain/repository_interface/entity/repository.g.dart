// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RepositoryImpl _$$RepositoryImplFromJson(Map<String, dynamic> json) =>
    _$RepositoryImpl(
      name: json['name'] as String,
      fullName: json['full_name'] as String,
      language: json['language'] as String?,
      starCount: (json['stargazers_count'] as num).toInt(),
      watchCount: (json['watchers_count'] as num).toInt(),
      forkCount: (json['forks_count'] as num).toInt(),
      issueCount: (json['open_issues_count'] as num).toInt(),
      description: json['description'] as String?,
      homePage: json['homepage'] as String?,
      owner: json['owner'] == null
          ? null
          : Owner.fromJson(json['owner'] as Map<String, dynamic>),
      license: json['license'] == null
          ? null
          : License.fromJson(json['license'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RepositoryImplToJson(_$RepositoryImpl instance) =>
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

_$GetRepositoryImpl _$$GetRepositoryImplFromJson(Map<String, dynamic> json) =>
    _$GetRepositoryImpl(
      subscribersCount: (json['subscribers_count'] as num).toInt(),
    );

Map<String, dynamic> _$$GetRepositoryImplToJson(_$GetRepositoryImpl instance) =>
    <String, dynamic>{
      'subscribers_count': instance.subscribersCount,
    };
