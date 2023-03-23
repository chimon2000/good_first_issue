import 'package:github_api/schema/issue.graphql.dart';
import 'package:good_first_issue/services/services.dart';

import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../_util/mocks.dart';

void main() {
  late MockGraphQLClient client;

  setUp(() {
    client = generateMockGraphQLClient();
  });

  setUpAll(() {
    registerFallbackValue(MockQueryOptions());
  });
  test('Correctly retrieve suggestions on searchVehicleSuggestions', () async {
    final issueService = IssueService(client);
    final result = generateMockQuery<Query$ReadIssues>(client);
    when(() => result.isLoading).thenReturn(true);
    when(() => result.hasException).thenReturn(false);
    when(() => result.parsedData).thenReturn(
      Query$ReadIssues(search: Query$ReadIssues$search.fromJson(mockData)),
    );

    var issueQueryResult =
        await issueService.getIssues(organization: "flutter", last: 2);

    expect(issueQueryResult.issues.length, 2);
  });
}

var mockData = {
  "__typename": "__typename",
  "pageInfo": {
    "__typename": "__typename",
    "endCursor": "Y3Vyc29yOjI=",
    "hasNextPage": true
  },
  "issueCount": 2,
  "edges": [
    {
      "__typename": "__typename",
      "node": {
        "__typename": "Issue",
        "id": "MDU6SXNzdWU2MTExNDQyNTc=",
        "title": "Flutter",
        "body": "",
        "bodyHTML": "",
        "url":
            "https://github.com/londonappbrewery/Flutter-Course-Resources/issues/18",
        "repository": {
          "__typename": "__typename",
          "id": "MDEwOlJlcG9zaXRvcnkxNzI0ODE5Mjg=",
          "nameWithOwner": "londonappbrewery/Flutter-Course-Resources"
        }
      }
    },
    {
      "__typename": "__typename",
      "node": {
        "__typename": "Issue",
        "id": "MDU6SXNzdWU2MDU5MjQzNzM=",
        "title": "Flutter",
        "body": "",
        "bodyHTML": "",
        "url":
            "https://github.com/londonappbrewery/Flutter-Course-Resources/issues/13",
        "repository": {
          "__typename": "__typename",
          "id": "MDEwOlJlcG9zaXRvcnkxNzI0ODE5Mjg=",
          "nameWithOwner": "londonappbrewery/Flutter-Course-Resources"
        }
      }
    }
  ]
};
