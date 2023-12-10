void main(List<String> args) {
  String name = 'Foo';
  var address = '';

  address = name;
  print(address);
  print(name); 

  // address = 20; (cannot assign an int to a String)
}