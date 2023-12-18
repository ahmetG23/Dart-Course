void main(List<String> args) {
  print(TeslaCars.values);
  // print(TeslaCars.values..sort()); error unmedifiable list
  print([...TeslaCars.values]..sort());
}

enum TeslaCars implements Comparable<TeslaCars> {
  modelS(weightInKg: 2100),
  model3(weightInKg: 1800),
  modelX(weightInKg: 2200),
  modelY(weightInKg: 2000);

  final double weightInKg;

  const TeslaCars({required this.weightInKg});

  @override
  int compareTo(TeslaCars other) =>
      weightInKg.compareTo(other.weightInKg);
}
