void main(List<String> args) {
  int a = 25, b = 10;
  var doubleResult = a / b; // automatically set to double
  print("doubleresult = $doubleResult"); 
  
  var intResult = a ~/ b; // returning value is integer (truncating division)
  print("intResult = $intResult");
}