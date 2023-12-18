void main(List<String> args) {
  print(AnimalType.values);
  print(AnimalType.cat.name);

  describe(getAnimalType('dog'));
  describe(getAnimalType('horse'));
}

void describe(AnimalType? animalType) {
  switch (animalType) {
    case AnimalType.rabbit:
      print('This is a rabbit');
      break;
    case AnimalType.dog:
      print('This is a dog');
      break;
    case AnimalType.cat:
      print('This is a cat');
      break;
    default:
      print('This is not an animal');
  }
}

AnimalType? getAnimalType(String str) {
  try {
    return AnimalType.values.firstWhere((e) => e.name == str);
  } catch (e) {
    return null;
  }
}

enum AnimalType {
  rabbit,
  dog,
  cat,
}
