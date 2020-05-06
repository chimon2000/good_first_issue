import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:good_first_issue/pages/about.dart';
import 'package:good_first_issue/pages/more.dart';

import '../_util/wrapper.dart';

void main() {
  testWidgets('More page smoke test', (tester) async {
    await tester.pumpWidget(
      TestWrapper(MorePage()),
    );

    expect(find.text('More'), findsOneWidget);
    expect(find.text('Issue tracker'), findsOneWidget);

    await tester.tap(find.byIcon(Icons.star));
    await tester.pump();
    await tester.tap(find.byIcon(Icons.bug_report));
    await tester.pump();
  });
  testWidgets('More page smoke test', (tester) async {
    await tester.pumpWidget(
      TestWrapper(MorePage()),
    );

    expect(find.text('More'), findsOneWidget);
    expect(find.text('Issue tracker'), findsOneWidget);

    await tester.tap(find.text('About'));

    await tester.pumpAndSettle();

    expect(find.byType(AboutPage), findsOneWidget);
  });
}
