void main() {
  printSurname(surname: "Dunyamaliyeva");
  final evenlist = printEvenelements([11, 12, 13, 14, 15, 16, 17, 18, 19, 20]);
  print(evenlist);
}

void printSurname({required String surname}) {
  print("surname: $surname");
}

printEvenelements(List<int> list) {
  for (var i = 0; i < list.length; i++) {
    if (list[i].isOdd) {
      list.remove(list[i]);
    }
  }
  return list;
}
// printEvenelements(List<int> list) {
//   for (var i = 0; i < list.length; i++) {
//     if (i.isEven) {
//       print(i);
//     }
//   }
// }

