import 'package:freezed_annotation/freezed_annotation.dart';

part 'issue.freezed.dart';
part 'issue.g.dart';

@freezed
abstract class Issue with _$Issue {
  factory Issue({
    @JsonKey() required String title,
    @JsonKey() required String url,
    @JsonKey() required String bodyHTML,
    @JsonKey() required Repository repository,
  }) = _Issue;

  factory Issue.fromJson(Map<String, dynamic> json) => _$IssueFromJson(json);
}

@freezed
abstract class Repository with _$Repository {
  factory Repository({
    @JsonKey() required String nameWithOwner,
  }) = _Repository;

  factory Repository.fromJson(Map<String, dynamic> json) =>
      _$RepositoryFromJson(json);
}
