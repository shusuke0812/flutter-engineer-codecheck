// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_repository_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GitHubRepositoryList _$$_GitHubRepositoryListFromJson(
        Map<String, dynamic> json) =>
    _$_GitHubRepositoryList(
      totalCount: json['total_count'] as int,
      incompleteResults: json['incomplete_results'] as bool,
      items: (json['items'] as List<dynamic>)
          .map((e) => GitHubRepository.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GitHubRepositoryListToJson(
        _$_GitHubRepositoryList instance) =>
    <String, dynamic>{
      'total_count': instance.totalCount,
      'incomplete_results': instance.incompleteResults,
      'items': instance.items,
    };
