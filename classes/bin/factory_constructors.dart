void main(List<String> args) {
  print(Shape.create('circle')); // prints: Shape of type Circle
  print(Shape.create('square')); // prints: Shape of type Square
  print(Shape.create(
      'rectangle')); // prints: Shape of type Rectangle
}

class Shape {
  Shape();

  factory Shape.create(String type) {
    switch (type) {
      case 'circle':
        return Circle();
      case 'square':
        return Square();
      case 'rectangle':
        return Rectangle();
      default:
        throw 'Invalid shape type';
    }
  }
  @override
  String toString() => 'Shape of type $runtimeType';
}

class Circle extends Shape {
  Circle();
}

class Square extends Shape {
  Square();
}

class Rectangle extends Shape {
  Rectangle();
}
