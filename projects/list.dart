void main() {
  List<dynamic> ededler = [11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 100];
  print(ededler[0]);
  print(ededler.elementAt(0));
  print(ededler.first);

  // ededler.clear();
  // print(ededler);

  print(ededler.firstWhere((element) => element.isEven));

  // ededler.removeWhere((element) => element.isOdd);
  // print(ededler);

  // ededler.forEach(print);

  // ededler.add(10);
  // print(ededler);

  // ededler.insert(0, 55);
  // print(ededler);

  // ededler.insertAll(0, [1, 2, 3]);
  // print(ededler);

  List<String> saitler = ['a', 'b', 'c', 'd'];
  ededler.addAll([...saitler]);
  print(ededler);

  List<int?> list = [];
  list.add(null);
  print(list);
}
