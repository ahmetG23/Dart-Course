void main(List<String> args) {
  final foo = Person(car: Car.teslaModelX, name: 'Foo');

  switch (foo.car) {
    case Car.teslaModelX:
      print('Foo drives a Tesla Model X = ${foo.car}');
    case Car.toyotaCorolla2014:
      print('Foo drives a Toyota Corolla 2014 = ${foo.car}}');
  }
}

class Person {
  final String name;
  final Car car;

  const Person({required this.name, required this.car});
}

enum Car {
  teslaModelX(
    manufacturer: 'Tesla',
    model: 'Model X',
    year: 2020,
  ),
  toyotaCorolla2014(
    manufacturer: 'Toyota',
    model: 'Corolla',
    year: 2014,
  );

  final String manufacturer;
  final String model;
  final int year;

  const Car(
      {required this.manufacturer,
      required this.model,
      required this.year});

  @override
  String toString() {
    return '$manufacturer $model $year';
  }
}
