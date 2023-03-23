import 'package:flutter_test/flutter_test.dart';
import 'package:good_first_issue/ui/pages/about.dart';

import '../_util/wrapper.dart';

void main() {
  testWidgets('Home displays Empty when no data', (tester) async {
    await tester.pumpWidget(
      const TestWrapper(AboutPage()),
    );

    expect(find.text('@chimon1984'), findsOneWidget);
    expect(find.text('@chimon2000'), findsOneWidget);
  });
}
