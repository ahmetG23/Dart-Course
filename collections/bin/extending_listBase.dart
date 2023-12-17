import 'dart:collection';

void main(List<String> args) {
  // final List<String> names = [];
  // print(names.first); // throws StateError
  // first and last getters should've been optional

  const notFound = 'NOT_FOUND';
  const defaultStr = '';

  final myList = SafeList<String>(
    defaultValue: defaultStr,
    absentValue: notFound,
    values: ['Seth', 'Kathy', 'Lars'],
  );

  print(myList[3]); // NOT_FOUND

  myList.length = 12;
  print(myList[11]); // ''
}

class SafeList<T> extends ListBase<T> {
  final T defaultValue;
  final T absentValue;
  final List<T> _list;

  SafeList(
      {required this.defaultValue,
      required this.absentValue,
      required List<T>? values})
      : _list = values ?? [];

  @override
  T operator [](int index) =>
      _list.length > index ? _list[index] : absentValue;

  @override
  void operator []=(int index, T value) => _list[index] = value;

  @override
  int get length => _list.length;

  @override
  set length(int newLength) {
    if (newLength <= _list.length) {
      _list.length = newLength;
    } else {
      _list.addAll(
          List.filled(newLength - _list.length, defaultValue));
    }
  }

  @override
  T get first => _list.isNotEmpty ? _list.first : absentValue;
  @override
  T get last => _list.isNotEmpty ? _list.last : absentValue;
}
