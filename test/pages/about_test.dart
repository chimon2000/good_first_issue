import 'package:flutter_test/flutter_test.dart';
import 'package:good_first_issue/pages/about.dart';

import '../_util/wrapper.dart';

void main() {
  testWidgets('Home displays Empty when no data', (tester) async {
    await tester.pumpWidget(
      TestWrapper(AboutPage()),
    );

    expect(find.text('@chimon1984'), findsOneWidget);
    expect(find.text('@chimon2000'), findsOneWidget);
  });
}
