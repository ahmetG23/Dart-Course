void main(List<String> args) {
  final person = Person();
  print(person.age);
  // Person() constructor is called
  // heavyCalculationOfDescription() is NOT called
}

class Person {
  late int age;
  late String description = heavyCalculationOfDescription();

  Person({this.age = 18}) {
    print("Person() constructor is called");
  }

  String heavyCalculationOfDescription() {
    print('heavyCalculationOfDescription() is called');
    return 'foo bar';
  }
}