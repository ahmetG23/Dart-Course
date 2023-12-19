void main(List<String> args) {
  final mom = Mom();
  mom.printRole(); // prints: Role.mom
  print(mom); // prints: Instance of 'Mom'
}

enum Role { mom, dad, son, daughter, grandma, grandpa }

class Person {
  final Role role;
  
  // constructors are not inherited to subclasses
  Person({required this.role});

  void printRole() {
    print(role);
  }
}

class Mom extends Person {
  Mom() : super(role: Role.mom);
}
