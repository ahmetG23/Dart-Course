void main(List<String> args) {
  const mrJohn = Person.john();
  print(mrJohn.name);

  const ahmet = Person.other(name: 'Ahmet');
  print(ahmet.name);
  print(ahmet.age);
}

class Person {
  final String name;
  final age;

  const Person(this.name, this.age);

  const Person.john()
      : name = 'John',
        age = 45;

  // optionally takes input
  const Person.other({String? name, int? age}) 
      : name = name ?? 'Baz',
        age = age ?? 12;
}
