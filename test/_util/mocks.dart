import 'package:good_first_issue/services/services.dart';
import 'package:graphql/client.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mocktail/mocktail.dart';

class MockIssueService extends Mock implements IssueService {}

class MockLinkService extends Mock implements LinkService {}

class MockReviewService extends Mock implements ReviewService {}

class MockQueryOptions extends Mock implements QueryOptions {}
