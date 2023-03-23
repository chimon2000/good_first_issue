// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'issue.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Issue _$$_IssueFromJson(Map<String, dynamic> json) => _$_Issue(
      title: json['title'] as String,
      url: json['url'] as String,
      bodyHTML: json['bodyHTML'] as String,
      repository:
          Repository.fromJson(json['repository'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_IssueToJson(_$_Issue instance) => <String, dynamic>{
      'title': instance.title,
      'url': instance.url,
      'bodyHTML': instance.bodyHTML,
      'repository': instance.repository,
    };

_$_Repository _$$_RepositoryFromJson(Map<String, dynamic> json) =>
    _$_Repository(
      nameWithOwner: json['nameWithOwner'] as String,
    );

Map<String, dynamic> _$$_RepositoryToJson(_$_Repository instance) =>
    <String, dynamic>{
      'nameWithOwner': instance.nameWithOwner,
    };
