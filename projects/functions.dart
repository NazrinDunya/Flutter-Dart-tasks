void main() {
  printSurname(surname: "Dunyamaliyeva");
  List<int> list = [11, 12, 13, 14, 15, 16, 17, 18, 19, 20];
  printEvenelements(list);
}

void printSurname({required String surname}) {
  print("surname: $surname");
}


printEvenelements(List <int> list) {
  for (var i = 0; i < list.length; i++) {
    if (i.isEven) {
      print(i);
    }
  }
}
