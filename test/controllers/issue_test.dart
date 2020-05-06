import 'package:good_first_issue/controllers/issue.dart';
import 'package:good_first_issue/services/services.dart';
import 'package:graphql/client.dart';
import 'package:mockito/mockito.dart';
import 'package:remote_state/remote_state.dart';
import 'package:test/test.dart';

void main() {
  MockGraphqlClient client;
  setUp(() {
    client = MockGraphqlClient();
  });
  test('Issue controller retrieves issues', () async {
    final issueService = IssueService(client);
    when(client.query(any))
        .thenAnswer((_) async => QueryResult(data: mockData));

    final issueController = IssueController()
      ..debugMockDependency(issueService);

    expect(issueController.debugState.isInitial, true);

    await issueController.getIssues(organization: 'flutter');

    expect(issueController.debugState.isSuccess, true);
  });
  test('Issue controller retrieves more issues', () async {
    final issueService = IssueService(client);
    when(client.query(any))
        .thenAnswer((_) async => QueryResult(data: mockData));

    final issueController = IssueController()
      ..debugMockDependency(issueService);

    expect(issueController.debugState.isInitial, true);

    await issueController.getIssues(organization: 'flutter');

    expect(issueController.debugState.isSuccess, true);

    await issueController.fetchMoreIssues(organization: 'flutter');

    expect(issueController.debugState.isSuccess, true);

    issueController.state = RemoteState.initial();

    await issueController.fetchMoreIssues(organization: 'flutter');

    expect(issueController.debugState.isSuccess, true);
  });
  test('Issue controller handles errors', () async {
    final issueService = IssueService(client);
    when(client.query(any))
        .thenAnswer((_) async => QueryResult(exception: OperationException()));

    final issueController = IssueController()
      ..debugMockDependency(issueService);

    expect(issueController.debugState.isInitial, true);

    await issueController.getIssues(organization: 'flutter');

    expect(issueController.debugState.isError, true);

    await issueController.fetchMoreIssues(organization: 'flutter');

    expect(issueController.debugState.isError, true);
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
