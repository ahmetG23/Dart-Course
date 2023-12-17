void main(List<String> args) {
  final info = {'name': 'Seth', 'age': 20};

  print(info['name']);
  print(info.keys); // Iterable<String>
  print(info.values); // Iterable<Object>

  info.putIfAbsent('tshirt size', () => 'M');
  print(info);

  for (final entry in info.entries) {
    print('${entry.key}: ${entry.value}');
  }

  print(info['sa']); // null

  if(info.containsKey('name')) {
    print('info contains key name');
  }
}
