void main(List<String> args) {
  final woof = Animal(
    type: AnimalType.dog,
    name: 'Woof',
  );

  if (woof.type == AnimalType.dog) {
    print('Woof is a dog');
  }

  switch (woof.type) {
    case AnimalType.dog:
      print('Woof is a dog');
      break;
    case AnimalType.cat:
      print('Woof is a cat');
      break;
    case AnimalType.rabbit:
      print('Woof is a rabbit');
      break;
  }
}

enum AnimalType {
  rabbit,
  dog,
  cat,
}

class Animal {
  final AnimalType type;
  final String name;

  Animal({
    required this.type,
    required this.name,
  });
}
