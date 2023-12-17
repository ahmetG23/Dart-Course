void main(List<String> args) {
  addToArrayWrong();
  print('--------------------');
  addToArrayRight();
}

void addToArrayWrong() {
  final names1 = ['Seth', 'Kathy', 'Lars'];
  final names2 = ['Bob', 'Mary', 'Jane'];

  final allNamesWrong = names1;
  // both allNamesWrong and names1 point to the same list
  allNamesWrong.addAll(names2);
  print(names1); // [Seth, Kathy, Lars, Bob, Mary, Jane]
  print(names2); // [Bob, Mary, Jane]
  print(allNamesWrong); // [Seth, Kathy, Lars, Bob, Mary, Jane]
}

void addToArrayRight() {
  final names1 = ['Seth', 'Kathy', 'Lars'];
  final names2 = ['Bob', 'Mary', 'Jane'];

  final allNamesRight = [...names1, ...names2];
  // allNamesRight is a new list
  print(names1); // [Seth, Kathy, Lars]
  print(names2); // [Bob, Mary, Jane]
  print(allNamesRight); // [Seth, Kathy, Lars, Bob, Mary, Jane]

  final anotherWay = [...names1]..addAll(names2);
  print(anotherWay); // [Seth, Kathy, Lars, Bob, Mary, Jane]
}