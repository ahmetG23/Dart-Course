import 'package:collection/collection.dart';

void main(List<String> args) {
  final info = {'name': 'Seth', 'age': 20};

  final readOnlyMap = UnmodifiableMapView(info);
  try {
    readOnlyMap.addAll({'phone': '123123123'}); 
  } catch(e) {
    print(e);
  }
}
