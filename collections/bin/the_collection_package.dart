import 'package:collection/collection.dart';

void main(List<String> args) {
  testBoolList();
  print('-------------------');
  testCanonicalizedMap();
  print('-------------------');
  testCombinedIterableView();
  print('-------------------');
  testCombinedMapView();
  print('-------------------');
  testMapMerging();
}

void testBoolList() {
  final boolList = BoolList(10, growable: true);
  boolList[0] = true;
  if (boolList[0]) {
    print('true');
  }
  boolList.length *= 2;
  print(boolList);
}

void testCanonicalizedMap() {
  final info = {
    'name': 'Seth',
    'age': 45,
    'height': 1.82,
    'sex': 'male'
  };
  final canonMap = CanonicalizedMap.from(
    info,
    (key) => key.length,
  );
  print(canonMap); // 'age' is overwritten by 'sex'
}

void testCombinedIterableView() {
  final one = [1, 2, 3];
  final two = [4, 5, 6];
  //dynamically changes as one and two change
  final combined = CombinedIterableView([one, two]);
  print(combined); // [1, 2, 3, 4, 5, 6]
  one.add(0);
  print(combined); // [1, 2, 3, 0, 4, 5, 6]
  print(combined.contains(0)); // true
  // also CombinedListView, CombinedMapView, CombinedSetView
}

void testCombinedMapView() {
  var m1 = {'a': 1, 'b': 2};
  var m2 = {'b': 3, 'c': 4};
  var m3 = {'c': 5, 'd': 6};

  var combined = CombinedMapView([m1, m2, m3]);
  // old entries are NOT overwritten by new ones
  print(combined); // {a: 1, b: 2, c: 4, d: 6}
}

void testMapMerging() {
  const info1 = {'name': 'Seth', 'age': 45};
  const info2 = {'name': 'Kathy', 'height': 1.82, 'age': 43};
  final merged1 = mergeMaps(info1, info2);
  print(merged1);
  // old entries are overwritten
  final merged2 = mergeMaps(info1, info2, value: (p0, p1) => p0);
  print(merged2);
  // old entries are NOT overwritten
}
