void main(List<String> args) {
  describeFully('Foo');
  describeFully('Foo', lastName: 'Baz');
}

void describeFully(
  String firstName, {
  String? lastName = 'Bar',
}) {
  print('$firstName $lastName');
}