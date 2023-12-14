void main(List<String> args) {
  makeUpperCase('John');
  makeUpperCase(null);
  makeUpperCase();
  makeUpperCase('John', 'Smith');
  // makeUpperCase('John', null); error
}

void makeUpperCase([
  String? name,
  String lastName = 'Doe',
]) {
  print(name?.toUpperCase());
  print(lastName.toUpperCase());
}