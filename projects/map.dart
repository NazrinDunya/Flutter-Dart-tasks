void main() {
  Map<String, String> map = {"name": "Flutter", "age": "5", "language": "Dart"};
  print(map["age"]);
  // map["fullname"] = "FlutterDart";
  // print(map);
  // Map<String, String> newmap = {"key": "KEY", "value": "VALUE"};
  // map.addAll({"key": "KEY", "value": "VALUE"});
  // print(map);
  // map.addAll({...newmap});
  // print(map);
  // print(map.containsKey("dart"));
  Map<int, String> _map = {1: 'a', 2: 'b', 3: 'c'};
  _map.updateAll((key, value) => value.toUpperCase());
  print(_map);
  _map.remove(3);
  print(_map);
}
