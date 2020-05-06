import 'package:lumberdash/lumberdash.dart' as lumberdash;
import 'package:meta/meta.dart';

mixin ReporterMixin {
  String get name => runtimeType.toString();

  @visibleForTesting
  logInfo(String message, {Map<String, String> extras}) {
    lumberdash.logMessage("$name - $message", extras: extras);
  }

  @visibleForTesting
  logWarning(String message, {Map<String, String> extras}) {
    lumberdash.logWarning("$name - $message");
  }

  @visibleForTesting
  logError(dynamic exception, {StackTrace st}) {
    lumberdash.logError(exception, stacktrace: exception);
  }

  @visibleForTesting
  logFatal(String message, {Map<String, String> extras}) {
    lumberdash.logFatal("$name - $message", extras: extras);
  }
}
