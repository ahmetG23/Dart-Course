void main(List<String> args) {
  List<String> names = ['Seth', 'Kathy', 'Lars'];

  final upperCaseNames = names.map((e) { // Iterable<String>
    print('map has called');
    return e.toUpperCase();
  }); // prints nothing so far

  print(upperCaseNames); // prints 'map has called' 3 times
  
}
