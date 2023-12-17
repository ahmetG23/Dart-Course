import 'package:collection/collection.dart';

void main(List<String> args) {
  final names = ['Seth', 'Kathy', 'Lars'];
  names.add('Jack');

  final readOnlyList = UnmodifiableListView(names);
  try {
    readOnlyList.add('Ahmet'); 
  } catch(e) {
    print(e);
  }
}
