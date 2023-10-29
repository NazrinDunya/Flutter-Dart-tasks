void main(List<String> args) {
  Map<String, dynamic> womanmap = {
    'name': 'Nargiz',
    'surname': 'Aliyeva',
    'profession': 'teacher'
  };
  final woman = Woman.fromJson(womanmap);
  print(woman.surname);
  Map<String, dynamic> womantojson = woman.toJson();
  print(womantojson);
  //
  final man = Man(age: 30, height: 180);
  final manmap = man.copyWith(age: 35);
  print(manmap.toJson());
  //
  () async {
  await Future.delayed(Duration(seconds: 5));
  print('Completed');
  }();
  //
  print(getAge().call());
  //
  print(33.getInt().call());
}

//class yaratmaq Woman adında. Name surname profession dəyişənlərə malik olsun. BU class üçün fromJson()
//factoryni yazmaq. Həmçinin toJson metodunu yazmaq. sonra main() içərisində Map yaradıb (by dəyərlərə
// malik) həmin map-i Woman modelin' çevirmək.
class Woman {
  final String name;
  final String surname;
  final String profession;
  const Woman(
      {required this.name, required this.surname, required this.profession});

  factory Woman.fromJson(Map<String, dynamic> map) {
    return Woman(
        name: map['name'],
        surname: map['surname'],
        profession: map['profession']);
  }
  Map<String, dynamic> toJson() {
    return {'name': name, 'surname': surname, 'profession': profession};
  }
}

//Man adında class yaratmaq age height fieldlərləri olsun. FromJson(factory) toString copyWith
//metodlarını tətbiq etmək.
class Man {
  final int age;
  final int height;
  const Man({required this.age, required this.height});

  factory Man.fromJson(Map<String, dynamic> map) {
    return Man(age: map['age'], height: map['height']);
  }
  Map<String, dynamic> toJson() {
    return {'age': age, 'height': height};
  }

  Man copyWith({int? age, int? height}) {
    return Man(age: age ?? this.age, height: height ?? this.height);
  }
}

//5 saniyə sonra completed sözünü çap edəcək anonim funksiya yaz.

//{geriyə integer qaytran anonim funksiya alan} getAge funksiyasını yazmaq.(getAge də geriyə int qayta
//rır) main-də onu istifadə etmək.
int Function() getAge() {
  return () {
    return 22;
  };
}

//int-ə extension yazmaq hansı ki geriyə bu int-in özünü qaytaran anonim funksiya qaytarsın.
extension on int {
  int Function() getInt() {
    return () {
      return this;
    };
  }
}
//2ci yazılış üsulu
// extension on int {
//   int Function() getInt() {
//     return () => this;
//   }
// }
//3cü yazılış üsulu
// extension on int {
//   int Function() getInt()=> () => this;
// }
