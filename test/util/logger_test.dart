import 'package:good_first_issue/core/utils/logger.dart';
import 'package:lumberdash/lumberdash.dart';

import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

void main() {
  late MockLumberdashClient mockClient;
  setUp(() {
    mockClient = MockLumberdashClient();
  });

  test('Logger smoke screen test', () async {
    putLumberdashToWork(withClients: [mockClient]);

    final logger = TestLogger();
    when(() => mockClient.logError(any())).thenAnswer((_) {});
    when(() => mockClient.logMessage(any())).thenAnswer((_) {});
    when(() => mockClient.logWarning(any())).thenAnswer((_) {});
    when(() => mockClient.logFatal(any())).thenAnswer((_) {});

    logger.testError();
    logger.testWarning();
    logger.testInfo();
    logger.testFatal();

    expect(logger.name, 'TestLogger');
    verify(() => mockClient.logError(any())).called(1);
    verify(() => mockClient.logMessage(any())).called(1);
    verify(() => mockClient.logWarning(any())).called(1);
    verify(() => mockClient.logFatal(any())).called(1);
  });
}

class TestLogger with ReporterMixin {
  void testError() => logError(Error());
  void testWarning() => logWarning('warning');
  void testInfo() => logInfo('info');
  void testFatal() => logFatal('fatal');
}

class MockLumberdashClient extends Mock implements LumberdashClient {}
