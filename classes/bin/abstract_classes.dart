void main(List<String> args) {
  // const vehicle = Vehicle(); error : Abstract classes can't be instantiated.
  
  const car = Car();
  car.accelerate();

  const motorcycle = Motorcycle();
  print(motorcycle.kind); // VehicleKind.motorcycle
}

enum VehicleKind { car, truck, bicycle, motorcycle }

abstract class Vehicle {
  final VehicleKind kind;
  const Vehicle({required this.kind});

  void accelerate() => print('$kind is accelerating');
  void decelerate() => print('$kind is decelerating');
}

class Car extends Vehicle {
  const Car() : super(kind: VehicleKind.car);
}

class Motorcycle implements Vehicle {
  const Motorcycle();
  @override
  void accelerate() => print('Motorcycle is accelerating');

  @override
  void decelerate() => print('Motorcycle is decelerating');

  @override
  VehicleKind get kind => VehicleKind.motorcycle;
}
