// to add a dependency to the pubspec.yaml file
// dart pub add package_name
// after then:
import 'package:collection/collection.dart';
// in order to remove a dependency from the pubspec.yaml file
// dart pub remove package_name

void main(List<String> args) {
  final names = {'Seth', 'Kathy', 'Lars'}; // set
  names.add('Lars'); // no duplicates
  print(names); // {Seth, Kathy, Lars}

  final list = ['Seth', 'Kathy', 'Kathy'];
  final uniqueNames = {...list}; // spread operator
  // or
  // final uniqueNames = list.toSet();
  // or
  // final uniqueNames = Set.from(list);
  print(uniqueNames); // {Seth, Kathy}

  // HASH CODES
  int x = 'foo'.hashCode;
  int y = 'Foo'.hashCode;
  print('x: $x, y: $y');

  final set1 = {1, 2, 3};
  final set2 = {1, 2, 3};

  if(set1 == set2) {
    print("set1 and set2 are equal");
  } else {
    print("set1 and set2 are not equal"); // this is the result
  }
  
  final set3 = {1, 3, 2};

  if(SetEquality().equals(set1, set3)) {
    print("set1 and set2 are equal"); // this is the result
  } else {
    print("set1 and set2 are not equal"); 
  }
}
