Future<void> main() async {
  print('Loading...');
  print(await printFlutter());
  //unmofifiable list
  //1ci üsul
  // final List<int> list = List.unmodifiable([1, 2, 3, 4, 5]);
  // list[0] =100;
  // print(list);
  //2ci üsul
  // const list = [1, 2, 3, 4, 5];
  // list.add(12);
  // print(list);
  //5ci tapsiriq
  final home = Home();
  home.setName = 25;
  home.namE;
  //7ci tapsiriq
  Map<String, dynamic> mapWoman = {
    'name': 'Leyla',
    'surname': 'Aliyeva',
    'profession': 'Doctor',
  };

  final woman = Woman.fromJson(mapWoman);
  print(woman.name);
  Map<String, dynamic> womantoJson = woman.toJson();
  print(womantoJson);
  //
  final stringtoset = 'Hello World!';
  Set <String> finalset  = stringtoset.toSet();
  print(finalset);
}

Future<String> printFlutter() => Future.delayed(
      const Duration(seconds: 3),
      () => 'Flutter',
    );

class Home {
  dynamic namE;
  Home() {
    if (this.namE == null) {
      print('null ola bilmez!');
    }
  }

  void set setName(dynamic name) {
    if (name is int) {
      print("name int ola bilmez");
    } else {
      namE = name;
    }
  }
}

class Woman {
  final String name;
  final String surname;
  final String profession;

  Woman({required this.name, required this.surname, required this.profession});
  factory Woman.fromJson(Map<String, dynamic> json) {
    return Woman(
        name: json['name'] as String,
        surname: json['surname'] as String,
        profession: json['profession'] as String);
  }
  Map<String, dynamic> toJson() {
    return {'name': name, 'surname': surname, 'profession': profession};
  }
}

extension StringToSet on String {
  Set<String> toSet() {
    return this.split('').toSet();
  }
}
