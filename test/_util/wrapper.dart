import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:good_first_issue/app_providers.dart';

import 'package:good_first_issue/models/issue_query_result.dart';

import 'package:mocktail/mocktail.dart';

import 'package:dartx/dartx.dart';

import 'mocks.dart';

class TestWrapper extends StatelessWidget {
  final Widget child;
  final List<Override> overrides;
  final List<NavigatorObserver> mockObservers;

  const TestWrapper(
    this.child, {
    super.key,
    this.overrides = const [],
    this.mockObservers = const [],
  });

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      overrides: _setupProviders(overrides),
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

List<Override> _setupProviders(List<Override> overrides) {
  var mockIssueService = MockIssueService();
  var mockLinkService = MockLinkService();
  var mockReviewService = MockReviewService();

  when(
    () => mockIssueService.getIssues(
      organization: any(named: 'organization'),
      last: any(named: 'last'),
    ),
  ).thenAnswer((_) async => _emptyIssueResult);

  when(() => mockLinkService.launchLink(any())).thenAnswer((_) async {});
  when(() => mockLinkService.share(any())).thenAnswer((_) async {});

  return [
    ...overrides,
    reviewServiceProvider.overrideWithValue(mockReviewService),
    linkServiceProvider.overrideWithValue(mockLinkService),
    issueServiceProvider.overrideWithValue(mockIssueService),
  ].distinctBy((it) => it.runtimeType).toList();
}
