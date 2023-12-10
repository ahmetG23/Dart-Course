void main(List<String> args) {
  late final num = 10;
  print(num);

  late final value = get_value();
  print("we are here");
  print(value);

  /// ~ expectations ~
  /// get value() called
  /// we are here
  /// 10

  ///  ~ real ~
  /// we are here
  /// get value() called
  /// 10

  /// Note: late variables are initialized when they are first used.
}

int get_value() {
  print("get_value() called");
  return 10;
}