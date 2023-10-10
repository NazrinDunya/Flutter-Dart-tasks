void main() {
  final student = Student(fullName: "Nazrin", university: "DIA");
  print(student.fullName);
  print(student.university);
}

class Student {
  final String fullName;
  final String university;

  Student({required this.fullName, required this.university});
}
