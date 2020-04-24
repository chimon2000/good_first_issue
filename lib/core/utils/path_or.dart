import 'path.dart';

T pathOr<T>(T defaultValue, String pathToSearch, obj) =>
    path(pathToSearch, obj) ?? defaultValue;
