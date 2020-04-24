import 'package:good_first_issue/core/utils/utils.dart';
import 'package:good_first_issue/models/issue.dart';
import 'package:good_first_issue/models/issue_query_result.dart';
import 'package:good_first_issue/models/projects.dart';
import 'package:meta/meta.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class IssueService {
  final GraphQLClient client;

  IssueService(this.client);

  Future<IssuesQueryResult> getIssues({
    @required String organization,
    @required int last,
    String after,
  }) async {
    final query = projects[organization]['q'];

    var options = QueryOptions(
      documentNode: gql(_searchQuery),
      fetchPolicy: FetchPolicy.cacheAndNetwork,
      variables: {
        'nQuery': query,
        'nLast': last,
        'nAfter': after,
      },
    );
    var result = await client.query(options);

    var jsonList = pathOr<List<dynamic>>([], 'search.edges', result.data);
    var maxCount = path<int>('search.issueCount', result.data);
    var fetchMoreCursor =
        path<String>('search.pageInfo.endCursor', result.data);
    var hasNextPage = path<bool>('search.pageInfo.hasNextPage', result.data);

    var issues = jsonList.map((json) => Issue.fromJson(json['node'])).toList();
    var count = issues.length;

    return IssuesQueryResult(
      issues: issues,
      maxCount: maxCount,
      count: count,
      endCursor: fetchMoreCursor,
      hasNextPage: hasNextPage,
    );
  }
}

String _searchQuery = r'''
      query ReadIssues($nQuery: String!, $nLast: Int, $nAfter: String) {
        search(query: $nQuery, type: ISSUE, last: $nLast, after: $nAfter) {
          pageInfo {
            endCursor,
            hasNextPage
          }
          edges {
            node {
              ... on Issue {
                id,
                title,
                body,
                bodyHTML,
                url,
                repository {
                  id
                  nameWithOwner
                }
              }
            }
          }
        }
      }
    ''';
