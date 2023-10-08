void main() {
  List<int> list = [1, 3, 5, 7, 9, 2, 4, 6, 8];
  for (var i = 0; i < list.length; i++) {
    print(list[i]);
  }
  // for (var element in list) {
  //   print(element);
  // }
  // for (var i = 0; i < list.length; i++) {
  //   if (i % 2 == 0) {
  //     print(i);
  //   }
  // }
  // for (var element in list) {
  //   if (element.isEven) {
  //     print(element);
  //   }
  // }

  int index = 0;
  while (index <= 10) {
    print("if $index == 10 stop");
    index++;
  }
  // do {
  //   print("if $index == 10 stop");
  //   index++;
  // } while (index <= 10);
}
