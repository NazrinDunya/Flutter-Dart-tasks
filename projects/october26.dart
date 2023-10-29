void main(List<String> args) {
  //5 elementden ibarət map yaratmaq və onun valuelarını list kimi çap etmək.
  Map<String, dynamic> map = {'Almanya': 'BMW', 'Italiya': 'Alfa Romeo'};
  print(map.values.toList());
  //
  print(Constant.a);
  print(Constant.b);
  //List yaratmaq 10 elementdən ibarət for ilə listi gəzmək cüt elementləri atlamaq.
  List<int> list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  for (var element in list) {
    if (element.isOdd) {
      print(element);
    }
  }
  //
  final phonemodel = PhoneModel(name: 'Iphone', price: 1100);
  final phonemap = phonemodel.copyWith(price: 2000);
  print(phonemap.toJson());
  //Geriyə string qaytaran anonim funksiya yazmaq.
  final getCityname = (String cityname) {
    return cityname;
  };
  print(getCityname('Baku'));
  //
  final stringname = 'Russia';
  print(stringname.splitString());
}

//Constant adlı class yaradıb 2 dənə static dəyişən yaratmaq və maində çağırmaq
class Constant {
  static double a = 3.14;
  static int b = 288;
}

//abstract Model class yaratmaq String getName(String name), funksiyası olan Phone və Car classlarını
//onda extends ederək yaratmaq.
abstract class Model {
  String getName(String name);
}

class Phone extends Model {
  @override
  String getName(String name) => 'phone';
}

class Car extends Model {
  @override
  String getName(String name) => 'car';
}

//Phone classı yaratmaq name və price olsun. fromJson toJson və copyWith metodlarını yazmaq.
class PhoneModel {
  final String name;
  final int price;
  PhoneModel({required this.name, required this.price});

  factory PhoneModel.fromJson(Map<String, dynamic> map) {
    return PhoneModel(name: map['name'], price: map['price']);
  }
  Map<String, dynamic> toJson() {
    return {'name': name, 'price': price};
  }

  PhoneModel copyWith({String? name, int? price}) {
    return PhoneModel(name: name ?? this.name, price: price ?? this.price);
  }
}

//Stringin ilk 3 hərfini ayırıb götürən extension yazmaq.(hazır metod var String üçün)
extension splitWord on dynamic {
  dynamic splitString() {
    return this.substring(0,3);
  }
}
