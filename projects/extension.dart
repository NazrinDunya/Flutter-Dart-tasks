void main() {
  // böyük hərflə başlayanları çap et
  print(list.where((element) => element[0] == element[0].toUpperCase()));
  //cüt elementləri qaytaracaq extension
  List<int> listnumbers = [1, 2, 3, 4, 5, 6];
  final evenlist = listnumbers.evenElements();
  print(evenlist);
  //bütün tiplər üçün keçərli extension
  final result = [1, 2, 3, 4, 5, 6];
  print(result.printType());
  // double tipində olub olmadığını yoxlamaq
  final a = 4.5;
  print(a.isnumberdouble());
  // Universities.bdu.name
  example(Universities.aztu);
}

List<String> list = ["Flutter", "dart", "Ali", "nurane"];

extension Evennumbers on List<int> {
  List<int> evenElements() {
    return this.where((element) => element.isEven).toList();
  }
}

extension ReturnTypes on dynamic {
  dynamic printType() {
    return this.runtimeType;
  }
}

extension Isdouble on dynamic {
  bool isnumberdouble() {
    return this is double;
  }
}

enum Universities { bdu, unec, aztu, bmu, bsu }

example(Universities name) {
  switch (name) {
    case Universities.bdu:
      print("Universities.bdu.name");
      break;
    case Universities.unec:
      print("Universities.unec.name");
      break;
    case Universities.aztu:
      print("Universities.aztu.name");
      break;
    case Universities.bmu:
      print("Universities.bmu.name");
      break;
    case Universities.bsu:
      print("Universities.bsu.name");
      break;
    default:
  }
}
