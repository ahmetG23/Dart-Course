void main(List<String> args) {
  for (final name in getNames()) {
    print(name);
  }
}

Iterable<String> getNames() sync* {
  yield 'Seth';
  yield 'Kathy';
  yield 'Lars';
  yield* getTemplate();
}

Iterable<String> getTemplate() sync* {
  yield 'Foo';
  yield 'Bar';
  yield 'Baz';
}