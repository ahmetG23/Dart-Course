late String name;

void main(List<String> args) {
  try {
    print(name);
  } catch (e) {
    print(e); // LateInitializationError: Field 'name' has not been initialized.
  }

  name = 'Dart';
  print(name); // Dart
}