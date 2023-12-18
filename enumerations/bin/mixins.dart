void main(List<String> args) {
  Animal.dog.jump(); // Jumping with 4 feet
  try {
    Animal.fish.jump(); // Exception: cannot jump
  } catch (e) {
    print(e);
  }
}

mixin CanJump {
  int get feetCount;

  void jump() {
    if (feetCount > 0) {
      print('Jumping with $feetCount feet');
    } else {
      throw Exception('cannot jump');
    }
  }
}

enum Animal with CanJump {
  cat(feetCount: 4),
  dog(feetCount: 4),
  fish(feetCount: 0);

  @override
  final int feetCount;

  const Animal({required this.feetCount});
}
