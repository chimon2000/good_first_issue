import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:good_first_issue/models/issue_query_result.dart';
import 'package:good_first_issue/pages/home.dart';
import 'package:good_first_issue/pages/issue_detail.dart';
import 'package:good_first_issue/pages/more.dart';
import 'package:good_first_issue/services/issue.dart';
import 'package:good_first_issue/widgets/widgets.dart';
import 'package:mockito/mockito.dart';
import 'package:provider/provider.dart';
import '../_util/mock_data/issues.dart';
import '../_util/mocks.dart';
import '../_util/wrapper.dart';

void main() {
  testWidgets('Home smoke screen', (tester) async {
    await tester.pumpWidget(
      TestWrapper(
        HomePage(),
      ),
    );

    // Verify that loading displays.
    expect(find.byType(InitialCard), findsOneWidget);

    await tester.pump();

    expect(find.byType(EmptyCard), findsOneWidget);

    await tester.tap(find.byKey(Key(HomePage.scrollToTopButtonKey)));
  });
  testWidgets('Home navigates to more page', (tester) async {
    await tester.pumpWidget(
      TestWrapper(
        HomePage(),
      ),
    );

    // Verify that loading displays.
    expect(find.byType(InitialCard), findsOneWidget);

    await tester.tap(find.byIcon(Icons.more_vert));

    await tester.pumpAndSettle();

    expect(find.byType(MorePage), findsOneWidget);
  });

  testWidgets('Home detail displays issue list when issues exist',
      (tester) async {
    var issues = getIssues();
    var mockIssueService = MockIssueService();

    when(
      mockIssueService.getIssues(
        organization: anyNamed('organization'),
        last: anyNamed('last'),
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
        HomePage(),
        overrides: [
          Provider<IssueService>.value(value: mockIssueService),
        ],
      ),
    );

    // Verify that loading displays.
    expect(find.byType(InitialCard), findsOneWidget);

    await tester.pump();

    expect(find.text(issues[0].title), findsOneWidget);

    await tester.tap(find.byKey(Key(HomePage.scrollToTopButtonKey)));

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
