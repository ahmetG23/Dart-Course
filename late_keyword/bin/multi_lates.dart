void main(List<String> args) {
  final person = Person();
  try{
    print(person.fullName);
  } catch (e) {
    print(e); // LateInitializationError: Field 'firstName' has not been initialized.
  }

  person.firstName = 'foo';
  person.secondName = 'bar';
  print(person.fullName); // foo bar
}

class Person {
  late final String firstName;
  late final String secondName;
  late final String fullName = '$firstName $secondName';
}