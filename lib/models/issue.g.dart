// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'issue.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Issue _$IssueFromJson(Map<String, dynamic> json) => _Issue(
  title: json['title'] as String,
  url: json['url'] as String,
  bodyHTML: json['bodyHTML'] as String,
  repository: Repository.fromJson(json['repository'] as Map<String, dynamic>),
);

Map<String, dynamic> _$IssueToJson(_Issue instance) => <String, dynamic>{
  'title': instance.title,
  'url': instance.url,
  'bodyHTML': instance.bodyHTML,
  'repository': instance.repository,
};

_Repository _$RepositoryFromJson(Map<String, dynamic> json) =>
    _Repository(nameWithOwner: json['nameWithOwner'] as String);

Map<String, dynamic> _$RepositoryToJson(_Repository instance) =>
    <String, dynamic>{'nameWithOwner': instance.nameWithOwner};
