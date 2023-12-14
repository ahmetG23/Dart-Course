void main(List<String> args) {
  final foo = doSomething(4, 2);
  print(foo());

  print(doSomething(4, 2)()); // same as above
}

int Function() doSomething(
  int l,
  int r,
) => 
    () => l + r;