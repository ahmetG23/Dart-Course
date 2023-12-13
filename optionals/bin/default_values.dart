void main(List<String> args) {
  int a;
  // print(a); // Error: Non-nullable 'a' must be initialized.

  int? b;
  print(b); // null

  // operator ??= assigns a value to a variable only if that variable is null
  b ??= 10;
  print(b); // 10

}

void doSomething(String? a, String? b) {
  a ??= b;
}