// lists are comparable
void main(List<String> args) {
  const names = ['Seth', 'Kathy', 'Lars'];

  names.where((name) => name.contains('a')).forEach(print);

  names.sublist(0, 3).forEach((element) {
    // 3 is exclusive
    print(reverse(element));
  });

  final lengths = names.map((name) => name.length);
  print(lengths);

  names.map((e) => e.toUpperCase()).forEach(print);

  int totalLength = names.fold(0, (prevValue, str) => prevValue + str.length);
  print(totalLength);

  String concentenated = names.fold('', (prevValue, str) => '$prevValue $str');
  print(concentenated);
}

String reverse(String s) => s.split('').reversed.join('');
