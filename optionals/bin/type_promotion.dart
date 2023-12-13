void main(List<String> args) {
  final String? name = null;

  if(name == null) {
    print('name is null');
  } else {
    int l = name.length;  // type promotion (we don't need to use ?.)
    print(l);
  }
}