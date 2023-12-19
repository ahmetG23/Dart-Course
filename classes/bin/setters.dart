void main(List<String> args) {
  final c = Car();
  c.speed = 100;
  print(c.speed); // 100
  try {
    c.speed = -100; 
  } catch (e) {
    print(e); // Exception: Speed cannot be negative.
  }
}

class Car {
  int _speed = 0;

  int get speed => _speed;

  set speed(int value) {
    if (value >= 0) {
      _speed = value;
    } else {
      throw Exception('Speed cannot be negative.');
    }
  }

  void drive({required int speed}) {
    // setter is being called so that validation is performed
    this.speed = speed;
    print('Driving at $speed km/h.');
  }
}
