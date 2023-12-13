void main(List<String> args) {
  final person = Person();
  person.description = 'Description 1';
  print(person.description); // Description 1
  person.description = 'Description 2';
  print(person.description); // Description 2

  final dog = Dog();
  dog.description = 'Description 1';
  print(dog.description); // Description 1

  try {
    dog.description = 'Description 2';
  } catch (e) {
    print(e); // LateInitializationError: Field 'description' has already been initialized.
  }
}

class Person {
  late String description;

}

class Dog {
  late final String description;
}