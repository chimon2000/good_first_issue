import 'package:good_first_issue/services/services.dart';
import 'package:graphql/client.dart';

import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../_util/mocks.dart';

void main() {
  late MockGraphqlClient client;
  late MockQueryOptions options;

  setUp(() {
    client = MockGraphqlClient();
    options = MockQueryOptions();
  });
  test('Correctly retrieve suggestions on searchVehicleSuggestions', () async {
    final issueService = IssueService(client);
    when(() => client.query(any())).thenAnswer(
      (_) async => QueryResult(
        data: mockData,
        options: options,
        source: QueryResultSource.network,
      ),
    );

    var issueQueryResult =
        await issueService.getIssues(organization: "flutter", last: 2);

    expect(issueQueryResult.issues.length, 2);
  });
  test('Correctly throw error on searchVehicles', () async {
    final searchClient = IssueService(client);
    when(() => client.query(any())).thenAnswer(
      (_) async => QueryResult(
        data: mockData,
        options: options,
        source: QueryResultSource.network,
      ),
    );

    expect(
      () async =>
          await searchClient.getIssues(organization: "flutter", last: 2),
      throwsA(allOf(const TypeMatcher<OperationException>())),
    );
  });
}

class MockGraphqlClient extends Mock implements GraphQLClient {}

var mockData = {
  "search": {
    "pageInfo": {"endCursor": "Y3Vyc29yOjI=", "hasNextPage": true},
    "edges": [
      {
        "node": {
          "id": "MDU6SXNzdWU2MTExNDQyNTc=",
          "title": "Flutter",
          "body": "",
          "bodyHTML": "",
          "url":
              "https://github.com/londonappbrewery/Flutter-Course-Resources/issues/18",
          "repository": {
            "id": "MDEwOlJlcG9zaXRvcnkxNzI0ODE5Mjg=",
            "nameWithOwner": "londonappbrewery/Flutter-Course-Resources"
          }
        }
      },
      {
        "node": {
          "id": "MDU6SXNzdWU2MDU5MjQzNzM=",
          "title": "Flutter",
          "body": "",
          "bodyHTML": "",
          "url":
              "https://github.com/londonappbrewery/Flutter-Course-Resources/issues/13",
          "repository": {
            "id": "MDEwOlJlcG9zaXRvcnkxNzI0ODE5Mjg=",
            "nameWithOwner": "londonappbrewery/Flutter-Course-Resources"
          }
        }
      }
    ]
  }
};
