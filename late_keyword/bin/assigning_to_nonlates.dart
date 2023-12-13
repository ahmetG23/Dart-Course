void main(List<String> args) {
  late String fullName = getFullName(); 
  print('After'); // 1
  final resolvedFullName = fullName;  
  print(resolvedFullName); // 3
}

String getFullName() {
  print('getFullName() is called'); // 2
  return 'foo bar'; 
}