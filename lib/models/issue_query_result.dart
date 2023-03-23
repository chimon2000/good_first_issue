import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:good_first_issue/models/issue.dart';

part 'issue_query_result.freezed.dart';

@freezed
abstract class IssuesQueryResult with _$IssuesQueryResult {
  factory IssuesQueryResult({
    required List<Issue> issues,
    required int count,
    int? maxCount,
    String? endCursor,
    required bool hasNextPage,
    @Default(false) bool isFetchingMore,
  }) = _IssuesQueryResult;
}
