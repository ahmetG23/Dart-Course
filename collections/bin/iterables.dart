void main(List<String> args) {
  final iterable = Iterable.generate(10, func);

  for (final name in iterable.take(2)) {
    print(name);
  }
  // Func has only called twice
  // iterables are lazy

  // Lists are not lazy
}

String func(int index) {
  print('func has called');
  return 'john #$index';
}
