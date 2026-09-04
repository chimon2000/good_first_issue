import 'package:lumberdash/lumberdash.dart' as lumberdash;
import 'package:meta/meta.dart';

mixin ReporterMixin {
  String get name => runtimeType.toString();

  @protected
  void logInfo(String message, {Map<String, String>? extras}) {
    lumberdash.logMessage("$name - $message", extras: extras);
  }

  @protected
  void logWarning(String message, {Map<String, String>? extras}) {
    lumberdash.logWarning("$name - $message", extras: extras);
  }

  @protected
  void logError(dynamic exception, {StackTrace? st}) {
    lumberdash.logError(exception, stacktrace: st);
  }

  @protected
  void logFatal(String message, {Map<String, String>? extras}) {
    lumberdash.logFatal("$name - $message", extras: extras);
  }
}
