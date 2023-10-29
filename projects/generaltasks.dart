/*List<Map<String, dynamic>> tipində 3 elementdən ibarət list yaratmaq, map a və b keylərindən ibarət 
olsun. Sonra for ilə həmin elementlərin 'a' keylərinin dəyərlərini çap eləsin.*/
import 'dart:math' as math;

void main() {
  // for (var element in list) {
  //   var value = element["a"];
  //   print(value);
  // }

  final tesla = Car(name: "Tesla");
  final mercedes = Car(name: 'Mercedes');
  tesla.electric();
  mercedes.withFuel();
  final finallist = MAX();
  //
  //1ci usul
  finallist.getMax([14, 99, 5, 101, 65, 43, 43, 2, 2, 2, 100, 52]);
  //2ci usul
  // List list = [4, 7,12,34,56,78,98];
  // var max = list[0];
  // for (var i = 1; i < list.length; i++) {
  //   if (list[i] > max) max = list[i];
  // }
  // print(max);
  //
  final dog = Dog(name: "Haski");
  final cat = Cat(name: "Lina");
  sound(cat);
  sound(dog);
  //
  final carMercedes = Mac(price: 100000);
  final carBMW = Mac(price: 100000);
  print(carBMW == carMercedes);
  //
  // List maxint = [10, 20];
  // print(maxint.max());
  //
  final resultt = defaultfunk();
  print(resultt);
  //
  example(Model.honor);
  //
  final map = Me(age: 22, height: 159);
  final memap = map.copyWith(age: 45);
  print(memap.toJson());
}

final List<Map<String, dynamic>> list = [
  {
    "a": "Ali",
    "b": "Ruslan",
  },
  {
    "a": "Nargiz",
    "b": "Narmin",
  }
];

/*Car classı yaratmaq name parametri olsun. Sonra WithFuel və Electric mixinləri yaratmaq və bu class
ilə işlətmək.Mixinlərin içində adın uyğun funksiyalar yazmaq və $name works with{mixin adına uyğun}
çap eləsin.*/
class Car with WithFuel, Electric {
  final String name;
  Car({required this.name});
  @override
  withFuel() {
    print('$name works with fuel');
  }

  @override
  electric() {
    print('$name works with electric');
  }
}

mixin WithFuel {
  withFuel();
}
mixin Electric {
  electric();
}

/*Animal abstract class və Dog və Cat classlarını yaratmaq.Abstract class içində makeSound() abstract 
funksiya yaratmaq və digər classlarda classlarda uyğun override etmək. Sonra main xaricindən sound()
deyə funksiya yazmaq parametr kimi abstrack class alsın.Sonra digər classları yaradaraq bu funksiyadan 
istifadə edərək makeSound() funksiyasını çağırmaq.*/
void sound(Animal animal) {
  print(animal.makeSound());
}

abstract class Animal {
  final String name;
  Animal({required this.name});
  String makeSound();
}

class Dog extends Animal {
  Dog({required super.name});
  @override
  String makeSound() {
    return "${this.name} makes sound";
  }
}

class Cat extends Animal {
  Cat({required super.name});
  @override
  String makeSound() {
    return "${this.name} makes sound";
  }
}

/*MAX adında class yaratmaq. İçində getMax() funksiyasını yaratmaq hansı ki 
List<int> list = [14,99,5,101,65,43,43,2,2,2,100,52] bu listin max ədədini tapsın. Sonra main obyekti
yaradıb funksiyanı çağırmaq.*/
// List<int> listint = [14, 99, 5, 101, 65, 43, 43, 2, 2, 2, 100, 52];

class MAX {
  getMax(List<int> list) {
    list.sort();
    print(list[list.length - 1]);
  }
}

/*Child adında clas yaratmaq(field name və surname) sonra Child.name Child.surname named constructorlar
yaratmaq.*/
class Child {
  final String name;
  final String surname;

  Child.name({required String childname, required this.surname})
      : this.name = childname;
  Child.surname({required this.name, required String childsurname})
      : this.surname = childsurname;
}

/*Mac adında class yaratmaq price fieldi olsun. Sonra iki car objectini müqayisə etmək 
(==olub olmadığını)*/
class Mac {
  final int price;

  Mac({required this.price});
}
// 2ci usul
// class Mac {
//   final int price;
//   Mac({required this.price});

//   bool operator ==(Object other) {
//     if(identical(this, other)) return true;
//     return other is Mac && this.price == other.price;
//   }
// }

/*Iki ədəddən ibarət listdən böyük ədədi qaytaran extension yazmaq.(dart:math kitabxanasının max
funksiyasını istifadə edərək.)*/
extension on List {
  int max() {
    return math.max(this.first, this.last);
  }
}

/*int? first və second parametrləri alan funksiya yaratmaq. Parametr verilməzsə default olaraq 10 
dəyərinə malik olsun.*/
defaultfunk({int? first, int? second}) {
  return 10;
}

//enum yazmaq Model adlı. Main içində switch case ilə print(ok) yazdırmaq.(enum içində istədiyiniz
//fieldləri yazarsınız.)
enum Model { iphone, samsung, nokia, honor, xiomi }

example(Model model) {
  switch (model) {
    case Model.iphone:
      print("Iphone is ok");
      break;
    case Model.samsung:
      print("Samsung is ok");
      break;
    case Model.nokia:
      print("Nokia is ok");
      break;
    case Model.honor:
      print("Honor is ok");
      break;
    case Model.xiomi:
      print("Xiomi is ok");
      break;
    default:
  }
}
//Me adında class yaratmaq.Age, height fieldləri olsun. FromJson(factory), toString, copyWith
//metodlarını tətbiq etmək.

class Me {
  final int age;
  final int height;

  Me({required this.age, required this.height});

  factory Me.fromJson(Map<String, dynamic> map) {
    return Me(age: map['age'], height: map['height']);
  }
  Map<String, dynamic> toJson() {
    return {'age': age, 'height': height};
  }

  Me copyWith({int? age, int? height}) {
    return Me(age: age ?? this.age, height: height ?? this.height);
  }
}
