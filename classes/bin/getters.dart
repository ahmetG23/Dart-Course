void main(List<String> args) {
  final p = Person(firstName: 'John', lastName: 'Doe');
  print(p.fullName); // John Doe
}

class Person {
  final String firstName;
  final String lastName;
  String get fullName => '$firstName $lastName';
  
  const Person({required this.firstName, required this.lastName});
}
