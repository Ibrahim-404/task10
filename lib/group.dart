import 'instructor.dart';
import 'student.dart';

class Group {
  String name, date;
  Instructor instructor;
  List<Student> students;

  Group({
    required this.name,
    required this.date,
    required this.instructor,
    required this.students,
  });

  void addNewStudent(Student student) {
    if (students.contains(student)) {
      print('The student already exists!');
    } else {
      students.add(student);
    }
  }

  void deleteStudent(Student student) {
    if (students.isEmpty) {
      print('The student list is empty!');
    } else if (!students.contains(student)) {
      print('The student does not exist in this group!');
    } else {
      students.remove(student);
    }
  }

  void showStudentNames() {
    int i = 1;
    students.forEach((student) {
      print('Student $i: ${student.name}');
      i++;
    });
  }

  @override
  String toString() {
    return 'Group{name: $name, date: $date, instructor name: ${instructor.name}, number of students: ${students.length}';
  }
}
