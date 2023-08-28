import 'person.dart';
import 'instructor.dart';
import 'student.dart';
import 'group.dart';

void main() {
  List<String> lesseon = [];
  List<Student> student = [];
//1
  Student student1 =
      Student(name: 'haggag', age: 32, attend: 5, FacultyName: 'helwan');

  Student student2 =
      Student(name: 'ibrahim', age: 42, attend: 6, FacultyName: 'cairo');

  Instructor guba = Instructor(name: 'youssef', age: 28, lessons: lesseon);

  Group group = Group(
      name: 'flutter', date: '2023/7/15', instructor: guba, students: student);
  //2
  print('----------------------------------------------------------------');
  student1.info();
  print('----------------------------------------------------------------');
  student2.info();
  print('----------------------------------------------------------------');
  guba.info();
  print('----------------------------------------------------------------');
  group.toString();
  print('----------------------------------------------------------------');
//3
  student1.attended();
  student1.attended();
  student2.attended();
  student2.attended();

  student1.info();
  student2.info();
//4
  guba.addLesson('native');
  guba.showLessons();

//5
  group.addNewStudent(student1);
  group.addNewStudent(student2);
  group.deleteStudent(student1);

  Student student3 =
      Student(name: 'mohamed', age: 35, attend: 5, FacultyName: 'helwan');

  Student student4 =
      Student(name: 'ahmed', age: 37, attend: 6, FacultyName: 'cairo');

  group.showStudentNames();
}
