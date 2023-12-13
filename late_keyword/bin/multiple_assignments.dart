void main(List<String> args) {
  late int age = getAge();  
  age = 32;
  print(age);
  // getAge() is NOT called
}

int getAge() {
  print('getAge() is called');
  return 18;
}