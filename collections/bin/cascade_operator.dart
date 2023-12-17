void main(List<String> args) {
  //The double dot (..) operator, also known as the cascade operator, 
  //is used to perform a series of operations on the same object. 
  //Unlike the single dot operator, the cascade operator does not return 
  //the result of the operation. Instead, it returns the original object. 
  //This allows you to chain multiple operations together. For example:
  var list = [1, 2, 3]
    ..add(4)
    ..remove(2);
  print(list); // [1, 3, 4]

  var map = {'a': 1, 'b': 2}
    ..['c'] = 3
    ..remove('b');
  print(map);  // {'a': 1, 'c': 3}

  var myObject = MyClass()
    ..a = 5 
    ..increment();
  print(myObject.a);  // 6
}


class MyClass {
  int a = 0;
  void increment() {
    a++;
  }
}

