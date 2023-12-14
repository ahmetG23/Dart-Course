void main(List<String> args) {  
  print(performOperation(10, 2, add));
  print(performOperation(10, 2, (a, b) => a + b)); // same
}

int performOperation(
  int a,
  int b,
  int Function(int, int) operation, 
) => operation(a, b);

int add([int a = 4, int b = 4]) => a + b;