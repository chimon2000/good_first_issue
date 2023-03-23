T? path<T>(String pathToSearch, obj) {
  if (obj == null) {
    return null;
  }
  var pathArrValue = pathToSearch.split('.');

  return pathArrValue.fold(obj, (willReturn, b) {
    if (willReturn == null) {
      return null;
    }

    return willReturn[b];
  }) as T;
}
