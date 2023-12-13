void main(List<String> args) {
  List<int?> numbers = [1, 2, null, 4];
  print(numbers);

  List<int>? numbers2 = null;
  print(numbers2);

  List<int?>? numbers3 = null;
  // numbers3 = [1, 2, null]; // doable

  numbers3?.add(4);
  numbers3?.add(null);
  print(numbers3);

  final x = numbers3?.first;
  print(x);
}