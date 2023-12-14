void main(List<String> args) {
  describePerson(name: 'John Doe', age: 30);
  describePerson(age: 30, name: 'John Doe');
  describePerson(name: 'John Doe');
  describePerson(age: 30);  
  describePerson();
}

void describePerson({String? name, int? age}) {
  print('Hello $name, you are $age years old');
}
