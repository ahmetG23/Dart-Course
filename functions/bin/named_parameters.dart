void main(List<String> args) {
  greet();
  greet(name: "Jane Doe");
  
  sayHello(name: null); // Hello null
  sayHello(); // Hello null
}

void greet({String name = 'John Doe'}) {
  print('Hello $name');
}

void sayHello({String? name}) {
  print('Hello $name');
  }