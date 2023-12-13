void main(List<String> args) {
  final johnDoe = Person(name: 'John Doe');
  final janeDoe = Person(name: 'Jane Doe');
  final doeFamily = WrongImplementationOfFamily(members: [johnDoe, janeDoe]);
  // "getting members count" is printed

  // NOTE: Late variables are immediately initialized when they are assigned in a constructor.

  final johnDoe2 = Person(name: 'John Doe');
  final janeDoe2 = Person(name: 'Jane Doe');
  final doeFamily2 = CorrectImplementationOfFamily(members: [johnDoe2, janeDoe2]);
  // "getting members count2" is NOT printed
  
  print(doeFamily2.membersCount); // 2
  // "getting members count2" is printed now
}

class Person {
  final String name;
  Person({required this.name});
}

class WrongImplementationOfFamily {
  final Iterable<Person> members;
  late int membersCount;

  WrongImplementationOfFamily({required this.members}) {
    membersCount = getMembersCount();
  }

  int getMembersCount() {
    print('getting members count');
    return members.length;
  }
}

class CorrectImplementationOfFamily {
  final Iterable<Person> members;
  late int membersCount = getMembersCount();

  CorrectImplementationOfFamily({required this.members});

  int getMembersCount() {
    print('getting members count2');
    return members.length;
  }
}