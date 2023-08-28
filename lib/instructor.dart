import 'person.dart';

class Instructor extends Person {
  List<String> lessons;
  Instructor(
      {super.email,
      super.address,
      required super.name,
      required super.age,
      required this.lessons});

  addLesson(String lesson) {
    this.lessons.add(lesson);
  }

  void showLessons() {
    this.lessons.forEach((element) {
      int index = 1;
      print('lesson $index:$element');
      index++;
    });
  }

  @override
  void info() {
    // TODO: implement info
    print(
        '${this.name} is a instructor,he is ${this.age} years old ,he from ${this.address} and his email is ${this.email}');
  }
}
