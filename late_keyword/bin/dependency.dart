void main(List<String> args) {
  final person = Person();
  print(person.firstName);
  // getFullName() is called
  // foo
  print(person.lastName);
  // bar  
}

class Person {
  late String fullName = _getFullName();
  // both firstName and lastName have to be late variables
  late String firstName = fullName.split(' ').first;
  late String lastName = fullName.split(' ').last;

  String _getFullName() {
    print('getFullName() is called');
    return 'foo bar';
  }
}