void main(List<String> args) {
  final string = 'abracadabra';

  var counter = {
    for (final c in string.split(''))
      c: string.split('').where((element) => element == c).length
  };
  // counter = {a: 5, b: 2, r: 2, c: 1, d: 1}
  print(counter);

  Set<String> result = {
    for (final c in string.split(''))
      if (!'abc'.contains(c)) c
  };

  print(result); // {r, d}

  final allNumbers = Iterable.generate(50);
  final evenNumbers = [
    for (final num in allNumbers)
      if (num % 2 == 0) num
  ];
  print(evenNumbers);
  final otherWay = allNumbers.where((e) => e % 2 == 0);
  print(otherWay);
}
