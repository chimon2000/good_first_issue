import 'dart:convert';

import 'package:good_first_issue/core/utils/logger.dart';
import 'package:good_first_issue/models/issue.dart';
import 'package:good_first_issue/models/issue_query_result.dart';
import 'package:good_first_issue/models/projects.dart';
import 'package:graphql/client.dart';
import 'package:github_api/github_api.dart';

class IssueService with ReporterMixin {
  final GraphQLClient client;

  IssueService(this.client);

  Future<IssuesQueryResult> getIssues({
    required String organization,
    required int last,
    String? after,
  }) async {
    final query = projects[organization]!['q'];
    final options = Options$Query$ReadIssues(
      variables: Variables$Query$ReadIssues(
        nQuery: query!,
        nLast: last,
        nAfter: after,
      ),
    );

    final result = await client.query$ReadIssues(options);

    if (result.hasException) {
      _logOperationException(result.exception!);

      throw result.exception!;
    }

    var issues = result.parsedData?.search.edges
            ?.map((edge) => edge?.node)
            .whereType<Query$ReadIssues$search$edges$node$$Issue>()
            .map(
              (e) => Issue(
                bodyHTML: e.bodyHTML,
                url: e.url,
                repository:
                    Repository(nameWithOwner: e.repository.nameWithOwner),
                title: e.title,
              ),
            )
            .toList() ??
        [];
    var count = issues.length;

    return IssuesQueryResult(
      issues: issues,
      maxCount: result.parsedData?.search.issueCount,
      count: count,
      endCursor: result.parsedData?.search.pageInfo.endCursor,
      hasNextPage: result.parsedData?.search.pageInfo.hasNextPage ?? false,
    );
  }

  _logOperationException(OperationException exception) {
    for (var error in exception.graphqlErrors) {
      logWarning(
        error.message,
        extras: {
          'path': error.path?.join(', ') ?? '',
          'extensions': jsonEncode(error.extensions),
        },
      );
    }

    logError(exception);
  }
}


