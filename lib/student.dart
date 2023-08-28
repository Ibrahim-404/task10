import 'person.dart';

class Student extends Person {
  int attend;
  String FacultyName;

  Student({
    super.email,
    super.address,
    required super.name,
    required super.age,
    required this.attend,
    required this.FacultyName,
  });
  void attended() => this.attend += 1;
  void notAttended() => this.attend -= 1;
  @override
  void info() {
    // TODO: implement info
    print("$name is a student ,he is $age years old ,he from $address ,he studies at faculty of ${this.FacultyName} and He attended $attend sessions");
  }
}
