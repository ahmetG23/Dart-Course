void main(List<String> args) {
  print(doNothing()); // null

  // print(doNothing2()); error: This expression has type 'void' and can't be used.
}

doNothing() { // type: dynamic
}             // default return value: null

void doNothing2() { // no return value
}