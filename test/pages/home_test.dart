import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:good_first_issue/app_providers.dart';
import 'package:good_first_issue/models/issue_query_result.dart';
import 'package:good_first_issue/ui/pages/home.dart';
import 'package:good_first_issue/ui/pages/issue_detail.dart';
import 'package:good_first_issue/ui/pages/more.dart';
import 'package:good_first_issue/ui/widgets/widgets.dart';
import 'package:mocktail/mocktail.dart';

import '../_util/mock_data/issues.dart';
import '../_util/mocks.dart';
import '../_util/wrapper.dart';

void main() {
  late MockIssueService mockIssueService;

  setUp(() {
    mockIssueService = MockIssueService();
  });

  testWidgets('Home smoke screen', (tester) async {
    when(
      () => mockIssueService.getIssues(
        organization: any(named: 'organization'),
        last: any(named: 'last'),
      ),
    ).thenAnswer((_) async {
      return IssuesQueryResult(
        issues: [],
        isFetchingMore: false,
        hasNextPage: false,
        count: 0,
        maxCount: 0,
        endCursor: '',
      );
    });
    await tester.pumpWidget(
      TestWrapper(
        const HomePage(),
        overrides: [
          issueServiceProvider.overrideWithValue(mockIssueService),
        ],
      ),
    );

    // Verify that loading displays.
    expect(find.byType(EmptyCard), findsOneWidget);

    await tester.pumpAndSettle();

    expect(find.byType(EmptyCard), findsOneWidget);

    await tester.tap(find.byKey(const Key(HomePage.scrollToTopButtonKey)));
  });

  testWidgets('Home navigates to more page', (tester) async {
    when(
      () => mockIssueService.getIssues(
        organization: any(named: 'organization'),
        last: any(named: 'last'),
      ),
    ).thenAnswer((_) async {
      return Completer<IssuesQueryResult>().future;
    });

    await tester.pumpWidget(
      TestWrapper(
        const HomePage(),
        overrides: [
          issueServiceProvider.overrideWithValue(mockIssueService),
        ],
      ),
    );

    // Verify that loading displays.
    expect(find.byType(EmptyCard), findsOneWidget);

    await tester.tap(find.byIcon(Icons.more_vert));

    await tester.pumpAndSettle();

    expect(find.byType(MorePage), findsOneWidget);
  });

  testWidgets('Home detail displays issue list when issues exist',
      (tester) async {
    var issues = getIssues();

    when(
      () => mockIssueService.getIssues(
        organization: any(named: 'organization'),
        last: any(named: 'last'),
      ),
    ).thenAnswer((_) async {
      return IssuesQueryResult(
        issues: issues,
        isFetchingMore: false,
        hasNextPage: false,
        count: issues.length,
        maxCount: issues.length,
        endCursor: '',
      );
    });

    await tester.pumpWidget(
      TestWrapper(
        overrides: [
          issueServiceProvider.overrideWithValue(mockIssueService),
        ],
        const HomePage(),
      ),
    );

    // Verify that loading displays.
    expect(find.byType(EmptyCard), findsOneWidget);

    await tester.pumpAndSettle();

    expect(find.text(issues[0].title), findsOneWidget);

    await tester.tap(find.byKey(const Key(HomePage.scrollToTopButtonKey)));

    await tester.pump();

    await tester.tap(find.text(issues[0].title));

    await tester.pumpAndSettle();

    expect(find.byType(IssueDetailPage), findsOneWidget);
  });
}

var bodyHtml = '''
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
     <a href="https://www.w3schools.com/html">w3schools</a> 
</body>
</html>
''';
