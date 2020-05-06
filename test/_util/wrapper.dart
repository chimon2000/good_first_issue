import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:good_first_issue/controllers/issue.dart';
import 'package:good_first_issue/models/issue_query_result.dart';
import 'package:good_first_issue/services/issue.dart';
import 'package:good_first_issue/services/services.dart';
import 'package:mockito/mockito.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:remote_state/remote_state.dart';
import 'package:dartx/dartx.dart';

import 'mocks.dart';

class TestWrapper extends StatelessWidget {
  final Widget child;
  final List<SingleChildWidget> overrides;
  final List<NavigatorObserver> mockObservers;

  TestWrapper(
    this.child, {
    this.overrides = const [],
    this.mockObservers = const [],
  });

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: _setupProviders(overrides),
      child: MaterialApp(
        home: Scaffold(body: child),
        navigatorObservers: mockObservers,
      ),
    );
  }
}

var _emptyIssueResult = IssuesQueryResult(
  issues: [],
  isFetchingMore: false,
  hasNextPage: false,
  count: 0,
  maxCount: 0,
  endCursor: '',
);

List<SingleChildWidget> _setupProviders(List<SingleChildWidget> overrides) {
  var mockIssueService = MockIssueService();
  var mockLinkService = MockLinkService();
  var mockReviewService = MockReviewService();

  when(mockIssueService.getIssues(
          organization: anyNamed('organization'), last: anyNamed('last')))
      .thenAnswer((_) async => _emptyIssueResult);

  when(mockLinkService.launchLink(any)).thenAnswer((_) async {});
  when(mockLinkService.share(any)).thenAnswer((_) async {});

  return [
    ...overrides,
    Provider<ReviewService>(create: (_) => mockReviewService),
    Provider<LinkService>(create: (_) => mockLinkService),
    Provider<IssueService>.value(value: mockIssueService),
    StateNotifierProvider<IssueController, RemoteState<IssuesQueryResult>>(
      create: (_) => IssueController(),
    ),
  ].distinctBy((it) => it.runtimeType).toList();
}
