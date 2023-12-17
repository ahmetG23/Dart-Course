// You should always have a hashCode and == operator in a class in order to
// use it in a set or map.

void main(List<String> args) {
  final person1 = Person(name: 'Seth', age: 20);
  final person2 = Person(name: 'Seth', age: 20);

  Set<Object> persons = {person1, person2};
  print(persons.length); // 1

  final dog = Dog(name: 'Seth', age: 20);

  persons.add(dog);
  print(persons.length); // 2
}

class Person {
  final String name;
  final int age;

  Person({required this.name, required this.age});

  @override
  String toString() => 'Person(name: $name, age: $age)';

  @override
  int get hashCode => Object.hash(name, age);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Person &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          age == other.age;
}

class Dog {
  final String name;
  final int age;

  Dog({required this.name, required this.age});

  @override
  String toString() => 'Dog(name: $name, age: $age)';

  @override
  int get hashCode => Object.hash(name, age);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Dog &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          age == other.age;
}
