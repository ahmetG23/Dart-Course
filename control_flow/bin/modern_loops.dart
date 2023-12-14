void main(List<String> args) {
  var names = ['John', 'Doe', 'Smith', 'Alex'];

  for(final item in names) {
    if(!item.startsWith('S')) {
      print(item);
    }
  }
  print('------------------');

  for(final item in names.reversed) {
    print(item);
  }
  print('------------------');

  for(int i in Iterable.generate(5)) {
    print(i); // 0, 1, 2, 3, 4
  }
}