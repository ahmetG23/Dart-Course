void main(List<String> args) {
  doSomethingWith(name: 'John Doe');
  // doSomethingWith(); 
  // error: The named parameter 'name' is required, but there's no corresponding argument.  
}

void doSomethingWith({required String name}) {
  print(name);
}