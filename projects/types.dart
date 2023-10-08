void main() {
  // int a = 5;
  // double b = 10.6;
  bool c = true;
  // final res = a.toString();
  // final res = b.toString();
  final res = c.toString();
  print(res.runtimeType);

  // ==============================

  // double a = 12.2;
  // print(a.toInt());

  // ==============================

  // int a = 32;
  // print(a.toDouble());

  // ==============================

  // dynamic a = 45;
  // a = "abc";
  // a = 56.34;
  // print(a);
  // dynamicdə istədiyimiz typeda dəyər verə və sonradan dəyişə bilirik

  // var a = 45;
  // a = "abc";
  // print(a);
  // var isə ancaq bir typeda dəyər alır

  // ================================
  int first = 10;
  int second = 20;
  int third = 30;
  int biggest;
  if (first > second && first > third) {
    biggest = first;
  } else if (second > first && second > third) {
    biggest = second;
  } else {
    biggest = third;
  }
  print(biggest);

  //==================================

  months("December");
}
months(String days) {
    switch (days) {
      case "September":
        print("30 gün");
        break;
      case "October":
        print("31 gün");
        break;
      case "November":
        print("30 gün");
        break;
      case "December":
        print("31 gün");
        break;
      default:
    }
  }
