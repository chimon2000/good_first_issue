// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:good_first_issue/models/issue.dart';
import 'package:good_first_issue/pages/issue_detail.dart';
import 'package:good_first_issue/services/services.dart';
import 'package:mockito/mockito.dart';
import 'package:provider/provider.dart';

import '../_util/mocks.dart';
import '../_util/wrapper.dart';

void main() {
  testWidgets('Issue detail correctly displays valid data', (tester) async {
    await tester.pumpWidget(TestWrapper(IssueDetailPage(
      issue: Issue(
        title: "title",
        url: 'https://google.com',
        bodyHTML: bodyHtml,
        repository: Repository(nameWithOwner: 'owner'),
      ),
    )));

    // Verify that loading displays.
    expect(find.text('title'), findsOneWidget);
  });

  testWidgets('Issue detail correctly launches url when start clicked',
      (tester) async {
    var mockLinkService = MockLinkService();

    when(mockLinkService.launchLink(any)).thenAnswer((_) async {});

    await tester.pumpWidget(TestWrapper(
      IssueDetailPage(
        issue: Issue(
          title: "title",
          url: 'https://google.com',
          bodyHTML: bodyHtml,
          repository: Repository(nameWithOwner: 'owner'),
        ),
      ),
      overrides: [Provider<LinkService>.value(value: mockLinkService)],
    ));

    final startBtn = find.byKey(Key(IssueDetailPage.startButtonKey));
    await tester.tap(startBtn);
    await tester.pump();

    verify(mockLinkService.launchLink(any)).called(1);
  });

  testWidgets('Issue detail correctly shares url when share clicked',
      (tester) async {
    var mockLinkService = MockLinkService();

    when(mockLinkService.share(any)).thenAnswer((_) async {});

    await tester.pumpWidget(TestWrapper(
      IssueDetailPage(
        issue: Issue(
          title: "title",
          url: 'https://google.com',
          bodyHTML: bodyHtml,
          repository: Repository(nameWithOwner: 'owner'),
        ),
      ),
      overrides: [Provider<LinkService>.value(value: mockLinkService)],
    ));

    final startBtn = find.byKey(Key(IssueDetailPage.shareButtonKey));
    await tester.tap(startBtn);
    await tester.pump();

    verify(mockLinkService.share(any)).called(1);
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
