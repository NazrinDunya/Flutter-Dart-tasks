void main() {
  final student = Student(fullName: "Nazrin", university: "DIA");
  print(student.fullName);
  print(student.university);
  //cascade operatoru ilə score a dəyər vermək
  // final game = Game()..score = 10;
  // print(game.score);
  //printScore funksiyanını yarat və cascade operatoru ilə çağırmaq
  Game(score: 11)..printScore();
  //
  // final laptop = Laptop.memory(name: "Hp", model: "Pavilion");
  // print(laptop.name);
  // print(laptop.model);
  // print(laptop.memory);
  //
  final phone = Phone(model: 'Iphone');
  if (phone.isValid()) {
    print(phone.model);
  } else {
    print('model is empty');
  }
  
  // 5ci tapsiriq menfi ola bilmez
  final teacher = Teacher(name: 'Hasan', age: 25);
  teacher.setAge = -25;
  print(teacher.age);
  //6ci tapsiriq
  Iterable<int> iterableList = [2, 4, 6, 8, 10];
  iterableList.toList();
  print(iterableList.runtimeType);
}

class Student {
  final String fullName;
  final String university;

  Student({required this.fullName, required this.university});
}

class Game {
  final int score;

  Game({required this.score});
  printScore() {
    print(15);
  }
}

// class Laptop {
//   final String name;
//   final String model;
//   final int memory;
//   Laptop.name({required this.model, required this.memory}) : this.name = "Acer";
//   Laptop.model({required this.name, required this.memory}) : this.model = "Tuf";
//   Laptop.memory({required this.name, required this.model}) : this.memory = 16;
// }

class Phone {
  String? model;
  Phone({this.model});
}

extension Phonemodel on Phone {
  bool isValid() => this.model != null;
}

class Teacher {
  final String name;
  int _age;
  Teacher({required this.name, required int age}) : this._age = age;

  void set setAge(int age) {
    if (age < 0) {
      print("menfi ola bilmez");
      _age = 0;
    } else {
      _age = age;
    }
  }

  int get age => _age;
}
