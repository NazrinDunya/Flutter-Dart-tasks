/*List<Map<String, dynamic>> tipində 3 elementdən ibarət list yaratmaq, map a və b keylərindən ibarət 
olsun. Sonra for ilə həmin elementlərin 'a' keylərinin dəyərlərini çap eləsin.*/
import 'dart:math';

void main() {
  for (var element in list) {
    var value = element["a"];
    print(value);
  }
  //
  final tesla = Car(name: "Tesla");
  final mercedes = Car(name: 'Mercedes');
  tesla.electric();
  mercedes.withFuel();
  final finallist = MAX();
  //
  finallist.getMax([14, 99, 5, 101, 65, 43, 43, 2, 2, 2, 100, 52]);
  //
  final carMercedes = Mac(price: 100000);
  final carBMW = Mac(price: 200000);
  print(carBMW == carMercedes);
  //
  
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
sound() {
  final animal = Animal;
  final dog = Dog();
  dog.makeSound();
  final cat = Cat();
  cat.makeSound();
}

abstract class Animal {
  void makeSound();
}

class Dog extends Animal {
  @override
  void makeSound() {}
}

class Cat extends Animal {
  @override
  void makeSound() {}
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

/*Iki ədəddən ibarət listdən böyük ədədi qaytaran extension yazmaq.(dart:math kitabxanasının max
funksiyasını istifadə edərək.)*/


