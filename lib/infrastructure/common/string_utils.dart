String toCamelCase(String str) {
  final list = str.split('_');
  return '${list[0]}${list.sublist(1).fold('', (x, y) => '$x${y[0].toUpperCase()}${y.substring(1)}')}';
}
