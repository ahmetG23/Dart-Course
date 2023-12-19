void main(List<String> args) {
  final v = Vehicle(4);
  print(v); // Vehicle with 4 wheels
  print(Car()); // Car with 4 wheels
  print(Bicycle()); // Bicycle with 2 wheels
}

class Vehicle {
  // every class extends 'Object'
  final int wheelCount;

  const Vehicle(this.wheelCount);

  @override
  String toString() {
    // if(runtimeType == Vehicle) {
    //   return 'Vehicle with $wheelCount wheels';
    // } else {
    //   return super.toString();
    // }
    return '$runtimeType with $wheelCount wheels';
  }
}

class Car extends Vehicle {
  const Car() : super(4);
  // Car(super.wheelCount);
}

class Bicycle extends Vehicle {
  const Bicycle() : super(2);
}
