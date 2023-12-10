void main(List<String> args) {
  final bool value = true;
  print(!value);

  const List<int> someList = [1, 2, 3];
  print(someList);

  const Map<int, String> someMap = {1: 'one', 2: 'two'};
  print(someMap);

  const Set<int> someSet = {1, 2, 3};
  print(someSet.length);
  // const Set<int> wrongSet = {1, 1, 2, 3}; (cannot have duplicate values)

  const dynamic someNull = null;
  print(someNull);

  const Symbol someSymbol = #someNull;
  print(someSymbol);
}