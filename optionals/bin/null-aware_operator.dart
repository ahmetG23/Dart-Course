void main(List<String> args) {
  String? name;
  print(name?.length); // null

  name = 'John';
  print(name?.length); // 4


  // nullower operator (??)
  String? type;
  print(type ?? 'foo'); // foo

  final blue = type ?? 'bar';
  print(blue); // bar


  int? a, b;
  final c = a ?? b;       // type of c is int?
  print(c);
  final d = a ?? b ?? 10; // type of d is int
  print(d);
}