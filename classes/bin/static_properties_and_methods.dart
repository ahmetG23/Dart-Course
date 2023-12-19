void main(List<String> args) {
  // static properties and methods are accessed using the class name
  Person.name = 'John Doe';
  print(Person.name); // John Doe

  print(Car.carInstantiated); // 0
  Car(name: 'Ferrari');
  print(Car.carInstantiated); // 1
}

class Person {
  static String name = '';
}

class Car {
  static int _carInstantiated = 0;
  static int get carInstantiated => _carInstantiated;
  static void _incrementCarInstantiated() => _carInstantiated++;

  final String name;
  Car({required this.name}) {
    _incrementCarInstantiated();
  }
}
