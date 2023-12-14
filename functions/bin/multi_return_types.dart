void main(List<String> args) {
  print(multiReturnType(false));
}

multiReturnType(bool s) {
  if(s) {
    return 1;
  } else {
    return 'sa';
  }
}