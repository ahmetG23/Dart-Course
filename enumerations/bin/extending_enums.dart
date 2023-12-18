void main(List<String> args) {
  AnimalType.cat
    ..run()
    ..jump();
}

enum AnimalType {
  rabbit,
  dog,
  cat;

  void run() {
    print('$this is running');
  }
}

extension Jump on AnimalType {
  void jump() {
    print('$this is jumping');
  }
}
