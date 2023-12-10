void main(List<String> args) {
  final list = [1, 2, 3];
  list.removeAt(0); // its internal value is mutable
  print(list);

  // list = [4, 5, 6]; (cannot change the value of a final var.)
}