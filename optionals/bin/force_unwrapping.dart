void main(List<String> args) {
  try{
    String? name;
    final foo = name!;
  } catch (error) {
    print('Error: Null check operator used on a null value');
  }

  String? name = "John";
  final bar = name!; // type of bar is String
  print(bar); // John
}