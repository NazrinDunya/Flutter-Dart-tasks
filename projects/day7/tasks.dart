/*2 dene Car classi yaratmaq int price propertisi olsun. Sonra main funksiyasinda 2 dene Car obyektini
yaradib bir-birine vurmaq.Ve alinan son yeni objectin price-ni cap etmek.(yeni objectin price diger
objectin price digerlerinin hasili olsun) */
// void main() {
//   final mercedes = Mercedes(price: 10000);
//   final hundai = Hundai(price: 20000);
//   final finalPrice = mercedes * hundai;
//   print(finalPrice.price);
// }

// class Mercedes {
//   int? price;
//   Mercedes({this.price});
//   Mercedes operator *(Hundai other) {
//     return Mercedes(price: this.price! * other.price!);
//   }
// }

// class Hundai {
//   int? price;
//   Hundai({this.price});
//   Hundai operator *(Mercedes other) {
//     return Hundai(price: this.price! * other.price!);
//   }
// }

/*IDatabase adinda abstract class yaradib icine getUsers(), addUser(int id),deleteUser(int id) 
abstract metodlarinin yazmaq. Sonra Database clasi ile onun kopyasini alib metodlari override etmek
(Database clasinda ancaq id propertisi olan Userlerden ibaret list yaradin ve metodlarin adina uygun
olaraq list uzerinde emeller gorsun)*/
// void main() {
//   final users = Database();
//   print(users.getUsers());

//   users.addUser(11);
//   print(users.getUsers());

//   users.deleteUser(3);
//   print(users.getUsers());
// }

// abstract class IDatabase {
//   getUsers();
//   addUser(int id);
//   deleteUser(int id);
// }

// class Database implements IDatabase {
//   List<int> _users = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
//   @override
//   getUsers() {
//     return _users;
//   }

//   @override
//   addUser(int id) {
//     _users.add(id);
//   }

//   @override
//   deleteUser(int id) {
//     _users.remove(id);
//   }
// }

/*Abstrack Programmer classi yaratmaq final int workExperience fieldi olsun. Sonra Developer classini
ona extends etmek. (super ifadesini arasdirmaq, bir de Abstract classdan birbasa instance ala bilib
bilmediyimizi arasdirmaq) */
abstract class Programmer {
  final int workExperience;
  Programmer({required this.workExperience});
}

class Developer extends Programmer {
  // Developer({required int workExperience}) : super(workExperience: 10);
  Developer({required super.workExperience});
}

/*ride() ve write() funksiyalarini ayri mixinlerde yaradib Student classinda override etmek */
// mixin Ride {
//   ride();
// }
// mixin Write {
//   write();
// }

// class Student with Ride, Write {
//   @override
//   ride() {}
//   @override
//   write() {}
// }

/* User classi yaradib name ve lastname fieldleri yaratmaq ve bu classa extension yazmaq (isValid)
(main funksiyainda object yaradarken hansisa field null olarsa hecne etmesin hansisa field null deyilse
fullname i cap etsin*/
// void main() {
//   final fullname = User(name: 'Leyla', surname: 'Aliyeva');
//   fullname.printFullName();
// }

// class User {
//   late final String name;
//   late final String surname;
//   User({required this.name, required this.surname});
// }

// extension UserFullName on User {
//   bool isValid() {
//     return name != null && surname != null;
//   }

//   printFullName() {
//     if (isValid()) {
//       print('Full Name: $name $surname');
//     }
//   }
// }
/*Rectangle adinda class yaratmaq height ve width fieldleri olsun. 2 named constructor biri withWidth
digeri withHeight ile bitsin adina uygun olaraq biri width-i colden alsin height-i de oz elimizle verek
digeri ucun de eksi */
void main() {
  final rectWidth = Rectangle.withWidth(width: 6);
  final rectHeight = Rectangle.withHeight(height: 5);
  print(rectWidth.width);
  print(rectHeight.height);
}

class Rectangle {
  int? width;
  int? height;
  Rectangle.withWidth({required this.width}) : this.height = 5;
  Rectangle.withHeight({required this.height}) : this.width = 10;
}
