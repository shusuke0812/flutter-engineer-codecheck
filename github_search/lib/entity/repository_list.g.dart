// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RepositoryListImpl _$$RepositoryListImplFromJson(Map<String, dynamic> json) =>
    _$RepositoryListImpl(
      totalCount: json['total_count'] as int,
      incompleteResults: json['incomplete_results'] as bool,
      items: (json['items'] as List<dynamic>)
          .map((e) => Repository.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RepositoryListImplToJson(
        _$RepositoryListImpl instance) =>
    <String, dynamic>{
      'total_count': instance.totalCount,
      'incomplete_results': instance.incompleteResults,
      'items': instance.items,
    };
